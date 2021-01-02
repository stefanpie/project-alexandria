`timescale 1ns / 1ps
 
module add_tb;
	
	initial
	begin
		$dumpfile("add_tb.vcd");
		$dumpvars;
	end

	parameter SIZE = 8;	
	// Inputs
	reg [SIZE-1:0] a;
	reg [SIZE-1:0] b;
 
	// Outputs
	wire [SIZE-1:0] c;
	wire overflow;

 
	// Instantiate the Unit Under Test (UUT)
	add #(.IN_SIZE(SIZE),.OUT_SIZE(SIZE)) uut (
		.a(a), 
		.b(b), 
		.c(c),
		.overflow(overflow)
	);
 
 
	initial begin
		a = 0;
		b = 0;
 
		#100;
		a = 1;
		b = 1;
		#100;
		a = 5;
		b = 5;
		#100;
		a = 10;
		b = 15;
		#100;
		a = 255;
		b = 255;

		#100 $finish;

	end
 
endmodule