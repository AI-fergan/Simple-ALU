`include "4bit_Gates.v"

/* XOR Gate */
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

/* OR Gate */
module OR_8bit(
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] c
);

wire [7:0] OR_output;

OR_4bit or_1(
	.a(a[3:0]),
	.b(b[3:0]),
	.c(OR_output[3:0])
);

OR_4bit or_2(
	.a(a[7:4]),
	.b(b[7:4]),
	.c(OR_output[7:4])
);
assign c = OR_output;
endmodule

/* MUX Gate */
module MUX_8bit(	
	input wire [7:0] nums,
	input wire [2:0] op,
	output wire out
); 

wire out_1;
wire out_2;

MUX_4bit mux_1(
	.nums(nums[3:0]),
	.op_1(op[0]),
	.op_2(op[1]),
	.out(out_1)
);

MUX_4bit mux_2(
	.nums(nums[7:4]),
	.op_1(op[0]),
	.op_2(op[1]),
	.out(out_2)
);

MUX mux_3(
	.num_1(out_1),
	.num_2(out_2),
	.op(op[2]),
	.out(out)
);
endmodule

/* DMUX Gate */
module DMUX_8bit(
	input wire num,
	input wire [2:0] op,
	output wire [7:0] out
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
