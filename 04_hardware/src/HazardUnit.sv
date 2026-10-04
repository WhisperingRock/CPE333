`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 09:49:33 AM
// Design Name: 
// Module Name: HazardUnit
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


module HazardUnit(

	// ~~~~ fetch ~~~~
	output logic		STALL_PC,
	output logic 		STALL_PIPE_IFDE,

	// ~~~~ decode ~~~~
	input logic [4:0] 	DE_RS1, 
	input logic [4:0] 	DE_RS2,
	output logic 		FLUSH_PIPE_DEEX,

	// ~~~~ execute ~~~~
	input logic [4:0] 	EX_RS1, 
	input logic [4:0] 	EX_RS2,
	input logic [4:0] 	EX_RD,
	input logic [1:0]	EX_RFWR_SEL,
	input logic			EX_MEM_WRITE,
	output logic [1:0]	FWD_SELA,
	output logic [1:0]	FWD_SELB,
	output logic [1:0]	FWD_SELC,

	// ~~~~ memory ~~~~
	input logic [4:0] 	MEM_RD,
	input logic			MEM_REGW,

	// ~~~~ writeback ~~~~
	input logic [4:0] 	WB_RD,
	input logic			WB_REGW
);



	// ~~~~ local vars ~~~~
	localparam [4:0] ZEROREG = 5'b00000;
	
	logic is_ex_store; 
	assign is_ex_store = 
	(
		(EX_RFWR_SEL == 2'b00) && 
		(EX_MEM_WRITE == 1'b1)
		// Rd is allowed to be zero here
	);

	logic is_ex_load; 
	assign is_ex_load = 
	(
		(EX_RFWR_SEL == 2'b10) && 
		(EX_RD != ZEROREG)
	);
	
	 


	always_comb begin
		// ~~ defaults ~~
		STALL_PC		= 1'b0; 
		STALL_PIPE_IFDE = 1'b0;
		FLUSH_PIPE_DEEX	= 1'b0;
		FWD_SELA 		= 2'b00;
		FWD_SELB 		= 2'b00;
		FWD_SELC 		= 2'b00;


		// ~~ General Data Hazards (RAW) ~~
		// PRIORITY 1 (can be overwritten by store)
		if(EX_RS1 != ZEROREG) begin

			// transfer result back to EX if MEM has it
			// MEM stage has priority 1
			if( (EX_RS1 == MEM_RD) && MEM_REGW) begin
				FWD_SELA = 2'b10;
			end

			// transfer result back to EX if WB has it
			// WB stage has priority 0
			else if ((EX_RS1 == WB_RD) && WB_REGW )begin
				FWD_SELA = 2'b01;
			end
		end
		// PRIORITY 1 (can be overwritten by store)
		if(EX_RS2 != ZEROREG) begin

			// transfer result back to EX if MEM has it
			if( (EX_RS2 == MEM_RD) && MEM_REGW) begin
				FWD_SELB = 2'b10;
			end

			// transfer result back to EX if WB has it
			else if ((EX_RS2 == WB_RD) && WB_REGW )begin
				FWD_SELB = 2'b01;
			end
		end

		// ~~ Specific Data Hazard (`load` or 'store' instr) ~~
		// PRIORITY 0
		if(is_ex_load) begin
			
			// stall downstream til 'lw' reaches WB, producing an updated value
			if(	(DE_RS1 == EX_RD) || ( DE_RS2 == EX_RD) ) begin
				STALL_PC 		= 1'b1;
				STALL_PIPE_IFDE	= 1'b1;
				FLUSH_PIPE_DEEX	= 1'b1; 
			end
		end
		else if(is_ex_store) begin
			// store has unique setting thats not default RAW FWDing
			FWD_SELA 		= 2'b00;
			FWD_SELB 		= 2'b00;
			FWD_SELC 		= 2'b00;

			// WB has priority in data fwding
			if( (EX_RS1 == WB_RD) || (EX_RS2 == WB_RD ) ) begin

				// if WB's RD is the destination for store (EX), then forward
				FWD_SELA	= (EX_RS1 == WB_RD) ? 2'b01 : 2'b00;

				// if WB's RD is (also) the value to be stored, then forward
				FWD_SELC	= (EX_RS2 == WB_RD) ? 2'b01 : 2'b00;
			end

			// MEM has second priority in data fwding
			else if ((EX_RS1 == MEM_RD) || (EX_RS2 == MEM_RD )) begin

				// if MEM's RD is the destination for store (EX), then forward
				FWD_SELA	= (EX_RS1 == MEM_RD) ? 2'b10 : 2'b00;

				// if MEM's RD is also the value to be stored, then forward
				FWD_SELC	= (EX_RS2 == MEM_RD) ? 2'b10 : 2'b00;
			end
		end
	end
endmodule
