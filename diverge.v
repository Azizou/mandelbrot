`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:38 04/19/2016 
// Design Name: 
// Module Name:    diverge 
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
module diverge(
input Clk,
input wire [15:0]x, 
input wire [15:0]y,
output reg[7:0]ret,
output reg [9:0]pixelCount
    );

reg [15:0]xVal;
reg [15:0]yVal;
reg [15:0]xTemp;
reg [15:0]yTemp;
reg diverge;
reg [7:0]divVal;

reg [31:0]squareSum;
reg [7:0]count;


always @(posedge Clk) begin
	if(~diverge) begin
		if(count == 8'd0) begin
			xVal <= x;
			yVal <= y;
			diverge <= 0;
			pixelCount<=pixelCount+1;
			ret <= 8'd0;
		end
		else begin
			xTemp <= (xVal*xVal - yVal*yVal);
			yTemp <= (2*xVal*yVal);
			xVal <= xTemp;
			yVal <= yTemp;
		end
		squareSum <= xVal*xVal + yVal*yVal;
		if(squareSum > 4) begin
			ret <= count;
			pixelCount<=pixelCount+1;
			diverge <= 1;
		end
		else begin
			count <= count+1;
		end
	end
end

endmodule
