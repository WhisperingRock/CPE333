/*
* Purpose	: FSM for IMEM's direct cache system
* Author	: WhisperingRock
* Date		: 10/2026
*/


module IM_Cache_FSM
(
	input logic 		hit_i,
	input logic 		miss_i,
	input logic			clk_i,
	input logic			rst_i,
	output logic		update_o,
	output logic		pc_stall_o,
	output logic [2:0]	blocki_o
);
	typedef enum bit
	{
		ST_READ_CACHE,
		ST_MEMFILL
	} state_type; 

	state_type CS, NS;

	// ~~~~ locals ~~~~
	localparam logic [3:0] NUM_BLOCKS = 4'b0111; 
	logic [3:0]	block_index; 
	assign blocki_o = block_index[2:0];

	// ~~~~ state changes ~~~~
	always_ff @(posedge clk_i) begin

		// ~~ priority 1 : account for words written to cache
		if (CS == ST_MEMFILL)		begin block_index <= block_index + 1'b1; end
		else 						begin block_index <= 4'b0000; end

		// ~~ priority 0 : reset and next state ~~
		// ~ rst cleared cache - read from mem ~~
		if(rst_i == 1'b1) 	begin
			CS <= ST_READ_CACHE;
			NS <= ST_READ_CACHE;
		end
		
		CS <= NS;
	end

	// ~~~~ state logic ~~~~
	always_comb begin
		
		// ~~ defaults ~~
		update_o	= 1'b0; // assume cache is empty or not there
		pc_stall_o	= 1'b0; // avoid softlocking the pc

		case(CS)

			// ~ check cache ~
			ST_READ_CACHE: 
			begin
				if		(rst_i == 1'b1)	 		begin NS = ST_READ_CACHE;					end
				else if	(hit_i == 1'b1)			begin NS = ST_READ_CACHE; 					end 
				else if	(miss_i == 1'b1)		begin NS = ST_MEMFILL; 	pc_stall_o = 1'b1; 	end
				else 							begin NS = ST_READ_CACHE; 					end 
			end

			// ~ load block from mem ~
			ST_MEMFILL: 
			begin
				pc_stall_o		= 1'b1;
				update_o 		= 1'b1;
				if(block_index < NUM_BLOCKS) 	begin NS = ST_MEMFILL;  	end
				else 							begin NS = ST_READ_CACHE; 	end
			end
			
			default: begin NS = ST_READ_CACHE; end
		endcase
	end
endmodule
