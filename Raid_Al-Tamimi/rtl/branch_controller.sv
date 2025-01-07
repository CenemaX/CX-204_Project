`timescale 1ns / 1ps

module branch_controller(
    input logic zero,
    input logic branch,
    input logic [2:0]func3,
    output logic pc_sel
    );
    
    
    
    always@(*)begin
        if(branch)begin
            case(func3)
                3'b000  :   pc_sel= zero==1'b1    ?   1:0;   
                3'b001  :   pc_sel= zero==1'b0    ?   1:0;
                3'b100  :   pc_sel= zero==1'b0    ?   1:0;
                3'b101  :   pc_sel= zero==1'b1    ?   1:0;
                3'b110  :   pc_sel= zero==1'b0    ?   1:0;
                3'b111  :   pc_sel= zero==1'b1    ?   1:0;
                default :   pc_sel=1'b0;
            endcase
        end
        
        else 
            pc_sel=1'b0;
    end
endmodule
