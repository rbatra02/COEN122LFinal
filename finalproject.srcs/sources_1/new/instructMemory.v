`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2023 06:43:07 PM
// Design Name: 
// Module Name: instructMemory
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


module instructMemory(address,clk,instrOut);
    input clk;
    input [7:0] address;
    output reg [31:0] instrOut;

    wire [31:0] instr[255:0];

    assign instr[0] = 32'b1111000001000000000000100000000; //SVPC r1
    assign instr[1] = 0; //NOP
    assign instr[2] = 0; //NOP
    assign instr[3] = 32'b01010000100000010000000000000000; //INCR r2, r1
    assign instr[4] = 32'b01100000110000010000000000000000; //NEG r3, r1
    assign instr[5] = 32'b11110010100000000000000000001001; //SVPC r10
    assign instr[6] = 0; //NOP
    assign instr[7] = 0; //NOP
    assign instr[8] = 32'b10110000000010100000000000000000; //BRN r10
    assign instr[9] = 0; //NOP
    assign instr[10] = 0; //NOP
    assign instr[11] = 0; //NOP
    assign instr[12] = 0; //NOP

    assign instr[13] = 32'b01010000100000100000000000000000; // INC
    assign instr[14] = 32'b00110000000000010000010000000000; //ST
    assign instr[15] = 0; //NOP
    assign instr[16] = 0; //NOP
    assign instr[17] = 32'b11100001000000010000000000000000; // LD r4, r1
    assign instr[18] = 0; //NOP
    assign instr[19] = 0; //NOP
    assign instr[20] = 32'b01000001010000010000100000000000; // ADD r5, r1, r2
    assign instr[21] = 32'b01110001100001000000010000000000; // SUB r6, r4, r1
    assign instr[22] = 32'b11110010110000000000000000001001; // SVPC r11
    assign instr[23] = 0; //NOP
    assign instr[24] = 0; //NOP
    assign instr[25] = 32'b10010000000010110000000000000000; //BRZ r11

    assign instr[26] = 0; //NOP
    assign instr[27] = 0; //NOP
    assign instr[28] = 0; //NOP
    assign instr[29] = 0; //NOP
    assign instr[30] = 32'b01010000100000100000000000000000; //INC r2, r2, 1
    assign instr[31] = 32'b10100000000000010000000000000000; //JM r1
    assign instr[32] = 0; //NOP
    assign instr[33] = 0; //NOP
    assign instr[34] = 32'b10000000000000010000000000000000; // J r1

    always@(posedge clk)
    begin
        instrOut = instr[address]; //read instruction out based on given address
    end

endmodule
