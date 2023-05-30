`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2023 04:35:30 PM
// Design Name: 
// Module Name: controlBlock
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


module controlBlock(opcode, regwrt, memtoreg, pctoreg, brz, brn, memread, memwrt, jump, jumpmem, incr, aluop, clk);
    input [3:0] opcode;
    input clk;
    output reg regwrt, memtoreg, pctoreg, brz, brn, memread, memwrt, jump, jumpmem, incr;
    output reg [3:0] aluop;

    always @(negedge clk)
    begin
        aluop = 4'b0100;
        regwrt = 0;
        memtoreg = 0;
        pctoreg = 0;
        brz = 0;
        brn = 0;
        memread = 0;
        memwrt = 0;
        jump = 0;
        jumpmem = 0;
        incr = 0;
        case(opcode)
            4'b0000: begin //NOP
            end
            4'b1111: begin //Save PC
                regwrt = 1;
                pctoreg = 1;
            end
            4'b1110: begin //Load
                regwrt = 1;
                memtoreg = 1;
                memread = 1;
            end
            4'b0011: begin //store
                memwrt = 1;
            end
            4'b0100: begin //add
                regwrt = 1;
                aluop = 4'b0000;
            end
            4'b0101: begin //incr
                regwrt = 1;
                incr = 1;
            end
            4'b0110: begin //negate
                regwrt = 1;
                aluop = 4'b0010;
            end
            4'b0111: begin //subtract
                regwrt = 1;
                aluop = 4'b0011;
            end
            4'b1000: begin //jump
                jump = 1;
            end
            4'b1001: begin //branch zero
                brz = 1;
            end
            4'b1010: begin //jump mem
                jumpmem = 1;
            end
            4'b1011: begin //branch neg
                brn = 1;
            end
        endcase
    end
endmodule
