`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:41 05/12/2016 
// Design Name: 
// Module Name:    diverge_pipe 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module diverge_pipe(
	input Clk,
	input signed [15:0]x, 
	input signed [15:0]y,
	input signed [15:0]c1, 
	input signed [15:0]c2,
	input [7:0]div,
	input no_op,
	input [6:0]stage,
	output reg [15:0]newX, 
	output reg [15:0]newY,
	output reg [15:0]newC1, 
	output reg [15:0]newC2,
	output reg [7:0]newDiv, 
	output reg new_no_op,
	output reg [33:0] sum
    );
	
reg signed [32:0]squareSum;
reg signed [33:0]newX_t;
reg signed [32:0]newY_t;
//reg signed [31:0]y_sqr;
//reg signed [31:0]x_sqr;

//wire [15:0]absX;
//wire [15:0]absY;
//wire [31:0]sqr_x;
//wire [31:0]sqr_y;

			wire [15:0]absX  = newX[15] ? -newX : newX;
			wire [15:0]absY = newY[15] ? -newY : newY;
			wire [31:0]x_sqr = absX*absX;
			wire [31:0]y_sqr = absY*absY;
			
			reg [15:0] tempc1;
			reg [15:0] tempc2;
			

reg [32:0]xy;
always @(*) begin
	xy[31:0] <= x*y<<2; // =
	xy[32]   <= xy[31]; // =
	tempc1=c1;
	tempc2=c2;
end

always @(posedge Clk) begin
		//if(~no_op) begin
//		tempc1<=c1;
//		tempc2<=c2;
			newX_t <= x*x - (y*y - {{4{c1[15]}}, c1, 12'd0});
			newX <= newX_t[27:12];
			newC1 <= tempc1;
			newC2 <= tempc2;		
			
			newY_t<= {xy[32:0], 1'd0} + {{4{c2[15]}}, c2, 14'd0}; //sign extend and shift c2
			newY <= newY_t[29:14];
			//newC1 <= c1;
			
			squareSum <= x_sqr + y_sqr;
			sum <= squareSum;

			if(squareSum > 33'h400_0000) begin // >4
				if(no_op) begin
					newDiv <= div;
					new_no_op <= no_op;
				end
				else begin
					new_no_op <= 1;
					newDiv <= stage; 
				end
			end
			else begin
				newDiv <= div;
				new_no_op <= no_op;
				//newC1 <= c1;
				//newC2 <= c2;
			end
		//end
//		else begin
//			newDiv <= div;
//			new_no_op <= no_op;
//			newX <= x;
//			newY <= y;
//		end
end


endmodule
