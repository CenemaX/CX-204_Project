`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2024 02:49:14 AM
// Design Name: 
// Module Name: alu_control_tb
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
/*
module alu_control(
    input logic func7,
    input logic [2:0]func3,
    input logic [1:0]alu_op,
    output logic [3:0]alu_ctrl 
    );
    */

module alu_control_tb;

    logic func7;
    logic [2:0]func3;
    logic [1:0]alu_op;
    logic [3:0]alu_ctrl;
    
    
    alu_control alc1(
        .func7(func7),
        .func3(func3),
        .alu_op(alu_op),
        .alu_ctrl(alu_ctrl)
    );
    
    
    
    
    initial begin
        func7=1'b0;
        func3=3'b000;
        alu_op=2'b00;
        #10
        func7=1'b0;
        func3=3'b000;
        alu_op=2'b10;
        #10
        func7=1'b0;
        func3=3'b111;
        alu_op=2'b10;
        #10
        func7=1'b0;
        func3=3'b101;
        alu_op=2'b10;
        #10
        func7=1'b0;
        func3=3'b100;
        alu_op=2'b10;
        #10
        func7=1'b0;
        func3=3'b010;
        alu_op=2'b10;
        #10
        func7=1'b0;
        func3=3'b101;
        alu_op=2'b01;
        #10
        func7=1'b0;
        func3=3'b101;
        alu_op=2'b00;
        #10
        func7=1'b1;
        func3=3'b111;
        alu_op=2'b00;
        #10;
        $finish;
    end
endmodule
