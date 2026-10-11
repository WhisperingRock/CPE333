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
	logic [31:0]	pc; 
	logic [31:0]	pcplus4;
	logic [31:0]	ir;
} pr0_t; 

typedef struct packed
{
	// ~~ pipe register 1 : DE -> EX ~~
	logic [31:0]	pc; 
	logic [31:0]	pcplus4;
	logic [31:0]	ir;
	
	logic [31:0]	rs1, rs2;
	logic [31:0]	srcA;
	logic [31:0]	srcB;

	logic [31:0]	it;
	logic [31:0]	jt;
	logic [31:0]	bt;
	
	logic [3:0]		alu_func; 
} pr1_t;

typedef struct packed
{
	// ~~ pipe register 2 : EX -> MEM ~~
	logic [31:0]	pcplus4;
	logic [31:0]	ir;
	
	logic [31:0]	rs2;
	logic [31:0]	alu_result;
	
	logic [1:0]		rf_wr_sel;
	logic			reg_write; 
	logic			mem_write; 
	logic			mem_read2;	
} pr2_t;

typedef struct packed
{
	 // ~~ pipe register 3 : MEM -> WB ~~
	logic [31:0]	pcplus4;
	logic [31:0]	ir;
	
	logic [31:0]	dout2;
	logic [31:0]	alu_result;
	
	logic [1:0]		rf_wr_sel;
	logic			reg_write; 

} pr3_t;


