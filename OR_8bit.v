`include "OR_4bit.v"

module OR_8bit(
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] c
);

wire [7:0] OR_output;

OR_4bit or_1(
	.a(a[3:0]),
	.b(b[3:0]),
	.c(OR_output[3:0])
);

OR_4bit or_2(
	.a(a[7:4]),
	.b(b[7:4]),
	.c(OR_output[7:4])
);

assign c = OR_output;

endmodule
