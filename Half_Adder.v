`include "XOR.v"
`include "AND.v"

module Half_Adder(
	input num_1,
	input num_2,
	output out,
	output carry
);

AND and_1(
	.a(num_1),
	.b(num_2),
	.c(carry)
);

XOR xor_1(
	.a(num_1),
	.b(num_2),
	.c(out)
);

endmodule