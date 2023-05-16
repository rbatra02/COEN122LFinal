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
module fullAdder(A, B, cout, sum);

input [31:0] A;
input [31:0] B;

output [31:0] sum;
output cout;

wire [30:0] carryWire;

oneBitAdder b0(A[0], B[0], 0, carryWire[0], sum[0]);
oneBitAdder b1(A[1], B[1], carryWire[0], carryWire[1], sum[1]);
oneBitAdder b2(A[2], B[2], carryWire[1], carryWire[2], sum[2]);
oneBitAdder b3(A[3], B[3], carryWire[2], carryWire[3], sum[3]); 
oneBitAdder b4(A[4], B[4], carryWire[3], carryWire[4], sum[4]);
oneBitAdder b5(A[5], B[5], carryWire[4], carryWire[5], sum[5]);
oneBitAdder b6(A[6], B[6], carryWire[5], carryWire[6], sum[6]);
oneBitAdder b7(A[7], B[7], carryWire[6], carryWire[7], sum[7]);
oneBitAdder b8(A[8], B[8], carryWire[7], carryWire[8], sum[8]);
oneBitAdder b9(A[9], B[9], carryWire[8], carryWire[9], sum[9]);
oneBitAdder b10(A[10], B[10], carryWire[9], carryWire[10], sum[10]);
oneBitAdder b11(A[11], B[11], carryWire[10], carryWire[11], sum[11]);
oneBitAdder b12(A[12], B[12], carryWire[11], carryWire[12], sum[12]);
oneBitAdder b13(A[13], B[13], carryWire[12], carryWire[13], sum[13]);
oneBitAdder b14(A[14], B[14], carryWire[13], carryWire[14], sum[14]);
oneBitAdder b15(A[15], B[15], carryWire[14], carryWire[15], sum[15]);
oneBitAdder b16(A[16], B[16], carryWire[15], carryWire[16], sum[16]);
oneBitAdder b17(A[17], B[17], carryWire[16], carryWire[17], sum[17]);
oneBitAdder b18(A[18], B[18], carryWire[17], carryWire[18], sum[18]);
oneBitAdder b19(A[19], B[19], carryWire[18], carryWire[19], sum[19]);
oneBitAdder b20(A[20], B[20], carryWire[19], carryWire[20], sum[20]);
oneBitAdder b21(A[21], B[21], carryWire[20], carryWire[21], sum[21]);
oneBitAdder b22(A[22], B[22], carryWire[21], carryWire[22], sum[22]);
oneBitAdder b23(A[23], B[23], carryWire[22], carryWire[23], sum[23]);
oneBitAdder b24(A[24], B[24], carryWire[23], carryWire[24], sum[24]);
oneBitAdder b25(A[25], B[25], carryWire[24], carryWire[25], sum[25]);
oneBitAdder b26(A[26], B[26], carryWire[25], carryWire[26], sum[26]);
oneBitAdder b27(A[27], B[27], carryWire[26], carryWire[27], sum[27]);
oneBitAdder b28(A[28], B[28], carryWire[27], carryWire[28], sum[28]);
oneBitAdder b29(A[29], B[29], carryWire[28], carryWire[29], sum[29]);
oneBitAdder b30(A[30], B[30], carryWire[29], carryWire[30], sum[30]);
oneBitAdder b31(A[31], B[31], carryWire[30], cout, sum[31]);


endmodule

