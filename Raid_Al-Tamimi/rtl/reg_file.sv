`timescale 1ns / 1ps

module reg_file(
    input logic clk,
    input reset_n,
    input logic reg_write,
    input logic [4:0]raddr1,
    input logic [4:0]raddr2,
    input logic [4:0]waddr,
    input logic [31:0]wdata,
    output logic [31:0]rdata1,
    output logic [31:0]rdata2
    );
    
    
    logic [31:0]register[31:0];
    
    assign register[0]=32'h0000;
    
    
    
    
    always@(posedge clk,negedge reset_n)begin
        if(!reset_n)begin
            for(int i=0;i<32;i++) begin
                register[i]    <=4'h0000;
                end
            rdata1      <=0;
            rdata2      <=0; 
            
        end              
        else if(reg_write==1)begin
            register[waddr]<=wdata;  
            rdata1<=register[raddr1];
            rdata2<=register[raddr2];
        end
            else begin
            rdata1<=rdata1;
            rdata2<=rdata2;
            end
    end
            
endmodule
