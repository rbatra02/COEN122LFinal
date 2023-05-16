`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 03:21:35 PM
// Design Name: 
// Module Name: ID_EX
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


module EX_MEM(clk, pc_in, pc_out, zero_in, zero_out, alu_in, alu_out, write_in, write_out);

input clk, zero_in;
input [31:0] pc_in;
input [31:0] alu_in;
input [31:0] write_in;

output reg zero_out;
output reg [31:0] pc_out;
output reg [31:0] alu_out;
output reg [31:0] write_out;
 
always@(posedge clk)
begin
    zero_out = zero_in;
    pc_out = pc_in;
    alu_out = alu_in;
    write_out = write_in;
end

endmodule