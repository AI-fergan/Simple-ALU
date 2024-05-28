`include "AND.v"
`include "NOT.v"

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
