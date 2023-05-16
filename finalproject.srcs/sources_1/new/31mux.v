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
// Final Project 3:1 Mux

module threeToOne(A,negA,sel,out);

wire sel0Neg;
wire sel1Neg;
wire [31:0] and1;
wire [31:0] and2;
wire [31:0] and3;

input [31:0] A;
input [31:0] negA;
input [1:0] sel;
output [31:0] out;

not(sel0Neg, sel[0]);
not(sel1Neg, sel[1]);

and(and1[0], A[0], sel1Neg, sel0Neg);
and(and2[0], 0, sel1Neg, sel[0]);
and(and3[0], negA[0], sel[1], sel0Neg);

and(and1[1], A[1], sel1Neg, sel0Neg);
and(and2[1], 0, sel1Neg, sel[0]);
and(and3[1], negA[1], sel[1], sel0Neg);

and(and1[2], A[2], sel1Neg, sel0Neg);
and(and2[2], 0, sel1Neg, sel[0]);
and(and3[2], negA[2], sel[1], sel0Neg);

and(and1[3], A[3], sel1Neg, sel0Neg);
and(and2[3], 0, sel1Neg, sel[0]);
and(and3[3], negA[3], sel[1], sel0Neg);

and(and1[4], A[4], sel1Neg, sel0Neg);
and(and2[4], 0, sel1Neg, sel[0]);
and(and3[4], negA[4], sel[1], sel0Neg);

and(and1[5], A[5], sel1Neg, sel0Neg);
and(and2[5], 0, sel1Neg, sel[0]);
and(and3[5], negA[5], sel[1], sel0Neg);

and(and1[6], A[6], sel1Neg, sel0Neg);
and(and2[6], 0, sel1Neg, sel[0]);
and(and3[6], negA[6], sel[1], sel0Neg);

and(and1[7], A[7], sel1Neg, sel0Neg);
and(and2[7], 0, sel1Neg, sel[0]);
and(and3[7], negA[7], sel[1], sel0Neg);

and(and1[8], A[8], sel1Neg, sel0Neg);
and(and2[8], 0, sel1Neg, sel[0]);
and(and3[8], negA[8], sel[1], sel0Neg);

and(and1[9], A[9], sel1Neg, sel0Neg);
and(and2[9], 0, sel1Neg, sel[0]);
and(and3[9], negA[9], sel[1], sel0Neg);

and(and1[10], A[10], sel1Neg, sel0Neg);
and(and2[10], 0, sel1Neg, sel[0]);
and(and3[10], negA[10], sel[1], sel0Neg);

and(and1[11], A[11], sel1Neg, sel0Neg);
and(and2[11], 0, sel1Neg, sel[0]);
and(and3[11], negA[11], sel[1], sel0Neg);

and(and1[12], A[12], sel1Neg, sel0Neg);
and(and2[12], 0, sel1Neg, sel[0]);
and(and3[12], negA[12], sel[1], sel0Neg);

and(and1[13], A[13], sel1Neg, sel0Neg);
and(and2[13], 0, sel1Neg, sel[0]);
and(and3[13], negA[13], sel[1], sel0Neg);

and(and1[14], A[14], sel1Neg, sel0Neg);
and(and2[14], 0, sel1Neg, sel[0]);
and(and3[14], negA[14], sel[1], sel0Neg);

and(and1[15], A[15], sel1Neg, sel0Neg);
and(and2[15], 0, sel1Neg, sel[0]);
and(and3[15], negA[15], sel[1], sel0Neg);

and(and1[16], A[16], sel1Neg, sel0Neg);
and(and2[16], 0, sel1Neg, sel[0]);
and(and3[16], negA[16], sel[1], sel0Neg);

and(and1[17], A[17], sel1Neg, sel0Neg);
and(and2[17], 0, sel1Neg, sel[0]);
and(and3[17], negA[17], sel[1], sel0Neg);

and(and1[18], A[18], sel1Neg, sel0Neg);
and(and2[18], 0, sel1Neg, sel[0]);
and(and3[18], negA[18], sel[1], sel0Neg);

and(and1[19], A[19], sel1Neg, sel0Neg);
and(and2[19], 0, sel1Neg, sel[0]);
and(and3[19], negA[19], sel[1], sel0Neg);

