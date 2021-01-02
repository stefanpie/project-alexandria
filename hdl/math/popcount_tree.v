// TODO: Pad inputs for inputs that don't match powers of 2 and test optimzation away of exta bits at different adder levels

module popcount_tree #(
    parameter integer IN_SIZE = 16,

    parameter LEVELS = $clog2(IN_SIZE),
    parameter OUT_SIZE = LEVELS+1
)(
    input  wire [IN_SIZE-1:0]  A,
    output wire [OUT_SIZE-1:0] count
);

wire [OUT_SIZE-1:0] wire_set_buffer [0:IN_SIZE-1] [0:IN_SIZE-1];
assign count = wire_set_buffer[LEVELS][0];

genvar i;
generate
for (i=0; i<IN_SIZE; i=i+1)
begin
    assign wire_set_buffer[0][i] = A[i];
end
endgenerate

genvar level;
genvar adder_num;
generate
for (level=0; level<LEVELS; level=level+1)
begin
    for(adder_num=0; adder_num < 2**(LEVELS-level-1); adder_num = adder_num + 1)
    begin
        add #(
            .IN_SIZE(LEVELS+1),
            .OUT_SIZE(LEVELS+1)
            ) pair_add (
            .a(wire_set_buffer[level][adder_num*2]),
            .b(wire_set_buffer[level][adder_num*2+1]),
            .c(wire_set_buffer[level+1][adder_num])
            );
    end
    
end

endgenerate


endmodule