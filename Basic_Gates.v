/* XOR Gate */
module XOR (
    input wire a,
    input wire b,
    output wire c
);
assign c = a^b;
endmodule

/* OR Gate */
module OR(
	input wire a,
	input wire b,
	output wire c
);
assign c = a|b;
endmodule

/* NOT Gate */
module NOT(
	input wire a,
	output wire b
);
assign b = ~a;
endmodule

/* NAND Gate */
module NAND(
	input wire a,
	input wire b,
	output wire c
);

wire and_output;
wire not_output;

AND and_1(
	.a(a),
	.b(b),
	.c(and_output)
);

NOT not_1(
	.a(and_output),
	.b(not_output)
);

assign c = not_output;

endmodule

/* MUX Gate */
module MUX(
	input wire num_1,
	input wire num_2,
	input wire op,
	output wire out
);

wire not_op;
wire check_1;
wire check_2;

NOT not_1(
	.a(op),
	.b(not_op)
);

AND and_1(
	.a(num_1),
	.b(not_op),
	.c(check_1)
);

AND and_2(
	.a(num_2),
	.b(op),
	.c(check_2)
);

XOR xor_1(
	.a(check_1),
	.b(check_2),
	.c(out)
);
endmodule

/* DMUX Gate */
module DMUX(
    input wire num,
    input wire op,
    output wire [1:0] out
);

wire not_op;

NOT not_1(
    .a(op),
    .b(not_op)
);

AND and_1(
    .a(num),
    .b(not_op),
    .c(out[0])
);

AND and_2(
    .a(num),
    .b(op),
    .c(out[1])
);
endmodule

/* AND Gate */
module AND(
	input wire a,
	input wire b,
	output wire c
);
assign c = a&b;
endmodule 
