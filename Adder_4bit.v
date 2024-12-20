`include "Full_Adder.v"

module Adder_4bit(
    input wire [3:0] num_1,
    input wire [3:0] num_2,
    input wire c,              
    output wire [3:0] sum,     
    output wire carry          
);

    wire carry_1, carry_2, carry_3;

    Full_Adder Full_Adder_1(
        .num_1(num_1[0]),
        .num_2(num_2[0]),
        .c(c),
        .sum(sum[0]),
        .carry(carry_1)
    );

    Full_Adder Full_Adder_2(
        .num_1(num_1[1]),
        .num_2(num_2[1]),
        .c(carry_1),
        .sum(sum[1]),
        .carry(carry_2)
    );

    Full_Adder Full_Adder_3(
        .num_1(num_1[2]),
        .num_2(num_2[2]),
        .c(carry_2),
        .sum(sum[2]),
        .carry(carry_3)
    );

    Full_Adder Full_Adder_4(
        .num_1(num_1[3]),
        .num_2(num_2[3]),
        .c(carry_3),
        .sum(sum[3]),
        .carry(carry)
    );

endmodule

