module SRAM_controller(
  input clk,
  input rst,
  
  input rd_req,
  input wr_req,
  
  input [7:0] addr,
  input [7:0] wdata,
  
  output reg [7:0] rdata,
  
  output reg ready,
  output reg busy,
  output reg error
);
  
reg we;
reg re;

reg [7:0] addr_to_sram;
reg [7:0] wdata_to_sram;

wire [7:0] rdata_from_sram;     
  
  SRAM mem0(
    .clk(clk),
    .re(re),
    .we(we),
    .addr(addr_to_sram),
    .wdata(wdata_to_sram),
    .rdata(rdata_from_sram)
);