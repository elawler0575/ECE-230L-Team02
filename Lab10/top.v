module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
    );
    
    wire [7:0] byte[3:0]; // between datademux and eightbitdlatch
    wire enable[3:0]; // from enabledemux to eightbitdtlatch
    wire [7:0] memory[3:0]; // from eightbitdlatches to multiplexer
    
    dlatch dlatch( //from part 1: 1 bit dlatch
    .E(btnc),
    .D(sw[0]),
    .Q(led[0]),
    .notQ(led[1])
    );
    
    //part 2
    demux enabledemux(
    .data(btnc),
    .sel(sw[7:6]),
    .A(enable[0]),
    .B(enable[1]),
    .C(enable[2]),
    .D(enable[3])   
    );
    
    eightbitdlatch latch0(
    .E(enable[0]),
    .D(byte[0]),
    .Q(memory[0])
    );
    
    eightbitdlatch latch1(
    .E(enable[1]),
    .D(byte[1]),
    .Q(memory[1])
    );
    
    eightbitdlatch latch2(
    .E(enable[2]),
    .D(byte[2]),
    .Q(memory[2])
    );
    
    eightbitdlatch latch3(
    .E(enable[3]),
    .D(byte[3]),
    .Q(memory[3])
    );
    
    demux datademux(
    .data(sw[15:8]),
    .sel(sw[7:6]),
    .A(byte[0]),
    .B(byte[1]),
    .C(byte[2]),
    .D(byte[3])
    );
    
    multiplexer datamult0( //our multiplexer is only four bits wide so need to use two
    .sel(sw[7:6]),
    .data(memory[0]),
    .Y(led[9:8])
    );
 
    multiplexer datamult1(
    .sel(sw[7:6]),
    .data(memory[1]),
    .Y(led[11:10])
    );
    
    multiplexer datamult2(
    .sel(sw[7:6]),
    .data(memory[2]),
    .Y(led[13:12])
    );
    
    multiplexer datamult3(
    .sel(sw[7:6]),
    .data(memory[3]),
    .Y(led[15:14])
    );
endmodule
