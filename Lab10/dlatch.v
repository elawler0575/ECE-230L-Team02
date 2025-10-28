module dlatch(
    input E,D,
    output reg Q, notQ
    );
    
    always @(E) begin
        if (E)
            Q <= D;
            notQ <= ~Q;
    end
endmodule
