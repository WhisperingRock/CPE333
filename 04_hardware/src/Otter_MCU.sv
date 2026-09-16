`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2026 08:57:52 AM
// Design Name: 
// Module Name: Otter_MCU
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


module Otter_MCU
#(	
	parameter W  = 32
)
(
    input logic [31:0]  IOBUS_IN, 
    input logic         RST, 
    input logic         INTRR, 
    input logic         CLK, 
    
    output logic [31:0] IOBUS_OUT, 
    output logic [31:0] IOBUS_ADDR, 
    output logic        IOBUS_WR
    );
    
    
    // ======= Program Counter + Mux =======
	logic           	reset; 
	logic           	pc_write; 
	logic [1:0]     	pc_source; 
	logic [31:0]    	pc;
	logic [31:0]    	pc_p4;
	logic [31:0]    	pcmux_out;
	
	logic [3:0][31:0]	din_pcmux;
	assign din_pcmux 	= {jal, branch, jalr, pc_p4}; // {in3, in2, in1, in0}
	
	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	PC_MUX 
	(
		.DIN			(din_pcmux),
		.SEL			(pc_source),
		.DOUT			(pcmux_out)
	);
        
    PC_Reg PC
    (
        .CLK			(CLK),              // 1'b I                 
        .PC_RST			(reset),         	// 1'b I     
        .PC_WE			(pc_write),       	// 1'b I     
        .PC_DIN			(pcmux_out),     	// 32'b I
        // ~~
        .PC_COUNT		(pc)           		// 32'b O
     );

    Plus4_1N #(32) P4
    (
        .IN				(pc),               // 32'b I
        // ~~
        .OUT			(pc_p4)             // 32'b O
    );




    // ======= Memory =======
    logic           	mem_rden1; 
	logic           	mem_rden2; 
	logic           	mem_we2;  
	logic [31:0]    	ir, dout2;
	
    Memory MEMORY
    (
        .MEM_CLK		(CLK),          	// 1'b I
        .MEM_RDEN1		(mem_rden1),  		// 1'b I 
        .MEM_RDEN2		(mem_rden2),  		// 1'b I
        .MEM_WE2		(mem_we2),      	// 1'b I
        .MEM_ADDR1		(pc[15:2]),   		// 14'b I  
        .MEM_ADDR2		(result),     		// 32'b I
        .MEM_DIN2		(rs2),         		// 32'b I
        .MEM_SIZE		(ir[13:12]),   		// 2'b I
        .MEM_SIGN		(ir[14]),      		// 1'b I
        .IO_IN			(IOBUS_IN),       	// 32'b I  
		// ~~
        .IO_WR			(IOBUS_WR),       	// 1'b O  
        .MEM_DOUT1		(ir),         		// 32'b O
        .MEM_DOUT2		(dout2)       		// 32'b O
    );
    
    
    
    
    // ======= Register File + Mux =======
    logic           	reg_write;  
	logic [31:0]    	reg_w_data; 
	logic [31:0]    	rs1, rs2;
	logic [1:0]     	rf_wr_sel;
    logic [3:0][31:0] 	din_regmux;
    
	assign din_regmux 	= {result, dout2, 32'hDEAD_BEEF, pc_p4}; // {in3, in2, in1, in0}
	assign IOBUS_OUT 	= rs2;
	
	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	REG_MUX 
	(
		.DIN			(din_regmux),
		.SEL			(rf_wr_sel),
		.DOUT			(reg_w_data)
	);
    
    RegFile 
    #(	
    	.BITWIDTH		(32),
		.N_REGS			(32),
		.REG_BUSWIDTH	(5)
	) 
	REG_FILE	
	(
        .EN				(reg_write),        // 1'b I
        .CLK			(CLK),              // 1'b I
        .ADR1			(ir[19:15]),       	// 5'b I
        .ADR2			(ir[24:20]),       	// 5'b I
        .W_ADR			(ir[11:7]),       	// 5'b I
        .W_DATA			(reg_w_data),    	// 32'b I
        // ~~
        .RS1			(rs1),              // 32'b O
        .RS2			(rs2)               // 32'b O
    );
     
     
     
     
    // ======= Immediate Generator =======
    logic [31:0]    	ut, it, st, jt, bt;
    
    ImmedGen #(32) 
    IMMED_GEN
    (
        .INSTR			(ir),             	// 32'b I but only 25 are used
        // ~~ 
        .U_TYPE			(ut),            	// 32'b O
        .I_TYPE			(it),            	// 32'b O
        .S_TYPE			(st),            	// 32'b O
        .J_TYPE			(jt),            	// 32'b O
        .B_TYPE			(bt)             	// 32'b O
    );
    
    
    
    // ======= Branch Address Generator =======
    logic [31:0]    	jalr, branch, jal;
    
    BranchAddrGen BRANCH_ADDR_GEN
    (
        .RS1			(rs1),              // 32'b I 
        .I_TYPE			(it),            	// 32'b I 
        .J_TYPE			(jt),            	// 32'b I
        .B_TYPE			(bt),            	// 32'b I
        .PC(pc),                			// 32'b I
        // ~~
        .JAL			(jal),              // 32'b O
        .JALR			(jalr),            	// 32'b O
        .BRANCH			(branch)         	// 32'b O
    );
    
    
    // ======= Arithmetic Logic Unit =======
    logic 		     	alu_src_a;
	logic [1:0]     	alu_src_b;
	logic [3:0]     	alu_func; 
	logic [31:0]    	src_a, src_b, result;

    logic [1:0][31:0] 	din_alu_scra_mux;
	assign din_alu_scra_mux = {ut, rs1}; 				// {..., in1, in0}
	
	logic [3:0][31:0] din_alu_scrb_mux;
	assign din_alu_scrb_mux = {pc, st, it, rs2}; 		// {..., in3, in2, in1, in0}
	
	assign IOBUS_ADDR 	= result; 
	
	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(2), 
		.SEL_WIDTH		()
	)
	ALU_SRCA_MUX 
	(
		.DIN			(din_alu_scra_mux),
		.SEL			(alu_src_a),
		.DOUT			(src_a)
	);
    

	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	ALU_SRCB_MUX 
	(
		.DIN			(din_alu_scrb_mux),
		.SEL			(alu_src_b),
		.DOUT			(src_b)
	);
    
    ALU 
    #(
    	.BITWIDTH		(32),
    	.FUNWIDTH		(4)
    )
    ALU(
        .ALU_FUN		(alu_func),     	// 4'b I
        .SRC_A			(src_a),          	// 32'b I
        .SRC_B			(src_b),          	// 32'b I
        // ~~
        .ALU_RESULT		(result)     		// 32'b O
    );
    
    
    
    // ======= Branch Condition Generator =======
    logic           	br_eq, br_lt, br_ltu;
    
    BranchConditionGen BRANCH_COND_GEN(
        .RS1			(rs1),              // 32'b I
        .RS2			(rs2),              // 32'b I
        // ~~
        .BR_EQ			(br_eq),          	// 1'b O
        .BR_LT			(br_lt),          	// 1'b O
        .BR_LTU			(br_ltu)         	// 1'b O
    );
    
    
    
    // ======= Control Unit FSM + Decoder =======
    CUnit_Decoder CU_DCDR(
        .OPCODE			(ir[6:0]),       	// 7'b I
        .FUNC3			(ir[14:12]),      	// 3'b I
        .FUNC7			(ir[30]),         	// 1'b I
        .BR_EQ			(br_eq),          	// 1'b I
        .BR_LT			(br_lt),          	// 1'b I
        .BR_LTU			(br_ltu),        	// 1'b I
        // ~~
        .ALU_FUNC		(alu_func),    		// 4'b O
        .ALU_SRC_A		(alu_src_a),  		// 1'b O
        .ALU_SRC_B		(alu_src_b),  		// 2'b O
        .PC_SOURCE		(pc_source),  		// 2'b O
        .RF_WR_SEL		(rf_wr_sel)   		// 2'b O
        
    );
    
    CUnit_FSM CU_FSM(
        .CLK			(CLK),				// 1'b I
        .RST			(RST),     	       	// 1'b I
        .INTRR			(INTRR),            // 1'b I
        .OPCODE			(ir[6:0]),    		// 7'b I
        .FUNC3			(ir[14:12]),        // 3'b I
        .PC_WRITE		(pc_write),        	// 1'b O
        .REG_WRITE		(reg_write),     	// 1'b O
        .MEM_RDEN1		(mem_rden1),   		// 1'b O
        .MEM_RDEN2		(mem_rden2),  		// 1'b O
        .MEM_WE2		(mem_we2),   		// 1'b O
        .RESET			(reset)    			// 1'b O
    );
    
endmodule
