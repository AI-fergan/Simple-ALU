`include "XOR_8bit.v"

module XOR_16bit(
	input wire [15:0] a,
	input wire [15:0] b,
	output wire [15:0] c
);

wire [15:0] XOR_output;

XOR_8bit xor_1(
	.a(a[7:0]),
	.b(b[7:0]),
	.c(XOR_output[7:0])
);

XOR_8bit xor_2(
	.a(a[15:8]),
	.b(b[15:8]),
	.c(XOR_output[15:8])
);

assign c = XOR_output;

endmodule