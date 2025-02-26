module lab5(
    input logic [3:0] num,  // 4-bit input representing the hex number (0-F)
    input logic [2:0] sel,  // 3-bit selector for which display to turn on
    output logic [7:0] seg,   // Active-low enable signals for the displays
    output logic sega,
    output  logic segb,
    output  logic segc,
    output logic segd,
    output  logic sege,
    output  logic segf ,
    output logic segg
);

always_comb begin
    sega = (~num[3] & ~num[2] & ~num[1] & num[0]) | (~num[3] & num[2] & ~num[1] & ~num[0])|(num[3] & num[2] & ~num[1] & num[0])|(num[3] & ~num[2] & num[1] & num[0]);
    segb = (~num[3] & num[2] & ~num[1] & num[0]) | (num[2] & num[1] & ~num[0])|(num[3] & num[2] & ~num[0])|(num[3] & num[1] & num[0]);
    segc = (~num[3] & ~num[2] & num[1] & ~num[0]) | (num[3] & num[2] & num[1]) |(num[3] & num[2] & ~num[0]);
    segd = (~num[3] & ~num[2] & ~num[1] & num[0]) | (~num[3] & num[2] & ~num[1] & ~num[0])|(num[3] & ~num[2] & num[1] & ~num[0])|( num[2] & num[1] & num[0]);
    sege = (~num[3] & num[0]) | (~num[2] & ~num[1] & num[0])|(~num[3] & num[2] & ~num[1]);
    segf = (num[3] & num[2] & ~num[1] & num[0]) | (~num[3] & ~num[2] & num[0] )|(~num[3] & ~num[2] & num[1] )|(~num[3] & num[1] & num[0] );
    segg = (num[3] & num[2] & ~num[1] & ~num[0]) | (~num[3] & num[2] & num[1] & num[0])|(~num[3] & ~num[2] & ~num[1]);
end

always_comb begin
    seg[0]=sel[2]|sel[1]|sel[0];
    seg[1]=sel[2]|sel[1]| ~sel[0];
    seg[2]=sel[2]| ~sel[1]|sel[0];
    seg[3]=sel[2]| ~sel[1]|~sel[0];
    seg[4]=~sel[2]| sel[1]| sel[0];
    seg[5]=~sel[2]|sel[1]|~sel[0];
    seg[6]=~sel[2]|~sel[1]|sel[0];
    seg[7]=~sel[2]|~sel[1]|~sel[0];
end
endmodule