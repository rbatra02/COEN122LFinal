`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2023 07:35:36 PM
// Design Name: 
// Module Name: regFile
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


module regFile(clk,wrt,Rd,Rs,Rt,dataIn,Rs_out,Rt_out);

reg [31:0] data[64:0];

input clk, wrt;
input [5:0] Rd;
input [5:0] Rs;
input [5:0] Rt;
input [31:0] dataIn;

output reg [31:0] Rs_out;
output reg [31:0] Rt_out;

always@(posedge clk)
begin
    Rt_out = data[Rt[5:0]];
    Rs_out = data[Rs[5:0]];

    if(wrt)
        data[Rd[5:0]] = dataIn[31:0];
end
endmodule
