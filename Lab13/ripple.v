module ripple(
    input Enable, reset,
    output [2:0] Y
    );
    
    tff tff1(
        .T(1'b0),
        .enable(Enable),
        .Q(Y[0])
    );
    
    tff tff2(
        .T(Y[0]),
        .enable(Enable),
        .Q(Y[1])
    );
    
    tff tff3(
        .T(Y[1]),
        .enable(Enable),
        .Q(Y[2])
    );
endmodule
