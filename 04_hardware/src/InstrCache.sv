// InstrCache.sv
// Purpose	: Pair cache storage with FSM
// Author	: WhisperingRock
// Date		: 10/2026


module InstrCache
#(
	parameter ADDRWIDTH = 32,
	parameter DATAWIDTH = 32
)
(
	input logic						clk_i,
	input logic						rst_i,
	input logic [ADDRWIDTH-1:0] 	pc_i,
	input logic [DATAWIDTH-1:0] 	din_i,
	output logic [DATAWIDTH-1:0]	addr_o,
	output logic					stall_o,
	output logic					update_o,
	output logic [DATAWIDTH-1:0]	instr_o
);

	// ~~~~ locals ~~~~
	logic							update;
	logic							hit, miss;
	logic [2:0]						width_offset; 
	
	assign 	update_o 				= update; 

	// ~~~~ instantiations ~~~~
	IM_Cache
	#(
		.BITWIDTH					(DATAWIDTH),
		.WORD_OFFSET_SIZE			(3)
	)
	CacheStorage
	(
		.clk_i						(clk_i),
		.pc_i						(pc_i),			//32b 
		.reset_i					(rst_i), 
		.update_i					(update), 
		.blki_i						(width_offset),	//3b
		.word_i						(din_i), 		//32b
		.addr_o						(addr_o),
		.word_o						(instr_o), 		//32b
		.hit_o						(hit), 
		.miss_o						(miss)
	);

	IM_Cache_FSM CacheFSM
	(
		.clk_i						(clk_i),
		.rst_i						(rst_i),
		.hit_i						(hit),
		.miss_i						(miss),
		.update_o					(update),
		.pc_stall_o					(stall_o),
		.blocki_o					(width_offset)
	);


endmodule