typedef struct packed
{
	pr0_t pr0; 
	pr1_t pr1; 
	pr2_t pr2; 
	pr3_t pr3; 

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
	logic				stall_pc; 
	assign reset		= RST;
    PC_Reg PC
    (
        .CLK			(CLK),              // 1'b I                 
        .PC_RST			(reset),         	// 1'b I     
        .PC_WE			(!stall_pc),     	// 1'b I
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
        .MEM_RDEN2		(pr.pr2.mem_read2),  		// 1'b I
        .MEM_WE2		(pr.pr2.mem_write),  		// 1'b I
        .MEM_ADDR2		(pr.pr2.alu_result),		// 32'b I
        .MEM_DIN2		(pr.pr2.rs2),        		// 32'b I
        .MEM_SIZE		(pr.pr2.ir[13:12]),  		// 2'b I
        .MEM_SIGN		(pr.pr2.ir[14]),     		// 1'b I
        .IO_IN			(IOBUS_IN),       			// 32'b I  
		// ~~
        .IO_WR			(IOBUS_WR),       			// 1'b O  
        .MEM_DOUT2		(dout2)       				// 32'b O
    );
    
    
// ================= DE : Instruction Decode =================   

	// ======= ALU Decoder =======
	logic 		     	alu_src_a;
	logic [1:0]     	alu_src_b;
	logic [3:0]			alu_func;
	logic [31:0]    	src_a, src_b;

	ALU_Decoder ALU_DCDR(
		.OPCODE			(pr.pr0.ir[6:0]),       		// 7'b I
		.FUNC3			(pr.pr0.ir[14:12]),      	// 3'b I
		.FUNC7			(pr.pr0.ir[30]),         	// 1'b I

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
		.ADR1			(pr.pr0.ir[19:15]),      	// 5'b I
		.ADR2			(pr.pr0.ir[24:20]),      	// 5'b I
		.RS1			(rs1),              		// 32'b O
		.RS2			(rs2),               		// 32'b O
		
		// ~~ WB stage ~~
		.EN				(pr.pr3.reg_write),      	// 1'b I
		.W_ADR			(pr.pr3.ir[11:7]),       	// 5'b I
		.W_DATA			(reg_w_data)    			// 32'b I

	);
	
	// ======= Immediate Generator =======
	logic [31:0]    	ut, it, st, jt, bt;
	
	ImmedGen #(32) 
	IMMED_GEN
	(
		.INSTR			(pr.pr0.ir),         		// 32'b I but only 25 are used
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
	assign din_alu_scrb_mux = {pr.pr0.pc, st, it, rs2}; 		// {..., in3, in2, in1, in0}
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
        .RS1			(fwd_src_r1),       			// 32'b I
        .RS2			(fwd_src_r2),        		// 32'b I
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
		.OPCODE			(pr.pr1.ir[6:0]),       		// 7'b I
		.FUNC3			(pr.pr1.ir[14:12]),      	// 3'b I
		.FUNC7			(pr.pr1.ir[30]),         	// 1'b I
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

	// ======= FWD A Mux =======	
	logic [3:0][31:0] 	din_fwd_scra_mux;
	logic [31:0]		fwd_srcA; 
	assign 				din_fwd_scra_mux = {
		32'hDEAD_BEEF,       // option 	3 
		pr.pr2.alu_result,   // 	   	2
		reg_w_data, 		 //			1
		pr.pr1.srcA		     //			0
	};
	
	Mux_N  
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	FWD_SRCA_MUX 
	(
		.DIN			(din_fwd_scra_mux),
		.SEL			(fwd_selA),
		.DOUT			(fwd_srcA)
	);
	
	// ======= FWD B Mux =======	
	logic [3:0][31:0] 	din_fwd_scrb_mux;
	logic [31:0]		fwd_srcB; 
	assign 				din_fwd_scrb_mux = {
		32'hDEAD_BEEF,       // option 	3 
		pr.pr2.alu_result,   // 	   	2
		reg_w_data, 		 //			1
		pr.pr1.srcB		     //			0
	};
	
	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	FWD_SRCB_MUX 
	(
		.DIN			(din_fwd_scrb_mux),
		.SEL			(fwd_selB),
		.DOUT			(fwd_srcB)
	);
	
	// ======= FWD RD1 Mux =======	
	logic [3:0][31:0] 	din_fwd_scr_r1_mux;
	logic [31:0]		fwd_src_r1; 
	assign 				din_fwd_scr_r1_mux = {
		32'hDEAD_BEEF,       // option 	3 
		pr.pr2.alu_result,   // 	   	2
		reg_w_data, 		 //			1
		pr.pr1.rs1		     //			0
	};
	
	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	FWD_SRC_RD1_MUX 
	(
		.DIN			(din_fwd_scr_r1_mux),
		.SEL			(fwd_selR1),
		.DOUT			(fwd_src_r1)
	);
			
	// ======= FWD RD2 Mux =======	
	logic [3:0][31:0] 	din_fwd_scr_r2_mux;
	logic [31:0]		fwd_src_r2; 
	assign 				din_fwd_scr_r2_mux = {
		32'hDEAD_BEEF,       // option 	3 
		pr.pr2.alu_result,   // 	   	2
		reg_w_data, 		 //			1
		pr.pr1.rs2		     //			0
	};
	
	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	FWD_SRC_RD2_MUX 
	(
		.DIN			(din_fwd_scr_r2_mux),
		.SEL			(fwd_selR2),
		.DOUT			(fwd_src_r2)
	);

    // ======= Arithmetic Logic Unit =======
	logic [31:0] 		result;
    
    ALU 
    #(
    	.BITWIDTH		(32),
    	.FUNWIDTH		(4)
    )
    ALU(
        .ALU_FUN		(pr.pr1.alu_func),     		// 4'b I
        .SRC_A			(fwd_srcA),          		// 32'b I
        .SRC_B			(fwd_srcB),          		// 32'b I
        // ~~
        .ALU_RESULT		(result)     				// 32'b O
    );
    
    // ======= Branch Address Generator =======
    logic [31:0]    	jalr, branch, jal;
    
    BranchAddrGen BRANCH_ADDR_GEN
    (
        .RS1			(fwd_src_r1),            	// 32'b I 
        .I_TYPE			(pr.pr1.it),            		// 32'b I 
        .J_TYPE			(pr.pr1.jt),            		// 32'b I
        .B_TYPE			(pr.pr1.bt),            		// 32'b I
        .PC				(pr.pr1.pc),                					// 32'b I
        // ~~
        .JAL			(jal),              		// 32'b O
        .JALR			(jalr),            			// 32'b O
        .BRANCH			(branch)         			// 32'b O
    );

    
    
    
// ================= MEM : Memory Access =================
// Note : block is in IF stage
	logic [31:0]		dout2;
	assign IOBUS_OUT 	= pr.pr2.rs2;
    assign IOBUS_ADDR	= pr.pr2.alu_result;
    
    
// ================= WB : Writeback =================
// Note : reg block is in DE stage

	logic [31:0]		reg_w_data;
   	logic [3:0][31:0] 	din_regmux;
	assign din_regmux 	= {pr.pr3.alu_result, pr.pr3.dout2, 32'hDEAD_BEEF, pr.pr3.pcplus4}; // {in3, in2, in1, in0}

	Mux_N 
	#(
		.WIDTH			(32), 
		.INPUTS			(4), 
		.SEL_WIDTH		()
	)
	REG_MUX 
	(
		.DIN			(din_regmux),
		.SEL			(pr.pr3.rf_wr_sel),
		.DOUT			(reg_w_data)
	);
	
	
// ================= HAZARDS =================

	logic 		stall_pipe_ifde;
	logic 		flush_pipe_ifde, flush_pipe_deex;
	logic [1:0]	fwd_selA, fwd_selB, fwd_selR1, fwd_selR2;

	HazardUnit HAZ_UNIT
	(	
		// ~~~~ fetch ~~~~
		.STALL_PC				(stall_pc), 		// 1'b O
		.STALL_PIPE_IFDE		(stall_pipe_ifde),	// 1'b O
		.FLUSH_PIPE_IFDE		(flush_pipe_ifde), 	// 1'b O
	
		// ~~~~ decode ~~~~
		.DE_IR					(pr.pr0.ir),		// 32'b I
		.FLUSH_PIPE_DEEX		(flush_pipe_deex), 	// 1'b O
	
		// ~~~~ execute ~~~~
		.EX_IR					(pr.pr1.ir),		// 32'b I
		.EX_PC_SRC				(pc_source), 		// 2'b I
		.FWD_SEL_ALUA			(fwd_selA), 		// 2'b O
		.FWD_SEL_ALUB			(fwd_selB), 		// 2'b O
		.FWD_SEL_RD1			(fwd_selR1), 		// 2'b O
		.FWD_SEL_RD2			(fwd_selR2), 		// 2'b O
	
		// ~~~~ memory ~~~~
		.MEM_RD					(pr.pr2.ir[11:7]), 	// 5'b I 
		.MEM_REGW				(pr.pr2.reg_write), // 1'b I 
	
		// ~~~~ writeback ~~~~
		.WB_RD					(pr.pr3.ir[11:7]), 	// 5'b I
		.WB_REGW				(pr.pr3.reg_write) 	// 1'b I 
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
    		if(flush_pipe_ifde) begin
    			pr.pr0				<= '0;
    		end
    		else if(!stall_pipe_ifde) begin
				pr.pr0.pc			<= pc; 
				pr.pr0.pcplus4		<= pc_p4;
				pr.pr0.ir			<= ir;
			end
    		
    		// ~~ pipe register 1 : DE -> EX ~~
    		if(flush_pipe_deex) begin 
    			pr.pr1				<= '0; 
    		end
    		else begin
				// ~ pass thru ~
				pr.pr1.pc			<= pr.pr0.pc; 
				pr.pr1.pcplus4		<= pr.pr0.pcplus4;
				pr.pr1.ir			<= pr.pr0.ir;
				// ~ reg file ~
				pr.pr1.rs1			<= rs1;
				pr.pr1.rs2			<= rs2;
				// ~ immgen ~
				pr.pr1.it			<= it;
				pr.pr1.jt			<= jt;
				pr.pr1.bt			<= bt;
				// ~ mux ~
				pr.pr1.srcA			<= src_a;
				pr.pr1.srcB			<= src_b;
				// ~ decoder ~
				pr.pr1.alu_func		<= alu_func;
			end

			// ~~ pipe register 2 : EX -> MEM ~~
    		// ~ pass thru ~
    		pr.pr2.pcplus4			<= pr.pr1.pcplus4;
    		pr.pr2.ir				<= pr.pr1.ir;
    		
    		pr.pr2.rs2				<= fwd_src_r2;
    		// ~ alu ~
    		pr.pr2.alu_result		<= result;
    		// ~ data decoder ~
    		pr.pr2.rf_wr_sel		<= rf_wr_sel;
			pr.pr2.reg_write		<= reg_write; 
			pr.pr2.mem_write		<= mem_write; 
			pr.pr2.mem_read2		<= mem_read2;	
    	
    		// ~~ pipe register 3 : MEM -> WB ~~
    		// ~ pass thru ~ 
    		pr.pr3.pcplus4			<= pr.pr2.pcplus4;
    		pr.pr3.ir				<= pr.pr2.ir;
    		pr.pr3.alu_result		<= pr.pr2.alu_result;
			pr.pr3.rf_wr_sel		<= pr.pr2.rf_wr_sel;
			pr.pr3.reg_write		<= pr.pr2.reg_write;
    		// ~ memory ~
    		pr.pr3.dout2			<= dout2;
    		 
    	end
    end
    
endmodule
