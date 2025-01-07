`timescale 1ns / 1ps

module program_counter_tb;


parameter n = 32;  


logic clk;
logic [n-1:0] data_in;
logic reset_n;
logic pc_en;
logic [n-1:0] data_out;


program_counter #(n) uut (
    .clk(clk),
    .data_in(data_in),
    .reset_n(reset_n),
    .pc_en(pc_en),
    .data_out(data_out)
);


always begin
    #5 clk = ~clk;  
end

initial begin
    
    clk = 0;
    reset_n = 0;
    data_in = 32'h00000000;
    pc_en = 0;
    
    
    #10 reset_n = 1;  

    
    #10 reset_n = 0;  
    #10 reset_n = 1;  

    
    #10 pc_en = 0;
    data_in = 32'h12345678;
    #10;
    
    #10 pc_en = 1;
    data_in = 32'h87654321;
    #10;
    
    data_in=31'h33439324;

    #20
     $finish;
end

endmodule
