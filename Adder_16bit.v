`include "Adder_8bit.v"

module Adder_16bit(
    input wire [15:0] num_1,
    input wire [15:0] num_2,
    input wire c,              
    output wire [15:0] sum,     
    output wire carry          
);

    wire carry_1; 

    Adder_8bit Adder_8bit_1(
        .num_1(num_1[7:0]),  
        .num_2(num_2[7:0]), 
        .c(c),             
        .sum(sum[7:0]),       
        .carry(carry_1)      
    );

    Adder_8bit Adder_8bit_2(
        .num_1(num_1[15:8]),  
        .num_2(num_2[15:8]), 
        .c(carry_1),        
        .sum(sum[15:8]),     
        .carry(carry)        
    );

endmodule

