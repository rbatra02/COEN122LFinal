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


module ID_EX(clk, pc_in, pc_out, read1_in, read1_out, read2_in, read2_out, immGen_in, immGen_out);

input clk;
input [7:0] pc_in;
input [31:0] read1_in;
input [31:0] read2_in;
input [63:0] immGen_in;

output reg [7:0] pc_out;
output reg [31:0] read1_out;
output reg [31:0] read2_out;
output reg [63:0] immGen_out;

always@(posedge clk)
begin
    pc_out = pc_in;
    read1_out = read1_in;
    read2_out = read2_in;
    immGen_out = immGen_in;
end

endmodule
