`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:29:39 PM
// Design Name: 
// Module Name: IM_Cache_FSM_tb
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


module IM_Cache_FSM_tb();

	// ~~~~ testing ~~~~
    import tb_utils_pkg::*;
    testcase 		tc;
    logic [31:0] 	tnum;
    logic 			monkeywrench;
    
    // ~~~~ local vars ~~~~
    logic					clk, 
    						hit,
    						miss,
    						reset,
    						update,
    						stall;
    logic [2:0]				word_idx;
    
    
    // ~~~~ instantiations ~~~~
	IM_Cache_FSM DUT
	(
		.hit_i				(hit),
		.miss_i				(miss),
		.clk_i				(clk),
		.rst_i				(reset),
		.update_o			(update),
		.pc_stall_o			(stall),
		.blocki_o			(word_idx)	//3b
	);
	
	// ~~~~ heartbeat ~~~~
	always begin #5; clk <= ~clk; end
	
	// ~~~~ testing ~~~~
	// ~~ sequences ~~
	// ~~ properties ~~
	property p1;
		@(posedge clk)
		disable iff(reset)
		(miss ^ hit); 
	endproperty
	
	property p2;
		@(posedge clk)
		disable iff(reset || monkeywrench)
		($rose(miss) || $fell(reset)) |-> stall[*8];   // catch a miss, w0-7, retry
	endproperty
	
	property p3;
		@(posedge clk)
		disable iff(reset || monkeywrench)				 	
		($rose(miss) || $fell(reset)) |-> (update[*8] ##1 !update)

	endproperty
	
	property p4;
		@(posedge clk)
		disable iff(reset || monkeywrench)
		($rose(miss) || $fell(reset)) |-> (		word_idx == 3'd0   	// w0 : pulling data from mem
											##1 word_idx == 3'd1   	// w1 : pulling data from mem
											##1 word_idx == 3'd2   	// w2 : pulling data from mem
											##1 word_idx == 3'd3   	// w3 : pulling data from mem
											##1 word_idx == 3'd4   	// w4 : pulling data from mem
											##1 word_idx == 3'd5   	// w5 : pulling data from mem
											##1 word_idx == 3'd6   	// w6 : pulling data from mem
											##1 word_idx == 3'd7   	// w7 : pulling data from mem
											##1 word_idx == 3'd0	// index reset
										);
	endproperty
	
	property p5; 
		@(posedge clk) disable iff(reset || monkeywrench)
		hit |-> (!stall && !update && !miss && word_idx == 3'd0)
	endproperty
	
	

	// ~~ concurrent assertions ~~
	a1: assert property(p1) else tc.err("incorrectly driving hit/miss in tb");
	a2: assert property(p2) else tc.err("miss trigger didn't stall PC long enough");
	a3: assert property(p3) else tc.err("mem read EN error");
	a4: assert property(p4) else tc.err("word offset index incorrect");
	a5: assert property(p5) else tc.err("only hit signal should be present");

	// ~~ immediate assertions ~~
	initial begin
	
		// ~~ class instances ~~
		tc          = new();
		
		// ~~ defaults ~~
		clk 			= 1'b1;
		reset			= 1'b1; 
		hit				= 1'b0;
		miss			= 1'b1;
		monkeywrench 	= 1'b0; 

		// ~~ reset ~~
		#100;
		reset			= 1'b0;

		// ~~ TC1 ~~
		tc.new_test("(common) coming out of reset always misses + filling til a block is full");
		tnum = tc.get_testnum();
			miss		= 1'b1;
			// concurrent asserts handle testing
			#80;
		tc.test_done();	


		// ~~ TC2 ~~
		tc.new_test("(common) hits keep FSM in READ_CACHE");
		tnum = tc.get_testnum();
			miss	= 1'b0;
			hit		= 1'b1;
			#80;
			// concurrent asserts handle testing
		tc.test_done();
		

		// ~~ TC3 ~~
		tc.new_test("(edge) ignore hit if still in miss state");
		tnum = tc.get_testnum();
		monkeywrench = 1'b1; 
		
			miss	= 1'b1;
			hit		= 1'b0;
			#8;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd0)	else tc.err("wrong word offset");
			#10;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd1)	else tc.err("wrong word offset");
			#10;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd2)	else tc.err("wrong word offset");
			#2;
			
			
			miss	= 1'b0;
			hit		= 1'b1;
			#8;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd3)	else tc.err("wrong word offset");
			#10;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd4)	else tc.err("wrong word offset");
			#10;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd5)	else tc.err("wrong word offset");
			#2;

			miss	= 1'b1;
			hit		= 1'b0;
			#8;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd6)	else tc.err("wrong word offset");
			#10;
			assert (update == 1'b1)		else tc.err("update should be high");
			assert (stall == 1'b1)		else tc.err("shall should be high");
			assert (word_idx == 3'd7)	else tc.err("wrong word offset");
			#2;
			
		monkeywrench = 1'b0;
		tc.test_done();


	end
endmodule
