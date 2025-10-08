module twos_compliment(
    input [7:0] A,
    output [7:0] B
    );
    
full_adder fulladder(
    .A(A[0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(B[0]),
    .Cout(wire)

    for (i = 1; i < 7; i = i + 1) begin
        .A(A[i]),
        .B(1'b0),
        .Cin(Cout[i-1]),
        .Y(B[i]),
        .Cout(wire)
    );


endmodule
