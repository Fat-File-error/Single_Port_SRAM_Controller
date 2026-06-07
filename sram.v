    module SRAM(
    input clk,
    input re,
    input we,
    input [7:0] addr,
    input [7:0] wdata,
    
    output reg [7:0]rdata
  )
    reg [7:0] mem [0:255];
    
    always @(posedge clk) begin
      if (we)
        mem[addr] <= wdata ;
    
      else if (re)
        rdata <= mem[addr];
        
    end
 endmodule
        
        