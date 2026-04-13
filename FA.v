module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    wire s1, c1, c2;

    // First Half Adder: adds A and B
    half_adder ha1 (
        .a(a),
        .b(b),
        .sum(s1),
        .carry(c1)
    );

    // Second Half Adder: adds result of ha1 and Cin
    half_adder ha2 (
        .a(s1),
        .b(cin),
        .sum(sum),
        .carry(c2)
    );

    // Final Carry out is the OR of both HA carries
    assign cout = c1 | c2;

endmodule

#THEEND123