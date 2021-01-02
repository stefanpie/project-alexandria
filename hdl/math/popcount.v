/*
This is a nieve combinational logic implementation of a pop count module using an adder "chain".
Based on elaboration and visualization testing using Yosys and Vivado, this implantation does, in fact,
elaborate to a nieve adder "chain". This design requires O(n) adder and results in an O(n) delay.
*/


module popcount #(
    parameter integer IN_SIZE = 16,
    parameter integer OUT_SIZE = $clog2(IN_SIZE) + 1
)(
    input  wire [IN_SIZE-1:0]  A,
    output reg  [OUT_SIZE-1:0] ones
);

integer i;

always@(A)
begin
    ones = 0;  //initialize count variable.
    for(i=0; i<IN_SIZE; i=i+1)   //for all the bits.
        ones = ones + A[i]; //Add the bit to the count.
end

endmodule