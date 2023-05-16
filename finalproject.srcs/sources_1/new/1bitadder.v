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
module oneBitAdder(A, B, cin, cout, out);

wire abXOR, cout1, cout2;

input A, B, cin;
output out, cout;

xor(abXOR, A, B);

and(cout1,abXOR, cin);
and(cout2, A, B);

or(cout, cout1, cout2);

xor(out, cin, abXOR);

endmodule