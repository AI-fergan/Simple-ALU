`include "Basic_Gates.v"

/* XOR Gate */
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

/* OR Gate */
module OR_4bit(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] c
);

wire [3:0] OR_output;

OR or_1(
	.a(a[0]),
	.b(b[0]),
	.c(OR_output[0])
);

OR or_2(
	.a(a[1]),
	.b(b[1]),
	.c(OR_output[1])
);

OR or_3(
	.a(a[2]),
	.b(b[2]),
	.c(OR_output[2])
);

OR or_4(
	.a(a[3]),
	.b(b[3]),
	.c(OR_output[3])
);
assign c = OR_output;
endmodule

/* MUX Gate */
module MUX_4bit(	
	input wire [3:0] nums,
	input wire op_1,
	input wire op_2,
	output out
); 

wire out_1;
wire out_2;

MUX mux_1(
	.num_1(nums[0]),
	.num_2(nums[1]),
	.op(op_1),
	.out(out_1)
);

MUX mux_2(
	.num_1(nums[2]),
	.num_2(nums[3]),
	.op(op_1),
	.out(out_2)
);

MUX mux_3(
	.num_1(out_1),
	.num_2(out_2),
	.op(op_2),
	.out(out)
);
endmodule

/* DMUX Gate */
module DMUX_4bit(
	input wire num,
	input wire [1:0] op,
	output wire [3:0] out
);

wire [1:0] check;

DMUX dmux_1(
	.num(num),
	.op(op[1]),
	.out(check)
);

DMUX dmux_2(
	.num(check[0]),
	.op(op[0]),
	.out(out[1:0])
);

DMUX dmux_3(
	.num(check[1]),
	.op(op[0]),
	.out(out[3:2])
);
endmodule	

/* AND Gate */
module AND_4bit(
	input wire [3:0] a,
	input wire [3:0] b,
	output wire [3:0] c
);

wire [3:0] and_output;

AND and_1(
	.a(a[0]),
	.b(b[0]),
	.c(and_output[0])
);

AND and_2(
	.a(a[1]),
	.b(b[1]),
	.c(and_output[1])
);

AND and_3(
	.a(a[2]),
	.b(b[2]),
	.c(and_output[2])
);

AND and_4(
	.a(a[3]),
	.b(b[3]),
	.c(and_output[3])
);
assign c = and_output;
endmodule
