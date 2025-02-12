`timescale 1ns / 10 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 04:29:34 PM
// Design Name: 
// Module Name: lab3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab3(output x,y,
      input a,b,c
    );
    assign d =a | b;
    assign x = d ^ (~c);
    assign f = d ^ (~(a&b));
    assign y = f & d;
    
endmodule