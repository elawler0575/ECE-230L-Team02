module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
    );

dff dflipflop(
    .enable(btnC),
    .data(sw[0]),
    .Q(led[0]),
    .notQ(led[1])
);

jkflipflop jkflipflop(
    .J(sw[1]),
    .K(sw[2]),
    .enable(btnC),
    .Q(led[2]),
    .notQ(led[3])
);

tff tflipflop(
    .T(sw[3]),
    .enable(btnC),
    .Q(led[4]),
    .notQ(led[5])
);
endmodule
