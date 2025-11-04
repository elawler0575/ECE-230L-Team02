module jkflipflop(
    input J, K, enable,
    output D, Q, notQ
    );
    
    assign D = (J & ~Q) | (~K & Q);
    
    dff dffjk(
    .enable(enable),
    .data(D),
    .Q(Q),
    .notQ(notQ)
    );
    
endmodule
