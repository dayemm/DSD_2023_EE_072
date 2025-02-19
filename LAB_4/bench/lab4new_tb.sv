`timescale 1ns / 1ps

module lab4new_tb();
    logic [1:0] a, b;
    logic red, green, blue;

    // Instantiate the Unit Under Test (UUT)
    lab4new UUT (
        .a(a),  // Corrected: Mapping as a whole 2-bit vector
        .b(b),  // Corrected: Mapping as a whole 2-bit vector
        .red(red), 
        .green(green), 
        .blue(blue)
    );

    initial begin
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0;
        #10;
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1;
        #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0;
        #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1;
        #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 0;
        #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1;
        #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 0;
        #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 1;
        #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0;
        #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1;
        #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 0;
        #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 1;
        #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 0;
        #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 1;
        #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 0;
        #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 1;
        #10;
        $stop;
    end
endmodule

