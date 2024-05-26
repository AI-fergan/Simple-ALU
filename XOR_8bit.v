`include "XOR_4bit.v"

module XOR_8bit(
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] c
);

wire [7:0] XOR_output;

XOR_4bit xor_1(
	.a(a[3:0]),
	.b(b[3:0]),
	.c(XOR_output[3:0])
);

XOR_4bit xor_2(
	.a(a[7:4]),
	.b(b[7:4]),
	.c(XOR_output[7:4])
);

assign c = XOR_output;

endmodule
