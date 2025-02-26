`timescale 1 ns / 10 ps


module lab5_tb();

logic [3:0] num1;
logic [2:0] sel1;
logic sega1;
logic segb1;
logic segc1;
logic segd1;
logic sege1;
logic segf1;
logic segg1;
logic [7:0]seg1;


lab5_behav UUT (
    .num(num1),
    .sel(sel1),
    .sega(sega1),
    .segb(segb1),
    .segc(segc1),
    .segd(segd1),
    .sege(sege1),
    .segf(segf1),
    .segg(segg1),
    .seg(seg1)

);

initial begin
    num1 = 4'b0000; sel1 = 3'b000;    //Input 1//
    #10;
    num1 = 4'b0001; sel1 = 3'b001;    //Input 2//
    #10;
    num1 = 4'b0010; sel1 = 3'b010;    //Input 3//
    #10;
    num1 = 4'b0011; sel1 = 3'b011;    //Input 4//
    #10;
    num1 = 4'b0100; sel1 = 3'b100;    //Input 5//
    #10;
    num1 = 4'b0101; sel1 = 3'b101;   //Input 6//
    #10;
    num1 = 4'b0110; sel1 = 3'b110;    //Input 7//
    #10;
    num1 = 4'b0111; sel1 = 3'b111;    //Input 8//
    #10;
    num1 = 4'b1000;                     //Input 9//
    #10;
    num1 = 4'b1001;                     //Input 10//
    #10;
    num1 = 4'b1010;                    //Input 11//
    #10;
    num1 = 4'b1011;                    //Input 12//
    #10;
    num1 = 4'b1100;                    //Input 13//
    #10;
    num1 = 4'b1101;                     //Input 14//
    #10;
    num1 = 4'b1110;                    //Input 15//
    #10;
    num1 = 4'b1111;                     //Input 16//
    #10;
    $stop;
end

//-----Prinitng truth table of Seven Segment LEDs-----//
initial begin
    $monitor("num[3] = %b  num[2] = %b  num[1] = %b  num[0] = %b  | segA = %b  segB = %b  segC = %b  segD = %b  segE = %b  segF = %b  segG = %b", num1[3], num1[2], num1[1], num1[0], sega1, segb1, segc1, segd1, sege1, segf1, segg1 );
end    

endmodule

