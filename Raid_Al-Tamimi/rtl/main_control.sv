`timescale 1ns / 1ps


module main_control(
    input   logic   [6:0]opcode,
    output  logic   branch,
    output  logic   mem_write,
    output  logic   mem_to_reg,
    output  logic   alu_src,
    output  logic   [1:0]alu_op,
    output  logic   reg_write
    );
    
    
    always@(*)begin
        case(opcode)
            7'b0110011  : begin
                branch=0;
                mem_write=0;
                mem_to_reg=0;
                alu_src=0;
                alu_op=2'b10;
                reg_write=1;                                                                                                                                                      
            end
            
            7'b0010011  : begin
                branch=0;
                mem_write=0;
                mem_to_reg=0;
                alu_src=1;
                alu_op=2'b11;
                reg_write=1;                                                                                                                                                      
            end
            
            7'b0000011  : begin
                branch=0;
                mem_write=0;
                mem_to_reg=1;
                alu_src=1;
                alu_op=2'b00;
                reg_write=1;                                                                                                                                                      
            end
            
            7'b0100011: begin
                branch=0;
                mem_write=1;
                mem_to_reg=1;
                alu_src=1;
                alu_op=2'b00;
                reg_write=0;                                                                                                                                                      
            end
            
            7'b1100011  : begin
                branch=1;
                mem_write=0;
                mem_to_reg=0;
                alu_src=0;
                alu_op=2'b01;
                reg_write=0;                                                                                                                                                      
            end
            
            default     : begin
                branch=0;
                mem_write=0;
                mem_to_reg=0;
                alu_src=0;
                alu_op=2'b00;
                reg_write=0; 
             end
        endcase
    end
endmodule
