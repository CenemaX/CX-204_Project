`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2024 04:49:42 AM
// Design Name: 
// Module Name: inst_mem_tb
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


module inst_mem_tb;


    logic [31:0]address;
    logic [31:0]instruction;


    inst_mem mem(.address(address),.instruction(instruction));
    
    
    initial begin
    address=32'b00000000000000000000000000000000;
    #100
    address=32'b00000000000000000000000000000100;
    #100
    address=32'b00000000000000000000000000001000;
    #100;
    
    
    
    end
endmodule
