module insMem( clk,RD_Address,data_out );
input clk;
input wire [63:0] RD_Address;
output reg[31:0] data_out ;
reg [31:0]mem[1023:0];


always@(posedge clk)
  begin
   data_out =mem[RD_Address];
  end

endmodule