`timescale 1ns / 1ps

module data_path_tb;

logic  clk;
logic  reset_n;
logic  branch;
logic reg_write;
logic alu_src;
logic [3:0]alu_ctrl;
logic mem_write;
logic MemToReg;


data_path #(32) uut (
    .clk(clk),
    .reset_n(reset_n),
    .branch(branch),
    .reg_write(reg_write),
    .alu_src(alu_src),
    .alu_ctrl(alu_ctrl),
    .mem_write(mem_write),
    .MemToReg(MemToReg)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset_n = 0;
    branch = 0;
    reg_write = 0;
    alu_src = 0;
    alu_ctrl = 0;
    mem_write = 0;
    MemToReg = 0;
    
    #100
    reg_write = 1'b1;
    alu_src = 1'b1;
    mem_write = 1'b0;
     alu_ctrl = 4'b0000;
     MemToReg = 1'b0;
     branch = 1'b0;
    reset_n = 1'b1;
    
    
   
   
    
    
      #10
    reg_write = 1'b1;
    alu_src = 1'b1;
    mem_write = 1'b0;
     alu_ctrl = 4'b0000;
     MemToReg = 1'b0;
     branch = 1'b0;
    reset_n = 1'b1;
    
      #100
   reg_write = 1'b1;
    alu_src = 1'b0;
    mem_write = 1'b0;
     alu_ctrl = 4'b0000;
     MemToReg = 1'b0;
     branch = 1'b0;
    reset_n = 1'b1;;


    #100
    $finish;
end

endmodule


    

