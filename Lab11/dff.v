module dff(
    input data, enable,
    output reg Q, 
    output notQ
    );

    initial begin
        Q <= 0;
    end
    
    always @(posedge enable) begin    
        Q <= data;
     end
     
     assign notQ = ~Q;
     
endmodule
