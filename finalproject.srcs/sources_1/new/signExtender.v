`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 03:43:29 PM
// Design Name: 
// Module Name: signExtender
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


module signExtender(dataIn, dataOut, opcode);

input [21:0] dataIn;
input [3:0] opcode;
output reg [31:0] dataOut;

always@(dataIn)
begin
    if (opcode==4'b1111)
    if (dataIn[21] == 1)
    begin 
        dataOut = {10'b1111111111, dataIn};
    end
    else
    begin 
        dataOut = {10'b0000000000, dataIn};
    end
    if (opcode==4'b0101) 
    if (dataIn[15] == 1)
    begin 
        dataOut = {16'b1111111111111111, dataIn};
    end
    else 
    begin
        dataOut = {16'b0000000000000000, dataIn};
    end
end  
endmodule
