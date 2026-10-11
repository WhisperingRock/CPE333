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
	output logic 		FLUSH_PIPE_IFDE,

	// ~~~~ decode ~~~~
	input logic [31:0]	DE_IR,
	output logic 		FLUSH_PIPE_DEEX,

	// ~~~~ execute ~~~~
	input logic [31:0]	EX_IR,
	input logic [1:0]	EX_PC_SRC,
	output logic [1:0]	FWD_SEL_ALUA,
	output logic [1:0]	FWD_SEL_ALUB,
	output logic [1:0]	FWD_SEL_RD1,
	output logic [1:0]	FWD_SEL_RD2,


	// ~~~~ memory ~~~~
	input logic [4:0] 	MEM_RD,
	input logic			MEM_REGW,

	// ~~~~ writeback ~~~~
	input logic [4:0] 	WB_RD,
	input logic			WB_REGW
);



	// ~~~~ local const ~~~~
	localparam [4:0]	ZEROREG = 5'b00000;

	localparam [6:0] 	LOAD 	= 7'd3;
	localparam [6:0] 	IMM 	= 7'd19;
	localparam [6:0] 	AUIPC	= 7'd23;
	localparam [6:0] 	STORE	= 7'd35;
	localparam [6:0] 	OP		= 7'd51;
	localparam [6:0] 	LUI		= 7'd55;
	localparam [6:0] 	BRANCH	= 7'd99;
	localparam [6:0] 	JALR	= 7'd103;
	localparam [6:0] 	JAL		= 7'd111;	

	// ~~ local logic ~~
	logic 				de_uses_rs1;
	logic				de_uses_rs2;

	logic [4:0]			de_rs1, de_rs2;
	assign				de_rs1 = DE_IR[19:15];
	assign				de_rs2 = DE_IR[24:20];
	
	logic 				ex_uses_rs1;
	logic				ex_uses_rs2;

	logic [4:0]			ex_rs1, ex_rs2, ex_rd;
	assign				ex_rs1 	= EX_IR[19:15];
	assign				ex_rs2 	= EX_IR[24:20];
	assign				ex_rd	= EX_IR[11:7]; 

	logic 				is_ex_store;
	logic 				is_ex_load;
	logic				is_ex_branch;
	logic				is_ex_jump; 
	logic				is_branching; 
	assign				is_branching = ((is_ex_jump || is_ex_branch) && (EX_PC_SRC != 2'b00));

	logic				load_stall;
	assign				load_stall = (
							is_ex_load && 
							(
								(de_uses_rs1 && (de_rs1 == ex_rd)) || 
								(de_uses_rs2 && (de_rs2 == ex_rd))
							)
						);
	assign				STALL_PC 		= load_stall;
	assign				STALL_PIPE_IFDE	= load_stall;
	assign				FLUSH_PIPE_DEEX = load_stall || is_branching;
	assign				FLUSH_PIPE_IFDE	= is_branching;

	always_comb begin
		// ~~ defaults ~~
		FWD_SEL_ALUA 		= 2'b00;
		FWD_SEL_ALUB 		= 2'b00;
		FWD_SEL_RD1 		= 2'b00;
		FWD_SEL_RD2 		= 2'b00;

		is_ex_store			= 1'b0; 
		is_ex_load 			= 1'b0;
		is_ex_branch		= 1'b0;
		is_ex_jump			= 1'b0; 

		de_uses_rs1 		= 1'b0; 
		de_uses_rs2 		= 1'b0;
		ex_uses_rs1 		= 1'b0; 
		ex_uses_rs2 		= 1'b0;
		
		case(DE_IR[6:0])
			LOAD: begin de_uses_rs1 = 1'b1; end
			
			IMM : begin de_uses_rs1 = 1'b1; end
			
			STORE : begin
				de_uses_rs1 = 1'b1; 
				de_uses_rs2 = 1'b1; 
			end
			
			OP : begin
				de_uses_rs1 = 1'b1; 
				de_uses_rs2 = 1'b1; 
			end 
			
			BRANCH : begin
				de_uses_rs1 = 1'b1;
				de_uses_rs2 = 1'b1;
			end
			
			JALR : begin de_uses_rs1 = 1'b1;end
		endcase
		
		case(EX_IR[6:0])
			LOAD: begin
				is_ex_load 	= 1'b1;
				ex_uses_rs1 = 1'b1; 
			end
			
			IMM : begin
				ex_uses_rs1 = 1'b1; 
			end
			
			STORE : begin
				is_ex_store = 1'b1;
				ex_uses_rs1 = 1'b1; 
				ex_uses_rs2 = 1'b1; 
			end
			
			OP : begin
				ex_uses_rs1 = 1'b1; 
				ex_uses_rs2 = 1'b1; 
			end 
			
			BRANCH : begin
				is_ex_branch= 1'b1;
				ex_uses_rs1 = 1'b1;
				ex_uses_rs2 = 1'b1;
			end
			
			JALR : begin
				is_ex_jump	= 1'b1;
				ex_uses_rs1 = 1'b1;
			end
			
			JAL : begin is_ex_jump = 1'b1; end

		endcase


		// ~~ Data Hazards in EX (RAW) ~~
		if(ex_uses_rs1 && (ex_rs1 != ZEROREG)) begin

			// FWD from MEM (priority 0 for newer data)
			if( (ex_rs1 == MEM_RD) && MEM_REGW) begin
				if(is_ex_branch || is_ex_jump)	begin FWD_SEL_RD1 = 2'b10; end
				else							begin FWD_SEL_ALUA= 2'b10; end // include sw
			end

			// FWD from WB (priority 1 for slightly older data)
			else if ((ex_rs1 == WB_RD) && WB_REGW )begin
				if(is_ex_branch || is_ex_jump)	begin FWD_SEL_RD1 = 2'b01; end
				else							begin FWD_SEL_ALUA= 2'b01; end // include sw
			end
		end

		if(ex_uses_rs2 && (ex_rs2 != ZEROREG)) begin

			// FWD from MEM (priority 0 for newer data)
			if( (ex_rs2 == MEM_RD) && MEM_REGW) begin
				if(is_ex_branch || is_ex_store)	begin FWD_SEL_RD2 = 2'b10; end
				else							begin FWD_SEL_ALUB= 2'b10; end // include sw
			end

			// FWD from WB (priority 1 for slightly older data)
			else if ((ex_rs2 == WB_RD) && WB_REGW )begin
				if(is_ex_branch || is_ex_store)	begin FWD_SEL_RD2 = 2'b01; end
				else							begin FWD_SEL_ALUB= 2'b01; end // include sw
			end
		end

	end
endmodule
