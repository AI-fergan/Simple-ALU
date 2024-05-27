`include "MUX_8bit.v"

module MUX_16bit(	
	input wire [15:0] nums,
	input wire [3:0] op,
	output wire out
); 

wire out_1;
wire out_2;

MUX_8bit mux_1(
	.nums(nums[7:0]),
	.op(op[2:0]),
	.out(out_1)
);

MUX_8bit mux_2(
	.nums(nums[15:8]),
	.op(op[2:0]),
	.out(out_2)
);

MUX mux_3(
	.num_1(out_1),
	.num_2(out_2),
	.op(op[3]),
	.out(out)
);

endmodule