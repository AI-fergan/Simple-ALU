`include "XOR.v"

module XOR_4bit(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] c
);

wire [3:0] XOR_output;

XOR xor_1(
	.a(a[0]),
	.b(b[0]),
	.c(XOR_output[0])
);

XOR xor_2(
	.a(a[1]),
	.b(b[1]),
	.c(XOR_output[1])
);

OR xor_3(
	.a(a[2]),
	.b(b[2]),
	.c(XOR_output[2])
);

XOR xor_4(
	.a(a[3]),
	.b(b[3]),
	.c(XOR_output[3])
);

assign c = XOR_output;

endmodule
