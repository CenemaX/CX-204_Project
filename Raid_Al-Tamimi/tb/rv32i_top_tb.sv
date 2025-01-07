`timescale 1ns / 1ps

module rv32i_top_tb;

logic  clk;
logic  reset_n;


rv32i_top dut (
    .clk(clk),
    .reset_n(reset_n)

);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset_n = 0;#10
    reset_n=1;
    
    #50

    $finish;
end

endmodule