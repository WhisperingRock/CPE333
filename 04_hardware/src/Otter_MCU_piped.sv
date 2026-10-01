`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2026 08:57:52 AM
// Design Name: 
// Module Name: Otter_MCU_piped
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
	// ~~ pipe register 0 : IF -> DE ~~
	logic [31:0]	p0_pc; 
	logic [31:0]	p0_pcplus4;
	logic [31:0]	p0_ir;
	
	
	// ~~ pipe register 1 : DE -> EX ~~
	logic [31:0]	p1_pc; 
	logic [31:0]	p1_pcplus4;
	logic [31:0]	p1_ir;
	
	logic [31:0]	p1_rs1, p1_rs2;
	logic [31:0]	p1_srcA;
	logic [31:0]	p1_srcB;

	logic [31:0]	p1_it;
	logic [31:0]	p1_jt;
	logic [31:0]	p1_bt;
	
	logic [3:0]		p1_alu_func; 
	
	
	 // ~~ pipe register 2 : EX -> MEM ~~
	logic [31:0]	p2_pcplus4;
	logic [31:0]	p2_ir;
	
	logic [31:0]	p2_rs2;
	logic [31:0]	p2_alu_result;
	
	logic [1:0]		p2_rf_wr_sel;
	logic			p2_reg_write; 
	logic			p2_mem_write; 
	logic			p2_mem_read2;	


	 // ~~ pipe register 3 : MEM -> WB ~~
	logic [31:0]	p3_pcplus4;
	logic [31:0]	p3_ir;
	
	logic [31:0]	p3_dout2;
	logic [31:0]	p3_alu_result;
	
	logic [1:0]		p3_rf_wr_sel;
	logic			p3_reg_write; 


} pipereg_t; 


module Otter_MCU_piped
#(	
	parameter W  = 32
)
(
    input logic [31:0]  IOBUS_IN, 
    input logic         RST, 
    input logic         CLK, 
    
    output logic [31:0] IOBUS_OUT, 
    output logic [31:0] IOBUS_ADDR, 
    output logic        IOBUS_WR
    );
    
    // ~~ struct inits ~~
    pipereg_t	pr;
    
    
    
// ================= IF : Instruction Fetch =================
    
    // ======= PC Mux =======
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
	
	// ======= Program Counter =======
	logic [31:0]    	pc;
	logic [31:0]    	pc_p4;
	logic           	reset; 
	assign reset		= RST;
    PC_Reg PC
    (
        .CLK			(CLK),              // 1'b I                 
        .PC_RST			(reset),         	// 1'b I     
        .PC_WE			(1'b1),     		// 1'b I
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
	logic [31:0]    	ir;
	
    Memory MEMORY
    (
    	// ~~ IF stage ~~
        .MEM_CLK		(CLK),          	// 1'b I
        .MEM_RDEN1		(1'b1),  			// 1'b I 
        .MEM_ADDR1		(pc[15:2]),   		// 14'b I  
        .MEM_DOUT1		(ir),         		// 32'b O
        
        
        // ~~ MEM stage ~~
        .MEM_RDEN2		(pr.p2_mem_read2),  // 1'b I
        .MEM_WE2		(pr.p2_mem_write),  // 1'b I
        .MEM_ADDR2		(pr.p2_alu_result),	// 32'b I
        .MEM_DIN2		(pr.p2_rs2),        // 32'b I
        .MEM_SIZE		(pr.p2_ir[13:12]),  // 2'b I
        .MEM_SIGN		(pr.p2_ir[14]),     // 1'b I
        .IO_IN			(IOBUS_IN),       	// 32'b I  
		// ~~
        .IO_WR			(IOBUS_WR),       	// 1'b O  
        .MEM_DOUT2		(dout2)       		// 32'b O
    );
    
    
// ================= DE : Instruction Decode =================   

	// ======= ALU Decoder =======
	logic 		     	alu_src_a;
	logic [1:0]     	alu_src_b;
	logic [3:0]			alu_func;
	logic [31:0]    	src_a, src_b;

	ALU_Decoder ALU_DCDR(
		.OPCODE			(pr.p0_ir[6:0]),       		// 7'b I
		.FUNC3			(pr.p0_ir[14:12]),      	// 3'b I
		.FUNC7			(pr.p0_ir[30]),         	// 1'b I

		// ~~
		.ALU_FUNC		(alu_func),    				// 4'b O
		.ALU_SRC_A		(alu_src_a),  				// 1'b O
		.ALU_SRC_B		(alu_src_b)  				// 2'b O

	);
	
	
	// ======= Register File ======= 
	logic [31:0]    	rs1, rs2;

	RegFile 
	#(	
		.BITWIDTH		(32),
		.N_REGS			(32),
		.REG_BUSWIDTH	(5)
	) 
	REG_FILE	
	(
		// ~~ DE stage ~~
		.CLK			(CLK),              		// 1'b I
		.ADR1			(pr.p0_ir[19:15]),      	// 5'b I
		.ADR2			(pr.p0_ir[24:20]),      	// 5'b I
		.RS1			(rs1),              		// 32'b O
		.RS2			(rs2),               		// 32'b O
		
		// ~~ WB stage ~~
		.EN				(pr.p3_reg_write),      	// 1'b I
		.W_ADR			(pr.p3_ir[11:7]),       	// 5'b I
		.W_DATA			(reg_w_data)    			// 32'b I

	);
	
	// ======= Immediate Generator =======
	logic [31:0]    	ut, it, st, jt, bt;
	
	ImmedGen #(32) 
	IMMED_GEN
	(
		.INSTR			(pr.p0_ir),         		// 32'b I but only 25 are used
		// ~~ 	
		.U_TYPE			(ut),            			// 32'b O
		.I_TYPE			(it),            			// 32'b O
		.S_TYPE			(st),            			// 32'b O
		.J_TYPE			(jt),            			// 32'b O
		.B_TYPE			(bt)             			// 32'b O
	);
	
	// ======= SrcA Mux =======
	logic [1:0][31:0] 	din_alu_scra_mux;
	assign din_alu_scra_mux = {ut, rs1}; 			// {..., in1, in0}
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
	
	
	// ======= SrcB Mux =======	
	logic [3:0][31:0] din_alu_scrb_mux;
	assign din_alu_scrb_mux = {pr.p0_pc, st, it, rs2}; 		// {..., in3, in2, in1, in0}
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
	

    
    
// ================= EXEC : Execution ================= 

	// ======= Branch Condition Generator =======
    logic           	br_eq, br_lt, br_ltu;
    
    BranchConditionGen BRANCH_COND_GEN(
        .RS1			(pr.p1_rs1),       			// 32'b I
        .RS2			(pr.p1_rs2),        		// 32'b I
        // ~~
        .BR_EQ			(br_eq),          			// 1'b O
        .BR_LT			(br_lt),          			// 1'b O
        .BR_LTU			(br_ltu)         			// 1'b O
    );
    
    
	// ======= Data Decoder =======
	logic [1:0]			pc_source;
	logic [1:0]			rf_wr_sel;
	logic 				reg_write;
	logic				mem_write;
	logic				mem_read2;
	
	Data_Decoder DATA_DCDR(
		.OPCODE			(pr.p1_ir[6:0]),       		// 7'b I
		.FUNC3			(pr.p1_ir[14:12]),      	// 3'b I
		.FUNC7			(pr.p1_ir[30]),         	// 1'b I
		.BR_EQ			(br_eq),					// 1'b I
		.BR_LT			(br_lt),					// 1'b I
		.BR_LTU			(br_ltu),					// 1'b I
		// ~~
		.PC_SOURCE		(pc_source),				// 2'b O
		.RF_WR_SEL		(rf_wr_sel),				// 2'b O                              
		.REG_WRITE		(reg_write),				// 1'b O
		.MEM_WRITE		(mem_write),				// 1'b O
		.MEM_READ2		(mem_read2)					// 1'b O

	);


    // ======= Arithmetic Logic Unit =======
	logic [31:0] 		result;
    
    ALU 
    #(
    	.BITWIDTH		(32),
    	.FUNWIDTH		(4)
    )
    ALU(
        .ALU_FUN		(pr.p1_alu_func),     		// 4'b I
        .SRC_A			(pr.p1_srcA),          		// 32'b I
        .SRC_B			(pr.p1_srcB),          		// 32'b I
        // ~~
        .ALU_RESULT		(result)     				// 32'b O
    );
    
    // ======= Branch Address Generator =======
    logic [31:0]    	jalr, branch, jal;
    
    BranchAddrGen BRANCH_ADDR_GEN
    (
        .RS1			(pr.p1_rs1),            	// 32'b I 
        .I_TYPE			(pr.p1_it),            		// 32'b I 
        .J_TYPE			(pr.p1_jt),            		// 32'b I
        .B_TYPE			(pr.p1_bt),            		// 32'b I
        .PC				(pr.p1_pc),                					// 32'b I
        // ~~
        .JAL			(jal),              		// 32'b O
        .JALR			(jalr),            			// 32'b O
        .BRANCH			(branch)         			// 32'b O
    );

    
    
    
// ================= MEM : Memory Access =================
// Note : block is in IF stage
	logic [31:0]		dout2;
	assign IOBUS_OUT 	= pr.p2_rs2;
    assign IOBUS_ADDR	= pr.p2_alu_result;
    
    
// ================= WB : Writeback =================
// Note : reg block is in DE stage

	logic [31:0]		reg_w_data;
   	logic [3:0][31:0] 	din_regmux;
	assign din_regmux 	= {pr.p3_alu_result, pr.p3_dout2, 32'hDEAD_BEEF, pr.p3_pcplus4}; // {in3, in2, in1, in0}

	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	REG_MUX 
	(
		.DIN			(din_regmux),
		.SEL			(pr.p3_rf_wr_sel),
		.DOUT			(reg_w_data)
	);
	
 
 
 	// ~~~~ pipe register data transfer ~~~~
    always_ff @(posedge CLK) begin
    
    	// ~~ priority 0 : reset ~~
    	if(reset == 1'b1) begin
    		pr <= '0;
    	end
    	
    	// ~~ priority 1 : bit wiggles ~~
    	else begin
    	
    		// ~~ pipe register 0 : IF -> DE ~~
    		pr.p0_pc			<= pc; 
    		pr.p0_pcplus4		<= pc_p4;
    		pr.p0_ir			<= ir;
    		
    		// ~~ pipe register 1 : DE -> EX ~~
    		// ~ pass thru ~
    		pr.p1_pc			<= pr.p0_pc; 
    		pr.p1_pcplus4		<= pr.p0_pcplus4;
    		pr.p1_ir			<= pr.p0_ir;
    		// ~ reg file ~
    		pr.p1_rs1			<= rs1;
    		pr.p1_rs2			<= rs2;
    		// ~ immgen ~
    		pr.p1_it			<= it;
			pr.p1_jt			<= jt;
			pr.p1_bt			<= bt;
			// ~ mux ~
    		pr.p1_srcA			<= src_a;
    		pr.p1_srcB			<= src_b;
    		// ~ decoder ~
    		pr.p1_alu_func		<= alu_func;

			// ~~ pipe register 2 : EX -> MEM ~~
    		// ~ pass thru ~
    		pr.p2_pcplus4		<= pr.p1_pcplus4;
    		pr.p2_ir			<= pr.p1_ir;
    		pr.p2_rs2			<= pr.p1_rs2;
    		// ~ alu ~
    		pr.p2_alu_result	<= result;
    		// ~ data decoder ~
    		pr.p2_rf_wr_sel		<= rf_wr_sel;
			pr.p2_reg_write		<= reg_write; 
			pr.p2_mem_write		<= mem_write; 
			pr.p2_mem_read2		<= mem_read2;	
    	
    		// ~~ pipe register 3 : MEM -> WB ~~
    		// ~ pass thru ~ 
    		pr.p3_pcplus4		<= pr.p2_pcplus4;
    		pr.p3_ir			<= pr.p2_ir;
    		pr.p3_alu_result	<= pr.p2_alu_result;
			pr.p3_rf_wr_sel		<= pr.p2_rf_wr_sel;
			pr.p3_reg_write		<= pr.p2_reg_write;
    		// ~ memory ~
    		pr.p3_dout2			<= dout2;
    		 
    	end
    end
    
endmodule
