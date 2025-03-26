module lab7(
    input logic write,
    input logic [3:0] num,
    input logic [2:0] sel,
    input logic clk,
    input logic reset,
    output logic [7:0] anode,
    output logic [6:0] cathodes
);
    
    logic [3:0] mem [7:0];
    logic [16:0] counter800HZ;
    logic [2:0] counter100HZ;
    
    // 800Hz Clock frequency divider
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            counter800HZ <= 0;
        else if (counter800HZ == 17'd131071)
            counter800HZ <= 0;
        else
            counter800HZ <= counter800HZ + 1;
    end
    
    // 100Hz Clock frequency divider
    always_ff @(posedge counter800HZ[16] or posedge reset) begin
        if (reset)
            counter100HZ <= 0;
        else
            counter100HZ <= counter100HZ + 1;
    end
    
    // Memory storage for segment data
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            mem <= '{default: 0};
        else if (write)
            mem[sel] <= num;
    end
    
    // Select segment
    logic [2:0] new_sel;
    always_comb begin
        if (write)
            new_sel = sel;
        else
            new_sel = counter100HZ;
    end
    
    // Selection decoder
    always_comb begin
        case(new_sel)
            3'b000 : anode = 8'b11111110;
            3'b001 : anode = 8'b11111101;
            3'b010 : anode = 8'b11111011;
            3'b011 : anode = 8'b11110111;
            3'b100 : anode = 8'b11101111;
            3'b101 : anode = 8'b11011111;
            3'b110 : anode = 8'b10111111;
            3'b111 : anode = 8'b01111111;
        endcase
    end
    
    // Cathode decoder
    always_comb begin
        case(mem[new_sel])
            4'b0000 : cathodes = 7'b0000001;
            4'b0001 : cathodes= 7'b1001111;
            4'b0010 : cathodes = 7'b0010010;
            4'b0011 : cathodes = 7'b0000110;
            4'b0100 : cathodes = 7'b1001100;
            4'b0101 : cathodes = 7'b0100100;
            4'b0110 : cathodes = 7'b0100000;
            4'b0111 : cathodes = 7'b0001111;
            4'b1000 : cathodes = 7'b0000000;
            4'b1001 : cathodes= 7'b0000100;
            4'b1010 : cathodes = 7'b0001000;
            4'b1011 : cathodes = 7'b1100000;
            4'b1100 : cathodes = 7'b0110001;
            4'b1101 : cathodes = 7'b1000010;
            4'b1110 : cathodes = 7'b0110000;
            4'b1111 : cathodes = 7'b0111000;
        endcase
    end
endmodule