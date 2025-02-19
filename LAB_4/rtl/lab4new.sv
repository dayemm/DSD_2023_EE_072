`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 02:49:33 PM
// Design Name: 
// Module Name: lab4new
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


module lab4new(
    input logic [1:0] a,  // 2-bit input a
    input logic [1:0] b,  // 2-bit input b
    output logic red,       // Red LED
    output logic green,       // Green LED
    output logic blue  // Blue LED 
);


always_comb begin
    red = ((a[1]) & (a[0])) | ((~b[0]) & (~b[1])) | ((a[0]) & (~b[1])) | ((a[1]) & (~b[1])) | ((a[1]) & (~b[0]));
    green = ((b[0]) & (b[1])) | ((b[0]) & (~a[1])) | ((~a[0]) & (~a[1])) | ((~a[0]) & (b[1])) | ((b[1]) & (~a[1]));
    blue =  ((a[1]) & (~b[1])) | ((b[1]) & (~a[1])) | ((~a[0]) & (b[0])) | ((a[0]) & (~b[0]));
end

endmodule

