`timescale 1ns / 1ps



module imm_gen #(parameter n=32)(
input logic [n-1:0]inst,
output logic [n-1:0]imm
    );
      
always@(*)begin 


            if (inst[6:0]==7'b0010011)
            begin
                imm[0]=inst[20];
                imm[4:1]=inst[24:21];
                imm[10:5]=inst[30:25];
                imm[31]=inst[31];
                imm[30:11]={(20){inst[31]}};
            end    
            else if (inst[6:0]==7'b010011)
            begin
                imm[0]=inst[7];
                imm[4:1]=inst[11:8];
                imm[10:5]=inst[30:25];
                imm[31]=inst[31];
                imm[30:11]={(20){inst[31]}};
             end
             
             else if (inst[6:0]==7'b1100011)
                  begin
                imm[11]=inst[7];
                imm[4:1]=inst[11:8];
                imm[10:5]=inst[30:25];
                imm[30:12]={(19){inst[31]}};
                imm[31]=inst[31];
                imm[0]=inst[31];
             end
             
               else if (inst[6:0]==7'b0010111)
                  begin
              
                imm[19:12]=inst[19:12];
                imm[20]=inst[20];
                imm[30:21]=inst[30:21];
                imm[31]=inst[31];
                imm[11:0]={(12){inst[31]}};
             end
             
               else if (inst[6:0]==7'b1101111)
                  begin
                imm[11]=inst[20];
                imm[19:12]=inst[19:12];
                imm[4:1]=inst[24:21];
                imm[31]=inst[31];
                imm[10:5]=inst[30:25];
                imm[0]=inst[31];
               imm[30:20]={(11){inst[31]}};
             end
                     
end     
endmodule
