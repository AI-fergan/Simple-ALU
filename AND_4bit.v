`include "AND.v"

module AND_4bit(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] c
);

wire [3:0] and_output;

AND and_1(
	.a(a[0]),
	.b(b[0]),
	.c(and_output[0])
);

AND and_2(
	.a(a[1]),
	.b(b[1]),
	.c(and_output[1])
);

AND and_3(
	.a(a[2]),
	.b(b[2]),
	.c(and_output[2])
);

AND and_4(
	.a(a[3]),
	.b(b[3]),
	.c(and_output[3])
);


assign c = and_output;

endmodule
