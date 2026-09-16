`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2026 04:24:06 PM
// Design Name: 
// Module Name: Mux_N
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
// 							din[0] occupies the LSB WIDTH slot
//////////////////////////////////////////////////////////////////////////////////


module Mux_N
#(
	parameter WIDTH 	= 32, 
	parameter INPUTS	= 4,
	parameter SEL_WIDTH	= (INPUTS <= 1) ? 1 : $clog2(INPUTS)
)
(
    input logic		[INPUTS-1:0][WIDTH-1:0]	DIN,
    input logic		[SEL_WIDTH-1:0]			SEL,
    output logic	[WIDTH-1:0]				DOUT
);

	always_comb begin

		// ~~ default ~~
		DOUT = '0;

		if(SEL < INPUTS) begin DOUT = DIN[SEL]; end
	end

endmodule
