`timescale 1ns / 1ps

/*
module main_control(
    input   logic   [31:0]instruction,
    output  logic   branch,
    output  logic   mem_write,
    output  logic   mem_to_reg,
    output  logic   alu_src,
    output  logic   [1:0]alu_op,
    output  logic   reg_write
    );
    */
    
module main_control_tb;

logic   [6:0]opcode;
logic   branch;
logic   mem_write;
logic   mem_to_reg;
logic   alu_src;
logic   [1:0]alu_op;
logic   reg_write;

main_control mc1(
    .opcode(opcode),
    .branch(branch),
    .mem_write(mem_write),
    .mem_to_reg(mem_to_reg),
    .alu_src(alu_src),
    .alu_op(alu_op),
    .reg_write(reg_write)
    );

    initial begin
        opcode=7'b0110011;
        #100
        opcode=7'b0010011;
        #100
        opcode=7'b0010011;
        #100
        opcode=7'b0000011;
        #100
        opcode=7'b0000011;
        #100
        opcode=7'b0100011;
        #100
        opcode=7'b0100011;
        #100
        opcode=7'b1100011;
        #100
        opcode=7'b1100011;
        #100;
    end
endmodule
