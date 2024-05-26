`include "AND_4bit.v"

module AND_8bit(
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] c
);

wire [7:0] AND_output;

AND_4bit and_1(
	.a(a[3:0]),
	.b(b[3:0]),
	.c(AND_output[3:0])
);

AND_4bit and_2(
	.a(a[7:4]),
	.b(b[7:4]),
	.c(AND_output[7:4])
);

assign c = AND_output;

endmodule

