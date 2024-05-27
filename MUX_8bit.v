`include "MUX_4bit.v"

module MUX_8bit(	
	input wire [7:0] nums,
	input wire [2:0] op,
	output wire out
); 

wire out_1;
wire out_2;

MUX_4bit mux_1(
	.nums(nums[3:0]),
	.op_1(op[0]),
	.op_2(op[1]),
	.out(out_1)
);

MUX_4bit mux_2(
	.nums(nums[7:4]),
	.op_1(op[0]),
	.op_2(op[1]),
	.out(out_2)
);

MUX mux_3(
	.num_1(out_1),
	.num_2(out_2),
	.op(op[2]),
	.out(out)
);

endmodule
