module tff(
    input T, enable,
    output Q, notQ
    );
    
    jkflipflop jkt(
        .J(T),
        .K(T),
        .enable(enable),
        .Q(Q),
        .notQ(notQ)
    );
endmodule
