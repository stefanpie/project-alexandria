/*
This is an adder module with parameterizable input and output sizes.
The design included overflow detection based on the output size.

If you handle the input and output size yourself to
avoid overflow (you can do this by ensuring that  OUT_SIZE >= IN_SIZE+1),
then you don't have to connect the overflow output to anything, and those dangling wires
can be optimized away by your tools.
*/

module add #(
	parameter IN_SIZE = 8,
	parameter OUT_SIZE = 8
)(
    input  wire [IN_SIZE-1:0]  a,
    input  wire [IN_SIZE-1:0]  b,
	output wire [OUT_SIZE-1:0] c,
	output wire overflow
);

wire [OUT_SIZE:0] temp_sum;

assign temp_sum = a + b;
assign c =  temp_sum[OUT_SIZE-1:0];
assign overflow = temp_sum[OUT_SIZE] ;

endmodule