and(and1[20], A[20], sel1Neg, sel0Neg);
and(and2[20], 0, sel1Neg, sel[0]);
and(and3[20], negA[20], sel[1], sel0Neg);

and(and1[21], A[21], sel1Neg, sel0Neg);
and(and2[21], 0, sel1Neg, sel[0]);
and(and3[21], negA[21], sel[1], sel0Neg);

and(and1[22], A[22], sel1Neg, sel0Neg);
and(and2[22], 0, sel1Neg, sel[0]);
and(and3[22], negA[22], sel[1], sel0Neg);

and(and1[23], A[23], sel1Neg, sel0Neg);
and(and2[23], 0, sel1Neg, sel[0]);
and(and3[23], negA[23], sel[1], sel0Neg);

and(and1[24], A[24], sel1Neg, sel0Neg);
and(and2[24], 0, sel1Neg, sel[0]);
and(and3[24], negA[24], sel[1], sel0Neg);

and(and1[25], A[25], sel1Neg, sel0Neg);
and(and2[25], 0, sel1Neg, sel[0]);
and(and3[25], negA[25], sel[1], sel0Neg);

and(and1[26], A[26], sel1Neg, sel0Neg);
and(and2[26], 0, sel1Neg, sel[0]);
and(and3[26], negA[26], sel[1], sel0Neg);

and(and1[27], A[27], sel1Neg, sel0Neg);
and(and2[27], 0, sel1Neg, sel[0]);
and(and3[27], negA[27], sel[1], sel0Neg);

and(and1[28], A[28], sel1Neg, sel0Neg);
and(and2[28], 0, sel1Neg, sel[0]);
and(and3[28], negA[28], sel[1], sel0Neg);

and(and1[29], A[29], sel1Neg, sel0Neg);
and(and2[29], 0, sel1Neg, sel[0]);
and(and3[29], negA[29], sel[1], sel0Neg);

and(and1[30], A[30], sel1Neg, sel0Neg);
and(and2[30], 0, sel1Neg, sel[0]);
and(and3[30], negA[30], sel[1], sel0Neg);

and(and1[31], A[31], sel1Neg, sel0Neg);
and(and2[31], 0, sel1Neg, sel[0]);
and(and3[31], negA[31], sel[1], sel0Neg);

or(out[0], and1[0], and2[0], and3[0]);
or(out[1], and1[1], and2[1], and3[1]);
or(out[2], and1[2], and2[2], and3[2]);
or(out[3], and1[3], and2[3], and3[3]);
or(out[4], and1[4], and2[4], and3[4]);
or(out[5], and1[5], and2[5], and3[5]);
or(out[6], and1[6], and2[6], and3[6]);
or(out[7], and1[7], and2[7], and3[7]);
or(out[8], and1[8], and2[8], and3[8]);
or(out[9], and1[9], and2[9], and3[9]);
or(out[10], and1[10], and2[10], and3[10]);
or(out[11], and1[11], and2[11], and3[11]);
or(out[12], and1[12], and2[12], and3[12]);
or(out[13], and1[13], and2[13], and3[13]);
or(out[14], and1[14], and2[14], and3[14]);
or(out[15], and1[15], and2[15], and3[15]);
or(out[16], and1[16], and2[16], and3[16]);
or(out[17], and1[17], and2[17], and3[17]);
or(out[18], and1[18], and2[18], and3[18]);
or(out[19], and1[19], and2[19], and3[19]);
or(out[20], and1[20], and2[20], and3[20]);
or(out[21], and1[21], and2[21], and3[21]);
or(out[22], and1[22], and2[22], and3[22]);
or(out[23], and1[23], and2[23], and3[23]);
or(out[24], and1[24], and2[24], and3[24]);
or(out[25], and1[25], and2[25], and3[25]);
or(out[26], and1[26], and2[26], and3[26]);
or(out[27], and1[27], and2[27], and3[27]);
or(out[28], and1[28], and2[28], and3[28]);
or(out[29], and1[29], and2[29], and3[29]);
or(out[30], and1[30], and2[30], and3[30]);
or(out[31], and1[31], and2[31], and3[31]);

endmodule
