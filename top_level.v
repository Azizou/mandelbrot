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
	input wire Clk_100M,
	output wire VS, HS,
	output wire [11:0] COLOUR_OUT
    );
	 wire reset;
	 wire go;// = 1'b1;
	 
	wire [15:0]startX;
	wire [15:0]startY;
	wire [15:0]stepX;
	wire [15:0]stepY;
	wire [15:0]xTest;
	wire [15:0]yTest;
	wire [15:0]c1Test;
	wire [15:0]c2Test;
	wire [6:0]divOut;
	
	//VGA and pixel gen
	wire video_on, pixel_tick;
	wire [9:0] pixel_x, pixel_y;
	reg [11:0] color;
	wire [11:0] color_next;
	wire [6:0]din;
	wire [18:0]addr_w;
	wire wea;
	
	
	assign reset = 1'b0;
	assign startX = 16'b1111000000000000;
	assign startY = 16'b1111000000000000;
	assign stepX  = 16'b0000000000000110;
	assign stepY  = 16'b0000000000001000;
	
	fractal frac(.Clk_100M(Clk_100M),.reset(reset),.startX(startX),.startY(startY),
	.stepX(stepX), .stepY(stepY),.divOut(divOut), .xTest(xTest), .yTest(yTest), .c1Test(c1Test),
	.c2Test(c2Test), .addr_w(addr_w), .wea(wea),.display(go));
	

	
	
	vga_sync vga_sync_unit(.CLK_100MHz(Clk_100M), .reset(reset), 
	.hsync(HS),.vsync(VS), .video_on(video_on), .p_tick(pixel_tick)
	, .pixel_x(pixel_x), .pixel_y(pixel_y), .display(go));
	
	
	pixel_gen bitmap(.CLK_100MHz(Clk_100M), .reset(reset), 
	.video_on(video_on), .pixel_x(pixel_x), .pixel_y(pixel_y), .color(color_next), .addr_w(addr_w), .dina(divOut)
	, .wea(wea));



	always @(posedge Clk_100M)
		if(pixel_tick)
			color <= color_next;
	assign COLOUR_OUT = color;
endmodule
