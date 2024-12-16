`include "4bit_Gates.v"

module Adder_8bit(
    input wire [7:0] num_1,
    input wire [7:0] num_2,
    input wire c,              
    output wire [7:0] sum,     
    output wire carry          
);
	
    wire carry_1;

    Adder_4bit Adder_4bit_1(
        .num_1(num_1[3:0]),
        .num_2(num_2[3:0]),
        .c(c),
        .sum(sum[3:0]),
        .carry(carry_1)
    );

    Adder_4bit Adder_4bit_2(
        .num_1(num_1[7:4]),
        .num_2(num_2[7:4]),
        .c(carry_1),
        .sum(sum[7:4]),
        .carry(carry)
    );

endmodule

