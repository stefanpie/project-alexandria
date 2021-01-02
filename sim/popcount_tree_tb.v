`timescale 1ns / 1ps

module popcount_tree_tb;

	initial
	begin
		$dumpfile("popcount_tree_tb.vcd");
		$dumpvars;
	end

	// Inputs
	reg [16-1:0] a;

    // Outputs
    wire [5-1:0] count;

    // Instantiate the Unit Under Test (UUT)
	popcount_tree #(
        .IN_SIZE(16),
        .OUT_SIZE(5)
    ) uut (
		.A(a), 
		.count(count)
    );

    initial begin
		a = 0;

		#100;
		a = 1;
		#100;
		a = 2;
		#100;
		a = 3;
		#100;
		a = 4; 
        #100;
		a = 127;
        #100;
		a = 128;
        #100;
		a = 65536-1;
		#100 $finish;

	end

endmodule