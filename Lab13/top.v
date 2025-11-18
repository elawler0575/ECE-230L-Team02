module top(
    input btnU, btnC,
    output [6:0] led
    );
    
    modulo modulo(
        .Enable(btnC),
        .Y(led[6:3]),
        .reset(btnU)
        );
        
    ripple ripple(
        .Enable(btnC),
        .Y(led[2:0]),
        .reset(btnU)
        );
        
endmodule
