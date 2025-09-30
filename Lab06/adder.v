module adder(
    // Declare your A/B inputs
    input A,B,
    // Declare Y output
    output Y, Carryout
    // Declare carry output
);

    // Enter logic equation here
    assign Y = A ^ B;
    assign Carryout = A & B;

endmodule