`timescale 1ns / 1ps



module inst_mem(
    input logic [31:0]address,
    output logic [31:0]instruction
    );
    
    logic [31:0]memory[0:255];
    
    
    initial $readmemb("/home/it/machine.bin",memory);
    
    assign instruction=memory[address[31:2]];
    
endmodule



