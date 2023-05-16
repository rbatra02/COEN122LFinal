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


module MEM_WB(clk, read_in, read_out, address_in, address_out);

input clk;
input [31:0] read_in;
input [31:0] address_in;

output reg [31:0] read_out;
output reg [31:0] address_out;


always@(posedge clk)
begin
    read_out = read_in;
    address_out = address_in;
end

endmodule