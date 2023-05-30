module program_counter(pc_in, pc_out, clk);
    input [31:0] pc_in;
    input clk;
    output reg [31:0] pc_out;
    
    initial
    begin
        pc_out = 0;
    end
    
    always@(negedge clk)
    begin
        if(pc_in)
            pc_out = pc_in;
    end
endmodule
