`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2024 06:16:36 AM
// Design Name: 
// Module Name: alu_control
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


module alu_control(
    input logic func7,
    input logic [2:0]func3,
    input logic [1:0]alu_op,
    output logic [3:0]alu_ctrl 
    );
    
    
    
    always@(*)begin
        case(alu_op)
            0   :begin
            alu_ctrl=4'b0000;           
            end                        
            1   :begin
                case({func7,func3[2],func3[1],func3[0]})
                4'b0000: alu_ctrl=4'b0000;                
                endcase
            end            
            2   :begin
            alu_ctrl[3]=func7;
            alu_ctrl[2]=func3[2];
            alu_ctrl[1]=func3[1];
            alu_ctrl[0]=func3[0];               
            end
            
            3   :begin
            
            end
            default:
            alu_ctrl=4'b0000;
        endcase
    end
endmodule
