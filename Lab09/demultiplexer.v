module demultiplexer(
    input [3:0] data,
    input Enable,
    input [1:0] sel,
    output [15:0] Y
    );
    
    assign Y[3:0] = Enable ? ((~sel[0] && ~sel[1]) ? data:0) : 'b0000;
    assign Y[7:4] = Enable ? ((sel[0] && ~sel[1]) ? data :0): 'b0000;
    assign Y[11:8] = Enable ?((~sel[0] && sel[1]) ? data :0): 'b0000;
    assign Y[15:12] = Enable ? ((sel[0] && sel[1]) ? data:0): 'b0000;
    
endmodule
