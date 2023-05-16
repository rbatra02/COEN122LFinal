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
// Final Project 2:1 Mux

module twoToOne(B,sel,out);

wire sel_not;
wire [31:0] and1;
wire [31:0] and2;

input sel; 
input [31:0] B;
output [31:0] out;

not(sel_not,sel);

and(and1[0],sel_not,B[0]);
and(and1[1],sel_not,B[1]);
and(and1[2],sel_not,B[2]);
and(and1[3],sel_not,B[3]);
and(and1[4],sel_not,B[4]);
and(and1[5],sel_not,B[5]);
and(and1[6],sel_not,B[6]);
and(and1[7],sel_not,B[7]);
and(and1[8],sel_not,B[8]);
and(and1[9],sel_not,B[9]);
and(and1[10],sel_not,B[10]);
and(and1[11],sel_not,B[11]);
and(and1[12],sel_not,B[12]);
and(and1[13],sel_not,B[13]);
and(and1[14],sel_not,B[14]);
and(and1[15],sel_not,B[15]);
and(and1[16],sel_not,B[16]);
and(and1[17],sel_not,B[17]);
and(and1[18],sel_not,B[18]);
and(and1[19],sel_not,B[19]);
and(and1[20],sel_not,B[20]);
and(and1[21],sel_not,B[21]);
and(and1[22],sel_not,B[22]);
and(and1[23],sel_not,B[23]);
and(and1[24],sel_not,B[24]);
and(and1[25],sel_not,B[25]);
and(and1[26],sel_not,B[26]);
and(and1[27],sel_not,B[27]);
and(and1[28],sel_not,B[28]);
and(and1[29],sel_not,B[29]);
and(and1[30],sel_not,B[30]);
and(and1[31],sel_not,B[31]);

and(and2[0],sel,0);
and(and2[1],sel,0);
and(and2[2],sel,0);
and(and2[3],sel,0);
and(and2[4],sel,0);
and(and2[5],sel,0);
and(and2[6],sel,0);
and(and2[7],sel,0);
and(and2[8],sel,0);
and(and2[9],sel,0);
and(and2[10],sel,0);
and(and2[11],sel,0);
and(and2[12],sel,0);
and(and2[13],sel,0);
and(and2[14],sel,0);
and(and2[15],sel,0);
and(and2[16],sel,0);
and(and2[17],sel,0);
and(and2[18],sel,0);
and(and2[19],sel,0);
and(and2[20],sel,0);
and(and2[21],sel,0);
and(and2[22],sel,0);
and(and2[23],sel,0);
and(and2[24],sel,0);
and(and2[25],sel,0);
and(and2[26],sel,0);
and(and2[27],sel,0);
and(and2[28],sel,0);
and(and2[29],sel,0);
and(and2[30],sel,0);
and(and2[31],sel,0);

or(out[0],and1[0],and2[0]);
or(out[1],and1[1],and2[1]);
or(out[2],and1[2],and2[2]);
or(out[3],and1[3],and2[3]);
or(out[4],and1[4],and2[4]);
or(out[5],and1[5],and2[5]);
or(out[6],and1[6],and2[6]);
or(out[7],and1[7],and2[7]);
or(out[8],and1[8],and2[8]);
or(out[9],and1[9],and2[9]);
or(out[10],and1[10],and2[10]);
or(out[11],and1[11],and2[11]);
or(out[12],and1[12],and2[12]);
or(out[13],and1[13],and2[13]);
or(out[14],and1[14],and2[14]);
or(out[15],and1[15],and2[15]);
or(out[16],and1[16],and2[16]);
or(out[17],and1[17],and2[17]);
or(out[18],and1[18],and2[18]);
or(out[19],and1[19],and2[19]);
or(out[20],and1[20],and2[20]);
or(out[21],and1[21],and2[21]);
or(out[22],and1[22],and2[22]);
or(out[23],and1[23],and2[23]);
or(out[24],and1[24],and2[24]);
or(out[25],and1[25],and2[25]);
or(out[26],and1[26],and2[26]);
or(out[27],and1[27],and2[27]);
or(out[28],and1[28],and2[28]);
or(out[29],and1[29],and2[29]);
or(out[30],and1[30],and2[30]);
or(out[31],and1[31],and2[31]);

endmodule