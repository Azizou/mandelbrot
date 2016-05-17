`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:06 05/17/2016
// Design Name:   fractal
// Module Name:   C:/Users/Brad Stocks/fractal/main_test.v
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

module main_test;

	// Inputs
	reg Clk_100M;
	reg [15:0] startX;
	reg [15:0] startY;
	reg [15:0] stepX;
	reg [15:0] stepY;

	// Outputs
	wire [7:0] divOut;
	wire [15:0] q;

	// Instantiate the Unit Under Test (UUT)
	fractal uut (
		.Clk_100M(Clk_100M), 
		.startX(startX), 
		.startY(startY), 
		.stepX(stepX), 
		.stepY(stepY), 
		.divOut(divOut), 
		.q(q)
	);

	initial begin
	// Initialize Inputs
		Clk_100M = 0;
		startX = 16'b0000000000000000;
		startY = 16'b0001000000000000;
		stepX = 16'b00000000000110011;
		stepY = 16'b00000000001001100;

		// Wait 100 ns for global reset to finish
		#10;
		
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;
		
				Clk_100M = 1;;

		// Wait 100 ns for global reset to finish
		#10;
        
		Clk_100M = 0;
		
		#10;

	end
      
endmodule

