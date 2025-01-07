`timescale 1ns / 1ps



module rv32i_top(
input logic clk,
input logic reset_n
);


logic branch;
logic reg_write;
logic alu_src;
logic [3:0]alu_ctrl;
logic mem_write;
logic MemToReg;
logic [6:0]opcode;
logic [2:0]func3;
logic func7;

data_path dp1(.clk(clk),.reset_n(reset_n),.func7(func7),.func3(func3),.reg_write(reg_write),.mem_write(mem_write),.MemToReg(MemToReg),.alu_ctrl(alu_ctrl),.branch(branch),.alu_src(alu_src),.opcode(opcode));
control_unit control1(.func7(func7),.func3(func3),.reg_write(reg_write),.mem_write(mem_write),.mem_to_reg(MemToReg),.alu_ctrl(alu_ctrl),.branch(branch),.alu_src(alu_src),.opcode(opcode));



endmodule
