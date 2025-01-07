`timescale 1ns / 1ps
/*

module control_unit(
    input logic [6:0]opcode,
    input logic func7,
    input logic [2:0]func3,
    output logic reg_write,
    output logic mem_write,
    output logic mem_to_reg,
    output logic [1:0]alu_op,
    output logic alu_src,
    output logic branch,
    output logic [3:0]alu_ctrl
    );
    */

module control_unit_tb;



logic [6:0]opcode;
logic func7;
logic [2:0]func3;
logic reg_write;
logic mem_write;
logic mem_to_reg;
logic [1:0]alu_op;
logic alu_src;
logic branch;
logic [3:0]alu_ctrl;



control_unit cu1(
    .opcode(opcode),
    .func7(func7),
    .func3(func3),
    .reg_write(reg_write),
    .mem_write(mem_write),
    .mem_to_reg(mem_to_reg),
    .alu_op(alu_op),
    .alu_src(alu_src),
    .branch(branch),
    .alu_ctrl(alu_ctrl)
    );
    
    
    initial begin
        opcode=7'b0000000;
        func7=1'b0;
        func3=3'b000;
        #20
        opcode=7'b0110011;
        func7=1'b0;
        func3=3'b111;
        #20
        opcode=7'b0110011;
        func7=1'b0;
        func3=3'b000;
        #20
        opcode=7'b0110011;
        #20
        opcode=7'b0010011;
        #20
        opcode=7'b0000011;
        #20
        opcode=7'b0100011;
        #20
        opcode=7'b1100011;
        #20

        $finish;
    end
endmodule
