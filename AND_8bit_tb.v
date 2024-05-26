module simple_initial_example;
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] c;

    // Logic: c is the bitwise AND of a and b
    assign c = a & b;

    initial begin
        // Initialize a and b
        a = 4'b1100;
        b = 4'b1010;
        
        // Print the initial values of a, b, and c
        $display("Time: %0d, a = %b, b = %b, c = %b", $time, a, b, c);

        // Wait for 10 time units
        #10;
        
        // Change the values of a and b
        a = 4'b0110;
        b = 4'b1101;
        
        // Print the updated values of a, b, and c
        $display("Time: %0d, a = %b, b = %b, c = %b", $time, a, b, c);
        
        // Finish the simulation
        #10;
        $finish;
    end
endmodule

