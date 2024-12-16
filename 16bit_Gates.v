`include "8bit_Gates.v"

/* XOR Gate */
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

/* OR Gate */
module OR_16bit(
	input wire [15:0] a,
	input wire [15:0] b,
	output wire [15:0] c
);

wire [15:0] OR_output;

OR_8bit or_1(
	.a(a[7:0]),
	.b(b[7:0]),
	.c(OR_output[7:0])
);

OR_8bit or_2(
	.a(a[15:8]),
	.b(b[15:8]),
	.c(OR_output[15:8])
);
assign c = OR_output;
endmodule

/* MUX Gate */
module MUX_16bit(	
	input wire [15:0] nums,
	input wire [3:0] op,
	output wire out
); 

wire out_1;
wire out_2;

MUX_8bit mux_1(
	.nums(nums[7:0]),
	.op(op[2:0]),
	.out(out_1)
);

MUX_8bit mux_2(
	.nums(nums[15:8]),
	.op(op[2:0]),
	.out(out_2)
);

MUX mux_3(
	.num_1(out_1),
	.num_2(out_2),
	.op(op[3]),
	.out(out)
);
endmodule

/* AND Gate */
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