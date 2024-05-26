`include "XOR.v"
`include "AND.v"

module Half_Adder(
	input wire num_1,
	input wire num_2,
	output wire sum,
	output wire carry
);

AND and_1(
	.a(num_1),
	.b(num_2),
	.c(carry)
);

XOR xor_1(
	.a(num_1),
	.b(num_2),
	.c(sum)
);

endmodule