`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2023 07:54:52 PM
// Design Name: 
// Module Name: dataMem
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


module dataMem(clk,read,wrt,address,dataIn,dataOut);

reg [31:0] data[65536:0];
reg [31:0] outTemp;

input clk, read, wrt;
input [31:0] address;
input [31:0] dataIn;

output reg [31:0] dataOut;

always@(posedge clk)
begin

    if(wrt)
        data[address[15:0]] = dataIn[31:0];
        
    if(read)
        dataOut = data[address[15:0]];

end
endmodule
