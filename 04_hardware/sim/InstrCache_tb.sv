`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 04:06:33 PM
// Design Name: 
// Module Name: InstrCache_tb
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


module InstrCache_tb();

	// ~~~~ testing ~~~~
    import tb_utils_pkg::*;
    testcase 		tc;
    logic [31:0] 	tnum;
    
    // ~~~~ local vars ~~~~
	logic				clk,
						reset,
						stall,
						update;
	logic [31:0]		pc, 
						addr,
						din,
						fromcache;	
	localparam			NOP_CODE = 32'h0000_0013;
	localparam			BLOCK_CNT = 8;
						
    
    // ~~~~ instantiations ~~~~
	InstrCache
	#(
		.ADDRWIDTH		(32),
		.DATAWIDTH		(32)
	)
	DUT
	(
		.clk_i			(clk),
		.rst_i			(reset),
		.pc_i			(pc),		//32b
		.din_i			(din),		//32b
		.addr_o			(addr),		//32b
		.stall_o		(stall),
		.update_o		(update),
		.instr_o		(fromcache)	//32b
	);

    	
	// ~~~~ heartbeat ~~~~
	always begin #5; clk <= ~clk; end
    	
	// ~~~~ testing ~~~~
	// ~~ sequences ~~
	// ~~ properties ~~
	property p1; 
		@(negedge clk) disable iff(reset)
			stall |-> (fromcache == NOP_CODE);
	endproperty
	
	property p2; 
		@(posedge clk) //disable iff(reset)
		$rose(stall) |-> (	
					// data ready on negedge but delay to posedge  b/c vivado doesn't allow multiclock props
				(addr === pc) 						##1
				(addr === (pc + {3'b001,2'b00})) 	##1 
				(addr === (pc + {3'b010,2'b00})) 	##1 
				(addr === (pc + {3'b011,2'b00}))	##1 
				(addr === (pc + {3'b100,2'b00}))	##1 	
				(addr === (pc + {3'b101,2'b00}))	##1 
				(addr === (pc + {3'b110,2'b00}))	##1 
				(addr === (pc + {3'b111,2'b00}))
			); 
	endproperty
	
	property p3; 
		@(posedge clk) disable iff(reset)
			$rose(stall) |-> update[*8];
	endproperty
	
		
	// ~~ concurrent assertions ~~
	a1: assert property(p1) else tc.err("output wasn't nop on miss");
	a2: assert property(p2) else tc.err("incorrect word_offset increments");
	a3: assert property(p3) else tc.err("Mem's RDEN wasn't up for entire block write");

	
	initial begin
	
		// ~~ class instances ~~
		tc          = new();
		
		// ~~ defaults ~~
		clk 			= 1'b1;
		reset			= 1'b1;
		pc				= 32'd0; 
		din				= 32'd0;

		// ~~ reset ~~
		#100;
		reset			= 1'b0;

		// ~~ immediate assertions ~~
		// ~~ TC1 ~~
		tc.new_test("miss and an entire block hit");
		tnum = tc.get_testnum();
			din				= 32'hD1E1_A1D1;
			#90;
			for(int i = 0; i < 8; i=i+1) begin
				pc = i * 4;
				#8;
				assert (fromcache == 32'hD1E1_A1D1) else tc.err("bad value in cache");
				#2;
			end 
			#10; 
		tc.test_done();
    			
	end
endmodule
