`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2026 02:38:59 PM
// Design Name: 
// Module Name: ALU_Decoder
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


module ALU_Decoder(

    input logic [6:0]   OPCODE, 
    input logic [2:0]   FUNC3, 
    input logic         FUNC7,
    
    // ~~~~ MUX sel outs ~~~~ 
    output logic [3:0]  ALU_FUNC,                              
    output logic 		ALU_SRC_A,                              
    output logic [1:0]  ALU_SRC_B

    );
    
    
    always_comb
    begin
    
        // ~~ defaults ~~
        ALU_FUNC   = 4'b0000;
        ALU_SRC_A  = 1'b0;
        ALU_SRC_B  = 2'b00;                                          

		case(OPCODE)
	   
			// ~~ loads (OP=3) ~~
			7'b0000011: 
			begin
				ALU_SRC_B  = 2'b01;                                    // Select : immed (I-type)
			end
			
			// ~~ immed value (OP=19) ~~
			7'b0010011: 
			begin
				ALU_FUNC = ((FUNC3 == 3'b101) && (FUNC7 == 1'b1)) ? ({1'b0, FUNC3} + 4'b1000) : {1'b0, FUNC3};
				ALU_SRC_B  = 2'b01;                                    // Select immed I
			end
			
			// ~~ add upper imm to pc (auipc) (OP=23) ~~
			7'b0010111: 
			begin

				ALU_SRC_A  = 1'b1;                                     // Select : imm (U-type)
				ALU_SRC_B  = 2'b11;                                    // Select : PC
			end
				  
			// ~~ store (OP=35) ~~
			7'b0100011: 
			begin                    
				ALU_SRC_B  = 2'b10;                                     // Select : immed (S-type)                      
			end
			   
			// ~~ Registers as value (OP=51) ~~
			7'b0110011: 
			begin
			
				 if((FUNC3 == 3'b000) || (FUNC3 == 3'b101))
				 begin
					ALU_FUNC = (FUNC7 == 1'b1) ? ({1'b0,FUNC3}+4'b1000) : {1'b0,FUNC3};
				 end
				 
				 else begin ALU_FUNC = {1'b0,FUNC3}; end 
													  
			end
				 
			// ~~ lui (OP=55) ~~
			7'b0110111: 
			begin
				ALU_FUNC   = 4'b1001;                                   // Select : copy srcA                  
				ALU_SRC_A  = 1'b1;                                     // Select : imm (U-type)                                    
			end
			
			// ~~ Branch (OP=99) ~~
			7'b1100011: 
			begin       
				                               
			end
					  
			// ~~ Jump and link register (OP=103) ~~
			7'b1100111:
			begin                  
				                         
			end  
			
			// ~~ Jump and link (OP=111) ~~
			7'b110_1111: 
			begin               
				                              
			end
					   
		endcase
	end
  
endmodule
