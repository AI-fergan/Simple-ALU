`include "OR_8bit.v"

module OR_16bit(
	input wire [15:0] a,
	input wire [15:0] b,
	output wire [15:0] c
);

wire [15:0] OR_output;

OR_8bit or_1(
	.a(a[7:0]),
	.b(b[7:0]),
	.c(OR_output[7:0])
);

OR_8bit or_2(
	.a(a[15:8]),
	.b(b[15:8]),
	.c(OR_output[15:8])
);

assign c = OR_output;

endmodule
