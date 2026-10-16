`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 03:56:31 PM
// Design Name: 
// Module Name: IM_Cache_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

typedef struct packed  
{
	logic [22:0]	tag;			//[31:9]
	logic [3:0]		index;			//[8:5]
	logic [2:0]		woffs;			//[4:2]
	logic [1:0]		boffs;  		//[1:0]
} pc_packet;

module IM_Cache_tb();

	// ~~~~ testing ~~~~
    import tb_utils_pkg::*;
    testcase tc;
    logic [31:0] tnum;

	// ~~~~ local variables ~~~~
	pc_packet			pc; 
	logic 				clk;
	logic 				update; 
	logic [31:0] 		addr, din;
	logic [3:0]			bidx;
	logic				hit, miss;
	logic [31:0]		dout;
	
	logic 				reset;
	
	localparam			nop_code 		= 32'h0000_0013;
	
	pc_packet [0:7] 	block;
	logic [7:0][31:0] 	bdata ;

	
	// ~~~~ instantiations ~~~~
	IM_Cache
	#(
		.BITWIDTH			(32),
		.WORD_OFFSET_SIZE	(3)
	) DUT
	(
		.pc_i				(pc), 			//32b
		.clk_i				(clk), 
		.update_i			(update),
		.reset_i			(reset),
		.blki_i				(bidx[2:0]),	//3b
		.word_i				(din), 			//32b
		.addr_o				(addr),			//32b
		.word_o				(dout), 		//32b 
		.hit_o				(hit), 
		.miss_o				(miss)
	);
	
	// ~~~~ heartbeat ~~~~
	always begin #5; clk <= ~clk; end
	
	// ~~~~ testing ~~~~
	
	// ~~ sequences ~~
	sequence out_nop; 
		dout == nop_code;
	endsequence
	
	// ~~ properties ~~
	property p1; 
		@(posedge clk) 
		disable iff(reset)
		miss |-> out_nop; // hits can still produce authored nops though
	endproperty
	
	property p2;
		@(posedge clk) 
		disable iff(reset)
		not(miss && hit); 
	endproperty
	
	property p3;
		@(posedge clk)
		disable iff(reset)
		(miss ^ hit); 
	endproperty

	
	// ~~ concurrent assertions ~~
	a1: assert property(p1) else tc.err("output wasn't nop on miss");
	a2: assert property(p2) else tc.err("both hit and miss occured");
	a3: assert property(p3) else tc.err("neither hit or miss occured");
	
	// ~~ immediate assertions ~~
	initial begin
	
		// ~~ class instances ~~
		tc          = new();
		
		// ~~ defaults ~~
		clk 	= 1'b1;
		pc		= 32'd0; 
		update 	= 1'b0;
		din		= 32'd0;
		bidx	= 4'd0;
		reset	= 1'b1;
		block	= '0;
		bdata	= '0;
		
		// ~~ reset (there is none) ~~
		#100;
		reset	= 1'b0; 
		
		// ~~ TC1 ~~
		tc.new_test("init will always miss");
		tnum = tc.get_testnum();
			assert(miss) else tc.err("init didn't produce a miss");
			#10; 
		tc.test_done();
		
		// ~~ TC2 ~~
		tc.new_test("cannot fill block without holding update signal the entire duration (doesn't produce a valid block)");
		tnum = tc.get_testnum();
		
			// fill test block
			for(logic [3:0] i = 0; i < 8; i++) begin
				block[i].woffs 	= i;
				bdata[i]		= 32'hFFFF_FFFF -i;
				#10;   	
			end
			
			// partial fill
			update = 1'b1; 
			for(logic [3:0] i = 0; i < 8; i=i+1) begin
				pc 		= block[i];
				din 	= bdata[i];
				bidx 	= i; 
				if(i > 3) begin update = 1'b0; end 
				#10; 	
			end
			
			// pc/cache still missing for the partial data that was accepted because block was not entirely filled
			for(logic [3:0] i = 0; i < 8; i++) begin
				pc 		= block[i];
				assert(miss) else tc.err("partial block fill should be a miss");
				#10;
			end
			 
			
		tc.test_done();
	
		// ~~ TC3 ~~
		tc.new_test("only filling slot 7 of block shouldn't mark block valid");
		tnum = tc.get_testnum();
		
			pc 		= block[0];
			din 	= bdata[0];
			bidx 	= 4'b0111;
			
			update 	= 1'b1;
			#10; 
			update 	= 1'b0;
			#10; 
			assert(miss) else tc.err("partial block should be a miss");
			#10; 
			
		tc.test_done();
	
		// ~~ TC4 ~~
		tc.new_test("cannot fill block without incrementing block index");
		tnum = tc.get_testnum();
			bidx 	= 4'b0000;
			update = 1'b1;
			for(logic [3:0] i = 0; i < 8; i++) begin
				bidx 	= 4'b0101;
				//if(i == 4'b0111) begin bidx = i; end   							// TODO : should I enforce a hard increment of +1?
				pc 	= block[i]; 
				din = bdata[i];
				#10;   	
			end
			#10; 
			update = 1'b0;
			#10; 
			assert(miss) else tc.err("partial block should be a miss");
		tc.test_done();
			
		// ~~ TC5 ~~
		tc.new_test("complete block is marked valid");
		tnum = tc.get_testnum();
		
			// fill 
			update = 1'b1;
			for(logic [3:0] i = 0; i < 8; i++) begin
				bidx 	= i;
				pc 		= block[i]; 
				din 	= bdata[i];
				#10;   	
			end
			
			// verify hits (on negedge of clk)
			update = 1'b0;
			#10;
			for(logic [3:0] i = 0; i < 8; i=i+1) begin
				pc 	= block[i];
				#5;
				assert(hit) 				else tc.err("data in cache didnt hit");
				assert(dout == bdata[i]) 	else begin
					tc.err("data in cache is not what we put in");
					$display("%d : %h != %h", i, dout, bdata[i]);
				end
				#5;	
			end
		tc.test_done();
		
			
		// ~~ TC6 ~~
		tc.new_test("filling whole cache NONSTOP");
		tnum = tc.get_testnum();
		
			// normally tag wouldn't be the same for a whole cache (only a block) but we can 
			//	explore this more in the next test
			pc.tag 		= '0;
		
			// fill cache
			update = 1'b1; 
			for(logic [7:0] i = 0; i < 16; i++) begin
				pc.index 	= i;
				for(logic [7:0] j = 0; j < 8; j++) begin
					pc.woffs 	= j;
					bidx		= j;
					din			= 32'hFFFF_FFFF - (j+(8*i));
					#10;
				end 	
			end
			update = 1'b0; 
			#10; 
			
			for(logic [7:0] i = 0; i < 16; i++) begin
				pc.index 		= i;	
				for(logic [7:0] j = 0; j < 8; j++) begin
					pc.woffs 	= j;
					#5; 
					assert(hit) 				else tc.err("data in cache didnt hit");
					assert(dout == 32'hFFFF_FFFF - (j+(8*i))) 	
						else begin
							tc.err("data in cache is not what we put in");
							$display("%d : %h != %h", (j+(8*i)), dout, 32'hFFFF_FFFF - (j+(8*i)));
						end
					#5;
				end 	
			end
			
		tc.test_done();
		
/*			
		// ~~ TC7 ~~
		tc.new_test("replace a block");
		tnum = tc.get_testnum();
		tc.test_done();
		
		// ~~ TC8 ~~
		tc.new_test("rand testing");
		tnum = tc.get_testnum();
		tc.test_done();
*/		
		
		
	end
endmodule
