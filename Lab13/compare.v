module compare(
    input [2:0]A,
    output reset
    );
    
    // if Q = 5,6, then reset D
    assign reset = 3'b110 && A[2:0] /*3'b101*/ ? 1'b1:1'b0;
    
endmodule
