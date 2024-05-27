`include "MUX.v"

module MUX_4bit(	
	input wire [3:0] nums,
	input wire op_1,
	input wire op_2,
	output out
); 

wire out_1;
wire out_2;

MUX mux_1(
	.num_1(nums[0]),
	.num_2(nums[1]),
	.op(op_1),
	.out(out_1)
);

MUX mux_2(
	.num_1(nums[2]),
	.num_2(nums[3]),
	.op(op_1),
	.out(out_2)
);

MUX mux_3(
	.num_1(out_1),
	.num_2(out_2),
	.op(op_2),
	.out(out)
);

endmodule
