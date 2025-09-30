// Implement top level module
module top(
input [7:0] sw,
output [5:0] led
);

wire ltom;

light light(
    .upstairs(sw[1]),
    .downstairs(sw[0]),
    .stair_light(led[0])
    );
    
adder adder(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .Carryout(led[2])
    );

full_adder add_1(
    .A(sw[4]),
    .B(sw[6]),
    .Y(led[3]),
    .Cin(0),
    .Cout(ltom)
    );    
    
full_adder add_2(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(ltom),
    .Y(led[4]),
    .Cout(led[5])
    );
    
endmodule