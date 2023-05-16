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


module instructMemory(clk,address,instruction);

input clk;
input [7:0] address;
output reg [31:0] instruction;

wire [31:0] data [255:0];

assign data[0] = 67;
assign data[5] = 56;
assign data[15] = 24;

always@(posedge clk)
begin
    instruction = data[address[7:0]];
end

endmodule
