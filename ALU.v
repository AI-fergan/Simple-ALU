`include "16bit_Gates.v"

module ALU (
    input [15:0] num_1,       // First operand
    input [15:0] num_2,       // Second operand
    input [3:0] opcode,       // Operation selector
    output reg [15:0] result, // Result of operation
    output reg zero,          // Zero flag
    output reg carry          // Carry flag
);
	/******************\
	|* Actions Params *|
	\******************/

	//ADD params
	wire [15:0] add_res;   // Sum result from the adder
	wire add_carry;        // Carry output from the adder

	//AND params
	wire [15:0] and_res;   // Result of AND operation

	/**********\
	|* Actions |
	\**********/

	//ADD action
	Adder_16bit adder_16bit(
		.num_1(num_1),
		.num_2(num_2),
		.c(0),              // No initial carry
		.sum(add_res),
		.carry(add_carry)
	);

	//AND action
	AND_16bit and_16bit(
		.a(num_1),
		.b(num_2),
		.c(and_res)
	);

    always @(*) begin
        case (opcode)
            4'b0000: begin
                // Add operation
                result = add_res;  
                carry = add_carry; 
            end
            4'b0001: result = num_1 - num_2;    // Subtraction
            4'b0010: begin
                // AND operation
                result = and_res;
                carry = 0;  // No carry for AND operation
            end
            4'b0011: result = num_1 | num_2;    // OR
            4'b0100: result = num_1 ^ num_2;    // XOR
            4'b0101: result = ~num_1;           // NOT
            4'b0110: result = num_1 << 1;       // Logical left shift
            4'b0111: result = num_1 >> 1;       // Logical right shift
            default: result = 16'h0000;          // Default case for undefined opcode
        endcase

        // Zero flag: Set to 1 if result is zero, else 0
        zero = (result == 16'h0000);

        // Carry flag: Only for addition operation (opcode == 4'b0000)
        if (opcode == 4'b0000)
            carry = add_carry;
    end
endmodule

