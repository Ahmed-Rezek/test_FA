`timescale 1ns / 1ps

module half_adder_tb;

    // 1. Declare signals to connect to the Design Under Test (DUT)
    reg  a;
    reg  b;
    wire sum;
    wire carry;

    // 2. Instantiate the Half Adder
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // 3. Stimulus generation
    initial begin
        // Monitor outputs in the console
        $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b", $time, a, b, sum, carry);

        // Apply all 4 combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish; // End simulation
    end

endmodule