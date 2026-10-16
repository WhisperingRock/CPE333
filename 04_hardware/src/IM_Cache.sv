/*
* Purpose	: A direct cache for instruction memory
* Author	: WhisperingRock
* Date		: 10/2026
*/

module IM_Cache
#(
	parameter BITWIDTH = 32,
	parameter WORD_OFFSET_SIZE = 3
)
(
	input logic [BITWIDTH-1:0]			pc_i, 
	input logic 						clk_i,
	input logic							reset_i, 
	input logic							update_i, 
	input logic [WORD_OFFSET_SIZE-1:0]	blki_i,
	input logic	[BITWIDTH-1:0]			word_i,
	output logic [BITWIDTH-1:0]			addr_o,
	output logic [BITWIDTH-1:0]			word_o, 
	output logic						hit_o, 
	output logic						miss_o
);

	// ~~~~ local params ~~~~
	localparam NUM_BLOCKS 		= 16;
	localparam BLOCK_SIZE		= 8;
	localparam INDEX_SIZE		= 4;
	//localparam WORD_OFFSET_SIZE = 3;
	localparam BYTE_OFFSET		= 0;
	localparam TAG_SIZE			= BITWIDTH - (INDEX_SIZE + WORD_OFFSET_SIZE + BYTE_OFFSET);
	localparam NOP_CODE			= 32'h0000_0013;

	logic [BITWIDTH-1:0] data [NUM_BLOCKS-1:0] [BLOCK_SIZE-1:0];
	logic [TAG_SIZE-1:0] tags [NUM_BLOCKS-1:0];
	logic valid_bits[NUM_BLOCKS-1:0];		// unsure about this CEW
	logic [INDEX_SIZE-1:0] index;			// unsure about this CEW

	logic [TAG_SIZE-1:0] 			cache_tag, pc_tag;
	logic [WORD_OFFSET_SIZE-1:0]	pc_offset;
	logic							validity;
	logic [BLOCK_SIZE-1:0] 			valid_row;	

	// ~~~~ init ram to zeros ~~~~
	initial begin
		int i; int j;
		for(i=0; i < NUM_BLOCKS; i=i+1) begin
			for(j=0; j < BLOCK_SIZE; j=j+1) begin
				data[i][j]	= 32'hDEAD_BEEF;
			end
			tags[i]			= 32'd0;
			valid_bits[i]	= 1'b0;
		end
	end

	// ~~~~ assign comb logic ~~~~
	assign index		= pc_i[8:5];
	assign validity		= valid_bits[index];
	assign cache_tag	= tags[index];
	assign pc_offset	= pc_i[4:2];
	assign pc_tag		= pc_i[31:9];

	assign hit_o		= (validity && (cache_tag == pc_tag));
	assign miss_o		= !hit_o;


	// ~~~~ comb control ~~~~
	always_comb begin
		
		// ~~ default : deliver nop if stalled  ~~
		word_o = NOP_CODE; 

		// ~~ export from cache if found ~~
		if(hit_o) begin word_o = data[index][pc_offset]; end
	end

	// ~~~~ clocking it ~~~~
	always_ff @(negedge clk_i) begin
	
		if(reset_i) begin
			valid_row <= 8'h01;
		end
	
		if(update_i) begin
		
		 	// send a request for IMEM data on addr 
		 	addr_o				<=  {pc_tag, index, blki_i, 2'b00};
		 	
		 	// transfer fetched IMEM data to cache 
			data[index][blki_i]	<= word_i;
			
			// track num words pulled from mem
			valid_row			<= valid_row << 1; 
			
			// mark a full block of data as "valid"
			if(blki_i == (BLOCK_SIZE-1) && valid_row == 8'h80) begin 
				valid_bits[index] 	<= 1'b1;
				valid_row 			<= 8'h01; 
			end
		end
		
		// reset block counter
		else begin valid_row <= 8'h01; end
	end
endmodule
