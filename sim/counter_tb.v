`timescale 1ns / 1ps

module counter_tb;

	initial
	begin
		$dumpfile("counter_tb.vcd");
		$dumpvars;
	end

    parameter size = 4;
    
	// Inputs
	reg clk;
    reg rst = 0;

    // Clock
	parameter period = 10;
	initial begin
		clk = 1;
	end
	always #(period/2) clk = ~clk;

    // Outputs
    wire [size-1:0] count;

    // Instantiate the Unit Under Test (UUT)
	counter #(
        .SIZE(size)
    ) uut (
		.clk(clk),
        .rst(rst),
		.count(count)
    );

    initial begin
		#period;
		#period;
		#period;
		#period;
		rst= 1;
        #period;
        rst = 0;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        #period;
        // Overflow count
        #period;
        #period;
        $finish;
	end

endmodule