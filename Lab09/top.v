module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );
    wire [1:0] muxconcat;
    wire [1:0] demuxconcat;
    wire [3:0] outtoin;
    
    assign muxconcat = {btnU, btnL};
    assign demuxconcat = {btnR, btnD};
    
    multiplexer mux(
        .data(sw),
        .sel(muxconcat),
        .Enable(btnC),
        .Y(outtoin)
    );
    
    demultiplexer demux(
        .data(outtoin),
        .sel(demuxconcat),
        .Enable(btnC),
        .Y(led)
    );
endmodule
