`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:25 05/17/2016 
// Design Name: 
// Module Name:    top_level 
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
module top_level(
	input wire Clk_100M, reset,
	input wire VS, HS,
	output wire [11:0] COLOUR_OUT
    );
	 
wire [15:0]startX;
wire [15:0]startY;
wire [15:0]stepX;
wire [15:0]stepY;
wire [15:0]xTest;
wire [15:0]yTest;
wire [15:0]c1Test;
wire [15:0]c2Test;
wire [7:0]divOut;

fractal frac (
    .Clk_100M(Clk_100M), 
    .reset(reset), 
    .startX(startX), 
    .startY(startY), 
    .stepX(stepX), 
    .stepY(stepY), 
    .divOut(divOut), 
    .xTest(xTest),
	.yTest(yTest),
	.c1Test(c1Test),
	.c2Test(c2Test),	 
    .HS(HS), 
    .VS(VS), 
    .COLOUR_OUT(COLOUR_OUT)
    );
//always @(*) begin
	assign startX = 16'b1110000000000000;
	assign startY = 16'b1110000000000000;
	assign stepX  = 16'b0000000000011001;
	assign stepY  = 16'b0000000000100010;
//end

endmodule