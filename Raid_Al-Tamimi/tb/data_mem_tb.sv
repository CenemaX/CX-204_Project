`timescale 1ns / 1ps

module tb_data_mem;

  
  parameter n = 32;

  
  logic clk;
  logic reset_n;
  logic mem_write;
  logic [n-1:0] addr;
  logic [n-1:0] wdata;
  logic [n-1:0] rdata;

  
  data_mem #(n) dut (
    .clk(clk),
    .reset_n(reset_n),
    .mem_write(mem_write),
    .addr(addr),
    .wdata(wdata),
    .rdata(rdata)
  );

  
  always begin
    #5 clk = ~clk;  
  end

  
  initial begin
  
  clk = 0;
    reset_n = 0;
    mem_write = 0;
    addr = 0;
    wdata = 0;
    
  
  
    #10 reset_n = 1;  
    #10 reset_n = 0;  
    #10 reset_n = 1;  


    addr = 0;
    wdata = 32'h12345678;
    mem_write = 1;
    #10 mem_write = 0;  
    

    #10;


   
    addr = 4;
    wdata = 32'h87654321;
    mem_write = 1;
    #10 mem_write = 1;  
    
   
    #10;
   

 
    addr = 8;
    wdata = 32'hDEADBEEF;
    mem_write = 0;
    #10 mem_write = 0;  
    
    
      addr = 8;
    wdata = 32'h12121212;
    mem_write = 1;
   
    
    
      addr = 8;
    wdata = 32'hDE7D12EF;
    mem_write = 1;
    #10 mem_write = 1;
    
      addr = 8;
    wdata = 32'hDEAD23EF;
    mem_write = 1;
    #10 mem_write = 1;
    
      addr = 8;
    wdata = 32'hDEAB5432;
    mem_write = 1;
    
    
    
      addr = 8;
    wdata = 32'h3EADBE2F;
    mem_write = 1;
    
    
      addr = 8;
    wdata = 32'hDE33BEEF;
    mem_write = 1;
        


    $finish;
  end

endmodule
