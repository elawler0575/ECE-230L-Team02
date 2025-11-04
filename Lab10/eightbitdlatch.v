module eightbitdlatch(
    input E,D,
    // input E, input [7:0]D 
    // D was orginally one bit so chnaged to 8 bit array get rid of code on line 2
    output [7:0]Q, [7:0]notQ
    );
    
    genvar i;
    generate
        for (i = 0; i<8 ; i = i +1) begin
            dlatch dlatch(
            .E(E),
            .D(D), //change to .D(D[i])
            .Q(Q[i]),
            .notQ(notQ[i])
         );
         end
     endgenerate
endmodule
