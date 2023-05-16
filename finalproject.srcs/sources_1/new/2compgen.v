//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Will Maddrey
// 
// Create Date: 10/01/2019 02:22:41 PM
// Design Name: Lab 1 Mux
// Module Name: mux
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
// define mux21 variables
module twoComp(A,out);

wire [31:0] negativeA;
wire cout;

input [31:0] A;
output [31:0] out;

not(negativeA[0], A[0]);
not(negativeA[1], A[1]);
not(negativeA[2], A[2]);
not(negativeA[3], A[3]);
not(negativeA[4], A[4]);
not(negativeA[5], A[5]);
not(negativeA[6], A[6]);
not(negativeA[7], A[7]);
not(negativeA[8], A[8]);
not(negativeA[9], A[9]);
not(negativeA[10], A[10]);
not(negativeA[11], A[11]);
not(negativeA[12], A[12]);
not(negativeA[13], A[13]);
not(negativeA[14], A[14]);
not(negativeA[15], A[15]);
not(negativeA[16], A[16]);
not(negativeA[17], A[17]);
not(negativeA[18], A[18]);
not(negativeA[19], A[19]);
not(negativeA[20], A[20]);
not(negativeA[21], A[21]);
not(negativeA[22], A[22]);
not(negativeA[23], A[23]);
not(negativeA[24], A[24]);
not(negativeA[25], A[25]);
not(negativeA[26], A[26]);
not(negativeA[27], A[27]);
not(negativeA[28], A[28]);
not(negativeA[29], A[29]);
not(negativeA[30], A[30]);
not(negativeA[31], A[31]);

fullAdder addr1(negativeA,1,cout,out);

endmodule
