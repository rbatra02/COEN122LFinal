`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2023 04:33:17 PM
// Design Name: 
// Module Name: ID_EXMEM
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


module IF_ID(clk, rd_in, rd_out, pc_in, pc_out, inst_in, inst_out, imm_in, imm_out);

input clk;
input [31:0] inst_in;
input [7:0] pc_in;
input [4:0] rd_in;
input [31:0] imm_in;

output reg [31:0] inst_out;
output reg [7:0] pc_out;
output reg [4:0] rd_out;
output reg [31:0] imm_out;

always@(posedge clk)
begin
    pc_out = pc_in;
    inst_out = inst_in;
    rd_out = rd_in;
    imm_out = imm_in;
end

endmodule
