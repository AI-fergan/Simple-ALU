`include "NOT.v"
`include "AND.v"
`include "XOR.v"

module MUX(
	input wire num_1,
	input wire num_2,
	input wire op,
	output wire out
);

wire not_op;
wire check_1;
wire check_2;

NOT not_1(
	.a(op),
	.b(not_op)
);

AND and_1(
	.a(num_1),
	.b(not_op),
	.c(check_1)
);

AND and_2(
	.a(num_2),
	.b(op),
	.c(check_2)
);

XOR xor_1(
	.a(check_1),
	.b(check_2),
	.c(out)
);

endmodule
