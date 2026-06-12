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
parameter IDLE  = 2'b00;
    parameter READ  = 2'b01;
    parameter WRITE = 2'b10;
    parameter DONE  = 2'b11;

    reg [1:0] state;
    reg [1:0] next_state;
  
  	always @(posedge clk or posedge rst) begin
    if (rst)
        state <= IDLE;
    else
        state <= next_state;
	end
  
  always @(*) begin
    case(state)
      
      IDLE : 
        begin
          if(wr_req)
            next_state = WRITE ; 
          
          else if(rd_req)
            next_state = READ ;
          
          else
            next_state = IDLE ;
        end
      
      READ :
       	next_state = DONE;
      
      WRITE :
        next_state = DONE;
      
      DONE:
        next_state = IDLE;
      
      default:
        next_state = IDLE;
    endcase
          
  end

   always @(*)  begin
    we = 0 ;
    re = 0;
    
    ready = 0;
    error = 0;
    busy = 0; 
    
    addr_to_sram = 0;
    wdata_to_sram = 0;
    
    case (state)
      default: begin
    		error = 1'b1;
			end
      
      IDLE : begin
      end
      
      READ :
        begin
          re = 1;
          busy = 1;
          addr_to_sram = addr;
        end
      
      WRITE :
        begin
          we = 1;
          busy = 1;
          wdata_to_sram = wdata;
          addr_to_sram = addr;
        end
    
      DONE:
        begin
          ready = 1;
          rdata = rdata_from_sram ;
        end
    endcase
    endmodule