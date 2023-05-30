`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 03:28:02 PM
// Design Name: 
// Module Name: IDEXMEM
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


module IF_EXMEM(clk, rsOutIn, rsOutOut, rtOutIn, rtOutOut, immIn, immOut, BrNIn, BrNOut, BrZIn, BrZOut, JumpIn, JumpOut, ALUOpIn, ALUOpOut, MemToRegIn, MemToRegOut, PCToRegIn, PCToRegOut, MemReadIn, MemReadOut, MemWriteIn, MemWriteOut);

input clk;
input [31:0] rsOutIn;
input [31:0] rtOutIn;
input [31:0] immIn;
input BrNIn, BrZIn, JumpIn, MemToRegIn, PCToRegIn, MemReadIn, MemWriteIn;
input [1:0] ALUOpIn;


output reg [31:0] rsOutOut;
output reg [31:0] rtOutOut;
output reg [31:0] immOut;
output reg BrNOut, BrZOut, JumpOut, MemToRegOut, PCToRegOut, MemReadOut, MemWriteOut;
output reg [1:0] ALUOpOut;

always@(posedge clk)
begin
    rsOutOut = rsOutIn;
    rtOutOut = rtOutIn;
    immOut = immIn;
    BrNOut = BrNIn;
    BrZOut = BrZIn;
    JumpOut = JumpIn;
    MemToRegOut = MemToRegIn;
    PCToRegOut = PCToRegIn;
    MemReadOut = MemReadIn;
    MemWriteOut = MemWriteIn;
    ALUOpOut = ALUOpIn;
end

endmodule
