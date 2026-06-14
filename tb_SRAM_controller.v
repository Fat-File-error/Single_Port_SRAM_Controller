// Code your testbench here
// or browse Examples
module SRAM_controller_tb;
  reg clk;
  reg rst;
  
  reg rd_req;
  reg wr_req;
  
  reg [7:0] addr;
  reg [7:0] wdata;
  
  wire [7:0] rdata;
  
  wire ready;
  wire busy;
  wire error;
  
  SRAM_controller dut(
    .clk(clk),
    .rst(rst),
    .rd_req(rd_req),
    .wr_req(wr_req),
    .addr(addr),
    .wdata(wdata),
    .rdata(rdata),
    .ready(ready),
    .busy(busy),
    .error(error)
  );
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    
    rd_req = 0;
    wr_req = 0;
    
    addr = 0;
    wdata = 0;
    
    #10
    rst = 0;
    
    addr = 8'd10 ;
    wdata = 8'hAA ;
    
    #10;
    wr_req = 1 ;
    
    #20;
    addr = 8'd10 ;
    rd_req = 1;
    
    #10;
    rd_req = 0;