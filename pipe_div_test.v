`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:25 05/12/2016
// Design Name:   diverge_pipe
// Module Name:   /home/bluelabuser/Desktop/fractal/pipe_div_test.v
// Project Name:  fractal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: diverge_pipe
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipe_div_test;

	// Inputs
	reg Clk;
	reg [15:0] x;
	reg [15:0] y;
	reg [15:0] c1;
	reg [15:0] c2;
	reg [7:0] div;
	reg no_op;
	reg stage;

	// Outputs
	wire [15:0] newX;
	wire [15:0] newY;
	wire [15:0] newC1;
	wire [15:0] newC2;
	wire [7:0] newDiv;
	wire new_no_op;

	// Instantiate the Unit Under Test (UUT)
	diverge_pipe uut (
		.Clk(Clk), 
		.x(x), 
		.y(y), 
		.c1(c1), 
		.c2(c2), 
		.div(div), 
		.no_op(no_op), 
		.stage(stage), 
		.newX(newX), 
		.newY(newY), 
		.newC1(newC1), 
		.newC2(newC2), 
		.newDiv(newDiv), 
		.new_no_op(new_no_op)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		x = 0;
		y = 0;
		c1 = 0;
		c2 = 0;
		div = 0;
		no_op = 0;
		stage = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Clk = 1;
		x = 16'b0100000000000000;
		y = 16'b0100000000000000;
		c1 = 16'b0100000000000000;
		c2 = 16'b0100000000000000;
		div = 0;
		no_op = 0;
		stage = 1;

		// Wait 100 ns for global reset to finish
		#100;
		Clk = 0;
		x = 0;
		y = 0;
		c1 = 0;
		c2 = 0;
		div = 0;
		no_op = 0;
		stage = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk = 1;
		x = 16'b0110000000000000;
		y = 16'b0100000000000000;
		c1 = 16'b0100000000000000;
		c2 = 16'b0100000000000000;
		div = 0;
		no_op = 0;
		stage = 1;



		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

