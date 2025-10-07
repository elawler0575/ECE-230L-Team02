module twos_compliment(
    input [7:0] A,
    output [7:0] B
    );

ones_compliment onetotwo(
    .A(A[7:0]),
    .Y(B[7:0])
    );
    
full_adder addone(
    .A(B[7:0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(B[7:0])
    );

endmodule