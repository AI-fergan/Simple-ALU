`include "Half_Adder.v"
`include "Basic_Gates.v"

module Full_Adder(
	input wire num_1,
	input wire num_2,
	input wire c,
	output wire sum,
	output wire carry
);

wire result;
wire check_1;
wire check_2;

Half_Adder half_adder_1(
	.num_1(num_1),
	.num_2(num_2),
	.sum(result),
	.carry(check_1)
);


Half_Adder half_adder_2(
	.num_1(result),
	.num_2(c),
	.sum(sum),
	.carry(check_2)
);

OR or_1(
	.a(check_1),
	.b(check_2),
	.c(carry)
);

endmodule