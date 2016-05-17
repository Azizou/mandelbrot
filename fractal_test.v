`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:20 05/12/2016
// Design Name:   fractal
// Module Name:   /home/bluelabuser/Desktop/fractal/fractal_test.v
// Project Name:  fractal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fractal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fractal_test;

	// Inputs
	reg Clk_100M;
	reg [15:0] startX;
	reg [15:0] startY;
	reg [15:0] stepX;
	reg [15:0] stepY;

	// Outputs
	wire [7:0] divOut;

	// Instantiate the Unit Under Test (UUT)
	fractal uut (
		.Clk_100M(Clk_100M), 
		.startX(startX), 
		.startY(startY), 
		.stepX(stepX), 
		.stepY(stepY), 
		.divOut(divOut)
	);

	initial begin
		// Initialize Inputs
		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;
				Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;		Clk_100M = 0;
		startX = 0;
		startY = 0;
		stepX = 0;
		stepY = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Clk_100M = 1;
		startX = 0;
		startY = 0;
		stepX = 2;
		stepY = 4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

