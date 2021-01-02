module counter #(
  parameter SZIE = 8
)(
  input            clk,  
  input            rst,
  output reg [SZIE-1:0] count = 0
);

always @ (posedge clk) begin
  if (rst) begin
    count <= 'b0;
  end
  else begin
    count <= count + 1'b1;
  end
end

endmodule