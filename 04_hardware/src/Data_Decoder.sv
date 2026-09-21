`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2026 02:38:59 PM
// Design Name: 
// Module Name: Data_Decoder
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


module Data_Decoder(

    // ~~~~ obtain inputs during/after EXEC ~~~~ 
    input logic [6:0]   OPCODE, 
    input logic [2:0]   FUNC3, 
    input logic         FUNC7,
    input logic         BR_EQ, BR_LT, BR_LTU,
    
    // ~~~~ MUX sel outs ~~~~ 
    output logic [1:0]  PC_SOURCE,                              // input sel for program counter
    output logic [1:0]  RF_WR_SEL,                              // register file write (data) source sel
    output logic		REG_WRITE,
    output logic		MEM_WRITE,
    output logic		MEM_READ2
    );
    
    
    always_comb
    begin
    
        // ~~ defaults ~~
        PC_SOURCE   = 2'b00;
        RF_WR_SEL  	= 2'b00;
		REG_WRITE	= 1'b0;
		MEM_WRITE	= 1'b0;
		MEM_READ2	= 1'b0;


		case(OPCODE)
	   
			// ~~ loads (OP=3) ~~
			7'b0000011: 
			begin
				RF_WR_SEL  	= 2'b10;                                     // Select : rd = DOUT2 = ram[rs1 + immed]
				MEM_READ2	= 1'b1;
				REG_WRITE	= 1'b1;
			end
			
			// ~~ immed value (OP=19) ~~
			7'b0010011: 
			begin
				RF_WR_SEL  = 2'b11;                                     // Select rd = result
				REG_WRITE	= 1'b1;
			end
			
			// ~~ add upper imm to pc (auipc) (OP=23) ~~
			7'b0010111: 
			begin
				RF_WR_SEL  = 2'b11;                                     // Select : result
				REG_WRITE	= 1'b1;
			end
				  
			// ~~ store (OP=35) ~~
			7'b0100011: 
			begin                    
				MEM_WRITE	= 1'b1;                      
			end
			   
			// ~~ Registers as value (OP=51) ~~
			7'b0110011: 
			begin				  
				 RF_WR_SEL  = 2'b11;                                     // Select rd = result
				 REG_WRITE	= 1'b1;
			end
				 
			// ~~ lui (OP=55) ~~
			7'b0110111: 
			begin                                
				RF_WR_SEL  = 2'b11;                                     // Select : result
				REG_WRITE	= 1'b1;
			end
			
			// ~~ Branch (OP=99) ~~
			7'b1100011: 
			begin     
				case(FUNC3)
					3'b000: begin PC_SOURCE  = (BR_EQ)  ?   3'b010 : 3'b000;    end   // BEQ :  branch or PC+4
					3'b001: begin PC_SOURCE  = (~BR_EQ) ?   3'b010 : 3'b000;    end   // BNE :  branch or PC+4
					3'b100: begin PC_SOURCE  = (BR_LT)  ?   3'b010 : 3'b000;    end   // BLT :  branch or PC+4
					3'b101: begin PC_SOURCE  = (~BR_LT) ?   3'b010 : 3'b000;    end   // BGE :  branch or PC+4
					3'b110: begin PC_SOURCE  = (BR_LTU) ?   3'b010 : 3'b000;    end   // BLTU : branch or PC+4
					3'b111: begin PC_SOURCE  = (~BR_LTU)?   3'b010 : 3'b000;    end   // BGEU : branch or PC+4
					default: begin PC_SOURCE = 3'b000; end
				endcase                                    
			end
					  
			// ~~ Jump and link register (OP=103) ~~
			7'b1100111:
			begin                  
				PC_SOURCE = 3'b001;                                      // Select JALR                                    
			end  
			
			// ~~ Jump and link (OP=111) ~~
			7'b110_1111: 
			begin               
				PC_SOURCE = 3'b011;                                      // Select JAL                                    
			end
					   
		endcase
	end
  
endmodule
