module lab5_behav(
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
    case(num)
        4'b0000 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0000001;
        4'b0001 : {sega,segb,segc,segd,sege,segf,segg} = 7'b1001111;
        4'b0010 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0010010;
        4'b0011 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0000110;
        4'b0100 : {sega,segb,segc,segd,sege,segf,segg} = 7'b1001100;
        4'b0101 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0100100;
        4'b0110 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0100000;
        4'b0111 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0001111;
        4'b1000 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0000000;
        4'b1001 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0000100;
        4'b1010 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0001000;
        4'b1011 : {sega,segb,segc,segd,sege,segf,segg} = 7'b1100000;
        4'b1100 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0110001;
        4'b1101 : {sega,segb,segc,segd,sege,segf,segg} = 7'b1000010;
        4'b1110 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0110000;
        4'b1111 : {sega,segb,segc,segd,sege,segf,segg} = 7'b0111000;
    endcase
end
    always_comb begin
        case(sel)
            3'b000 : seg = 8'b11111110;
            3'b001 : seg = 8'b11111101;
            3'b010 : seg = 8'b11111011;
            3'b011 : seg = 8'b11110111;
            3'b100 : seg = 8'b11101111;
            3'b101 : seg = 8'b11011111;
            3'b110 : seg = 8'b10111111;
            3'b111 : seg = 8'b01111111;
    endcase
end
endmodule
