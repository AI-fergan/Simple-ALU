`include "AND_4bit.v"

module AND_16bit(
	input wire [15:0] a,
	input wire [15:0] b,
	output wire [15:0] c
);

wire [15:0] AND_output;

AND_8bit and_1(
	.a(a[7:0]),
	.b(b[7:0]),
	.c(AND_output[7:0])
);

AND_8bit and_2(
	.a(a[15:8]),
	.b(b[15:8]),
	.c(AND_output[15:8])
);

assign c = AND_output;

endmodule
