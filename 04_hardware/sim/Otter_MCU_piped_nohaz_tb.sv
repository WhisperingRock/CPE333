`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 10:24:02 AM
// Design Name: 
// Module Name: Otter_MCU_piped_nohaz_tb
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


module Otter_MCU_piped_nohaz_tb();

	// ~~~~ imports ~~~~
    import tb_utils_pkg::*;

    // ~~~~ local vars ~~~~
    // ~~ inputs ~~
    logic           clk; 
    logic           reset;
    logic [31:0]    din;
    // ~~ outputs ~~
    logic [31:0]    dout;
    logic [31:0]    addr_out;
	logic      		we_out; 
    
    // ~~ testing ~~
    testcase tc;
    logic [31:0] tnum;
    
    // ~~~~ module instances ~~~~
    Otter_MCU_piped
    #(	
    	.W				(32)
    )
    UUT
    (
        .IOBUS_IN		(din), 
        .RST			(reset), 
        .CLK			(clk), 
        // =======
        .IOBUS_OUT		(dout), 
        .IOBUS_ADDR		(addr_out), 
        .IOBUS_WR		(we_out)
    );
    
    // ~~~~ heartbeat (10ns) ~~~~
    always begin
        #5;
        clk <= !clk;
    end
    
    // ~~~~ testing ~~~~
    initial begin
    
            // ~~ class instances ~~
            tc          = new();
            
            // ~~ Concurrent Assertions ~~
            
            // ~~ defaults ~~
            clk         = 1'b1; 
            reset       = 1'b1; 
            din 	   	= 32'd0;                 
            #1000;                              // enough to start LOOP in asm
            reset       = 1'b0;
            

            // ~~ Immediate Assertions ~~
/*
            // ~ TC1 ~
            tc.new_test("l3test.asm : non-haz pipelines");
            tnum = tc.get_testnum();
          	
          		tc.print_subtest("first instr");
          		#31;
          		assert (addr_out === 32'h0000_0007) 	else tc.err("x7 != 0 + 7");
          		
          		
          		tc.print_subtest("second instr");
				#10;
				assert (addr_out === 32'h0000_0006) 	else tc.err("x8 != 0 + 6");
				#50; // 5 nops
				
				tc.print_subtest("third instr");
				#10;
				assert (addr_out === 32'h0000_6000) 	else tc.err("x8 != x8 << 12");
				#50; // 5 nops
				
				tc.print_subtest("fourth instr");
				#10;
				assert (addr_out === 32'h0000_000A) 	else tc.err("x10 != 0 + 10");
				#50; // 5 nops
				
				tc.print_subtest("fifth instr");
				#10;
				assert (addr_out 	=== 32'h0000_000F) 	else tc.err("x11 != x7 | x10");
				assert (dout 		=== 32'h0000_000A) 	else tc.err("rs2 != X[x10]");
				#50; // 5 nops
				
				tc.print_subtest("sixth instr");
				#10;
				assert (addr_out 	=== 32'h0000_6000) 	else tc.err("write addr error");
				#50; // 5 nops
                  
            tc.test_done();

*/		

    end


endmodule
