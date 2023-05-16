//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Will Maddrey
// 
// Create Date: 10/01/2019 02:22:41 PM
// Design Name: Lab 1 Mux Testbench
// Module Name: mux_tb
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
 // Final Project ALU Testbench
module mux_tb();
    
// regs can store data
reg [31:0] A;
reg [31:0] B;
reg add, neg, sub;

// can't store data, connects modules
wire Z, N; 
wire [31:0] out;

// and_gate object
ALU test(A,B,add, neg, sub, out, Z, N);


// 'initial' means just to do it once (unlike 'always')
initial
begin
    // Out should be 8
    A = 3;
    B = 8;
    add = 1;
    neg = 0;
    sub = 0;
    
    #50; // wait 50 nanoseconds to see the change!
    
    // Out should be -8
    add = 0;
    neg = 1;
    sub = 0;
    
    #50; // wait 50 nanoseconds to see the change
    
    // Out should be 5
    add = 0;
    neg = 0;
    sub = 1;
    
    #50; // wait 50 nanoseconds to see the change
    
    // Out should be 3 
    add = 1;
    neg = 1;
    sub = 1;
    
    #50; // wait 50 nanoseconds to see the change
    
    // Out should be 0 (check zero flag)
    A = 2;
    B = 2;
    add = 0;
    neg = 0;
    sub = 1;
    
    #50; // wait 50 nanoseconds to see the change
    $finish;
end
endmodule


/*
module mux_tb();
    
// regs can store data
reg [31:0] A;
reg [31:0] negA;
reg [1:0] sel;

// can't store data, connects modules
wire [31:0] out;

// and_gate object
threeToOne test(A,negA,sel,out);


// 'initial' means just to do it once (unlike 'always')
initial
begin
    // Out should be 3
    A = 10;
    negA = 15;
    sel[0] = 0;
    sel[1] = 0;
    
    #50; // wait 50 nanoseconds to see the change!
    
    // Out should be 3
    A = 10;
    negA = 15;
    sel[0] = 1;
    sel[1] = 0;
    
    #50; // wait 50 nanoseconds to see the change
    
    // Out should be 3
    A = 10;
    negA = 15;
    sel[0] = 0;
    sel[1] = 1;
    
    #50; // wait 50 nanoseconds to see the change
    
    $finish;
end
endmodule
*/
