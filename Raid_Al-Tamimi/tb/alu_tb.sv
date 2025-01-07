`timescale 1ns / 1ps

/*
module alu(
    input logic [31:0]op1,
    input logic [31:0]op2,
    input logic [3:0]alu_ctrl,
    output logic [31:0]alu_result,
    output logic zero
    );
    
    logic [31:0]uop1 = $unsigned(op1);
    logic [31:0]uop2 = $unsigned(op2);
    
    always@(*)begin
        case (alu_ctrl)
            0   :   alu_result<=op1+op2;
            8   :   alu_result<=op1-op2;
            4   :   alu_result<=op1^op2;
            6   :   alu_result<=op1|op2;
            7   :   alu_result<=op1&op2;
            1   :   alu_result<=op1<<op2;
            5   :   alu_result<=op1>>op2;
            13  :   alu_result<=op1>>>op2;
            2   :   alu_result<= (op1<op2)      ? 1 : 0;
            3   :   alu_result<= (uop1<uop2)    ? 1 : 0;
        endcase
    end 
                
endmodule
*/

module alu_tb;

logic [31:0]op1;
logic [31:0]op2;
logic [3:0]alu_ctrl;
logic [31:0]alu_result;
logic zero;


alu alu1(.op1(op1),.op2(op2),.alu_ctrl(alu_ctrl),.alu_result(alu_result),.zero(zero));

initial begin
    
    op1=32'b00000000000000000000000000000000;
    op2=32'b00000000000000000000000000000000;
    alu_ctrl=4'd0;
    #10
    op1=32'b00000000000000000000000000000111;
    op2=32'b00000000000000000000000000001000;
    alu_ctrl=4'd0;
    #10
    op1=32'b11111111111111111111111111111111;
    op2=32'b11111111111111111111111111111111;
    alu_ctrl=4'd8;
    #10
    op1=32'b10101010101010101010101010101111;
    op2=32'b01010101010101010101010101011111;
    alu_ctrl=4'd4;
    #10
    op1=32'b10101010101010101010101010101111;
    op2=32'b01010101010101010101010101010000;
    alu_ctrl=4'd6;
    #10
    op1=32'b11111111111111111111111111111111;
    op2=32'b10101010101010101010101101010101;
    alu_ctrl=4'd7;
    #10
    op1=32'b00000000000000000000000000000011;
    op2=32'b00000000000000000000000000000100;
    alu_ctrl=4'd1;
    #10
    op1=32'b01100000000000000000000000000000;
    op2=32'b00000000000000000000000000000100;
    alu_ctrl=4'd5;
    #10
    op1=32'b11111111111111111111111111111111;
    op2=32'b00000000000000000000000000001000;
    alu_ctrl=4'd13;
    #10
    op1=32'b00000000000000000000000000000011;
    op2=32'b00000000000000000000000000000100;
    alu_ctrl=4'd2;
    #10;
    op1=32'b11111111111111111111111111111111;
    op2=32'b00000000000000000000000000000000;
    alu_ctrl=4'd3;
    #10;
    end
endmodule
