module modulo(
    input Enable, reset,
    output [3:0]Y
    );
    
    wire [1:0] carry;
    wire [2:0] out;
    
    full_adder lsb1(
        .Cin(1'b0),
        .A(Y[0]),
        .B(1'b1),
        .Y(out[0]),
        .Cout(carry[0])
    );
    
    full_adder lsb2(
        .Cin(carry[0]),
        .A(Y[1]),
        .B(1'b0),
        .Y(out[1]),
        .Cout(carry[1])
    );
    
    full_adder msb(
        .Cin(carry[1]),
        .A(Y[2]),
        .B(1'b0),
        .Y(out[2])
    );
    
    compare compare(
        .A(out[2:0]),
        .reset(resetint)
    );
    dff dff1(
        .data(out[0]),
        .enable(resetint),
        .Q(Y[0])        
    );
    
    dff dff2(
        .data(out[1]),
        .enable(resetint),
        .Q(Y[1])
    );
    
    dff dff3(
        .data(out[2]),
        .enable(resetint),
        .Q(Y[2])
        );
        
     dff dffout(
        .data(Y[2:0]),
        .enable(resetint),
        .Q(Y[3])
        );
        
endmodule
