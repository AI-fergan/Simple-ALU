`include "AND.v"
`include "NOT.v"

module NAND(
	input wire a,
	input wire b,
	output wire c
);

wire and_output;
wire not_output;

AND and_1(
	.a(a),
	.b(b),
	.c(and_output)
);

NOT not_1(
	.a(and_output),
	.b(not_output)
);

assign c = not_output;

endmodule
