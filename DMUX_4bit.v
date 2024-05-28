`include "DMUX.v"

module DMUX_4bit(
	input wire num,
	input wire [1:0] op,
	output wire [3:0] out
);

wire [1:0] check;

DMUX dmux_1(
	.num(num),
	.op(op[1]),
	.out(check)
);

DMUX dmux_2(
	.num(check[0]),
	.op(op[0]),
	.out(out[1:0])
);

DMUX dmux_3(
	.num(check[1]),
	.op(op[0]),
	.out(out[3:2])
);

endmodule	