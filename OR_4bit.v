`include "OR.v"

module OR_4bit(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] c
);

wire [3:0] OR_output;

OR or_1(
	.a(a[0]),
	.b(b[0]),
	.c(OR_output[0])
);

OR or_2(
	.a(a[1]),
	.b(b[1]),
	.c(OR_output[1])
);

OR or_3(
	.a(a[2]),
	.b(b[2]),
	.c(OR_output[2])
);

OR or_4(
	.a(a[3]),
	.b(b[3]),
	.c(OR_output[3])
);

assign c = OR_output;

endmodule