module twos_compliment(
    input [7:0] A,
    output [7:0] Y
    );
    
    wire [7:0] invert;
    assign invert[0] = ~A[0];
    assign invert[1] = ~A[1];
    assign invert[2] = ~A[2];
    assign invert[3] = ~A[3];
    assign invert[4] = ~A[4];
    assign invert[5] = ~A[5];
    assign invert[6] = ~A[6];
    assign invert[7] = ~A[7];
       
    wire [6:0] carry;
    
    full_adder lsb_0(
        .A(invert[0]),
        .B(1'b0),
        .Y(Y[0]),
        .Cin(1'b1),
        .Cout(carry[0])
        );

    full_adder lsb_1(
        .A(invert[1]),
        .B(1'b0),
        .Y(Y[1]),
        .Cin(carry[0]),
        .Cout(carry[1])
        );
    
    full_adder lsb_2(
        .A(invert[2]),
        .B(1'b0),
        .Y(Y[2]),
        .Cin(carry[1]),
        .Cout(carry[2])
        );
        
    full_adder lsb_3(
        .A(invert[3]),
        .B(1'b0),
        .Y(Y[3]),
        .Cin(carry[2]),
        .Cout(carry[3])
        );
        
    full_adder msb_4(
        .A(invert[4]),
        .B(1'b0),
        .Y(Y[4]),
        .Cin(carry[3]),
        .Cout(carry[4])
        );
        
     full_adder msb_5(
        .A(invert[5]),
        .B(1'b0),
        .Y(Y[5]),
        .Cin(carry[4]),
        .Cout(carry[5])
        );
     
     full_adder msb_6(
        .A(invert[6]),
        .B(1'b0),
        .Y(Y[6]),
        .Cin(carry[5]),
        .Cout(carry[6])
        );
      
     full_adder msb_7(
        .A(invert[7]),
        .B(1'b0),
        .Y(Y[7]),
        .Cin(carry[6])
        );
        
endmodule
