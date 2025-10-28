module eightbitdlatch(
    input E,D,
    output [7:0]Q, [7:0]notQ
    );
    
    genvar i;
    generate
        for (i = 0; i<8 ; i = i +1) begin
            dlatch dlatch(
            .E(E),
            .D(D),
            .Q(Q[i]),
            .notQ(notQ[i])
         );
         end
     endgenerate
endmodule
