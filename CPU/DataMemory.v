module data_memory (
input wire [63:0] addr,          
input wire [63:0] write_data,    
input wire memwrite, memread,
input wire clk,                  
output reg [63:0] read_data      
);

reg [63:0] MEMO[0:255]; 



always @(posedge clk) begin
  if (memwrite == 1'b1) begin
    MEMO[addr] <= write_data;
  end

  if (memread == 1'b1) begin
    read_data <= MEMO[addr];
  end
end

endmodule
