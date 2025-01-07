`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2024 07:39:00 AM
// Design Name: 
// Module Name: reg_file_tb
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
module reg_file(
    input logic clk,
    input logic reset_n,
    input logic reg_write,
    input logic [4:0]raddr1,
    input logic [4:0]raddr2,
    input logic [4:0]waddr,
    input logic [31:0]wdata,
    output logic [31:0]rdata1,
    output logic [31:0]rdata2
    );
    */

module reg_file_tb;



logic clk=0;
logic reset_n=0;
logic reg_write;
logic [4:0]raddr1;
logic [4:0]raddr2;
logic [4:0]waddr;
logic [31:0]wdata;
logic [31:0]rdata1;
logic [31:0]rdata2;

reg_file regFile1(
    .clk(clk),
    .reset_n(reset_n),
    .reg_write(reg_write),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .waddr(waddr),
    .wdata(wdata),
    .rdata1(rdata1),
    .rdata2(rdata2)
    );
    
    
    always #5 clk = !clk;
    
    initial begin
    #5
    reset_n=1;
    #15
    raddr1=5'b00000;
    raddr2=5'b00000;
    waddr=5'b00000;
    reg_write=0;
    wdata=32'h0000;
    #10
    raddr1=5'b00001;
    raddr2=5'b00010;
    waddr=5'b00111;
    reg_write=0;
    wdata=32'hddff;
    #10
    raddr1=5'b11001;
    raddr2=5'b00001;
    waddr=5'b00010;
    reg_write=1;
    wdata=32'h000f;
    #10
    raddr1=5'b00010;
    raddr2=5'b00010;
    waddr=5'b00000;
    reg_write=0;
    wdata=32'h0000;
    #10
    raddr1=5'b00000;
    raddr2=5'b00000;
    waddr=5'b11111;
    reg_write=1;
    wdata=32'hffff;
    #10
    raddr1=5'b11111;
    raddr2=5'b00000;
    waddr=5'b00000;
    reg_write=0;
    wdata=32'h0000;
    #10
    raddr1=5'b11111;
    raddr2=5'b00000;
    waddr=5'b00000;
    reg_write=0;
    wdata=32'h0000;
    #10
    raddr1=5'b11111;
    raddr2=5'b00000;
    waddr=5'b00000;
    reg_write=1;
    wdata=32'h0ccc;
    #10
    raddr1=5'b11111;
    raddr2=5'b00000;
    waddr=5'b00000;
    reg_write=0;
    wdata=32'h0000;
    #10
    raddr1=5'b11111;
    raddr2=5'b00000;
    waddr=5'b00000;
    reg_write=0;
    wdata=32'h0000;
    #10
    $finish;
    
    end
endmodule
