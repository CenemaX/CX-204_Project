`timescale 1ns / 1ps

module imm_gen_tb;

  parameter n = 32;

  logic [n-1:0] inst;
  logic [n-1:0] imm;

  imm_gen #(n) uut (
    .inst(inst),
    .imm(imm)
  );

  initial begin
    inst = 32'b01100010001000010001100010010011; 
    #10;

    inst = 32'b1100100010110101001010110010011; 
    #10;

    inst = 32'b11000101000000000100000001100011; 
    #10;

    inst = 32'b00000000000000010000000000101111; 
    #10;

    inst = 32'b00000000000000010000000011011111; 
    #10;

    $finish;
  end

endmodule
