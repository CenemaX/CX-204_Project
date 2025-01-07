`timescale 1ns / 1ps



module data_path #(parameter n=32)(
input logic clk,
input logic reset_n,
input logic branch,
input logic reg_write,
input logic alu_src,
input logic [3:0]alu_ctrl,
input logic mem_write,
input logic MemToReg,
output logic [6:0]opcode,
output logic func7,
output logic [2:0]func3
  );
    
    
logic [n-1:0] next_pc,current_pc;
logic [n-1:0] pc_plus_4,pc_jump;
logic [n-1:0] imm;//output of the imm_gen
logic [n-1:0]inst; //instruction output
logic [n-1:0]reg_wdata; // output
logic [n-1:0]reg_rdata1,reg_rdata2;//out_reg_file
logic pc_sel;//control the mux 
logic [n-1:0] alu_op2;//output of mux 
logic zero;//for branch
logic [n-1:0]alu_result;//output alu
logic [n-1:0]mem_rdata;//output of data mem

  assign opcode=inst[6:0];
  assign func7=inst[29];
  assign func3=inst[14:12]; 
  
program_counter #(32) pc(.clk(clk),.reset_n(reset_n),.pc_en(1'b1),.data_in(next_pc),.data_out(current_pc)) ;  

    assign pc_plus_4=current_pc+4;

    assign pc_jump=current_pc+imm; 
    
    assign next_pc=pc_sel ? pc_jump:pc_plus_4;
    
inst_mem ins(.address(current_pc),.instruction(inst));

reg_file reg_file1(.clk(clk),.reset_n(reset_n),.reg_write(reg_write),.raddr1(inst[19:15]),.raddr2(inst[24:20]),.waddr(inst[11:7]),.wdata(reg_wdata),.rdata1(reg_rdata1),.rdata2(reg_rdata2)) ;
  
    assign alu_op2=alu_src ? imm : reg_rdata2;
     
imm_gen imm1 (.inst(inst),.imm(imm));   
   
alu alu1(.op1(reg_rdata1),.op2(alu_op2),.alu_ctrl(alu_ctrl),.alu_result(alu_result),.zero(zero));

    assign pc_sel=branch&zero;
    
data_mem data_mem1(.clk(clk),.reset_n(reset_n),.mem_write(mem_write),.addr(alu_result),.wdata(reg_rdata2),.rdata(mem_rdata)) ;

    assign reg_wdata=MemToReg ? mem_rdata : alu_result; 
    
      
 
endmodule
