module single_port_sync_ram 
#(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 32,
    parameter DEPTH = 16
)(
    input clk,
    input [ADDR_WIDTH-1:0] addr, 
    inout [DATA_WIDTH-1:0] data,
    input cs,
    input we,
    input oe
);
    
endmodule