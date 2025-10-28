module multiplexer(
    input [15:0] data,
    input [1:0] sel,
    input Enable,
    output [3:0] Y
    );
    
    assign Y[0] = ((~sel[0] && ~sel[1]) ? data[0] :(sel[0] && ~sel[1]) ? data[4] : (~sel[0] && sel[1]) ? data[8] : (sel[0] && sel[1])? data[12] : 0) && Enable;
    assign Y[1] = ((~sel[0] && ~sel[1]) ? data[1] :(sel[0] && ~sel[1]) ? data[5] : (~sel[0] && sel[1]) ? data[9] : (sel[0] && sel[1])? data[13] : 0) && Enable;
    assign Y[2] = ((~sel[0] && ~sel[1]) ? data[2] :(sel[0] && ~sel[1]) ? data[6] : (~sel[0] && sel[1]) ? data[10] : (sel[0] && sel[1])? data[14] : 0) && Enable;
    assign Y[3] = ((~sel[0] && ~sel[1]) ? data[3] :(sel[0] && ~sel[1]) ? data[7] : (~sel[0] && sel[1]) ? data[11] : (sel[0] && sel[1])? data[15] : 0) && Enable;
    
endmodule
