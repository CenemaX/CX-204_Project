`timescale 1ns / 1ps



module program_counter #(parameter n=32)(
input logic clk,
input logic [n-1:0] data_in,
input logic reset_n,
input logic pc_en,
output logic [n-1:0]data_out
    );
    
    
    
always @(posedge clk,negedge reset_n)
begin 


        if(!reset_n)
            data_out<=0;
        else begin 
        if (pc_en)
            data_out<=data_in;    
      
       end     
end 

    
endmodule