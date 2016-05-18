`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:33 05/13/2016 
// Design Name: 
// Module Name:    Mandelbrot_top 
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
module Mandelbrot_top(
	input  wire CLK_100MHz, reset,
	output wire HS,
	output wire VS,
	output wire [11:0] COLOUR_OUT
	);
	
	wire video_on, pixel_tick;
	wire [9:0] pixel_x, pixel_y;
	reg [11:0] color;
	wire [11:0] color_next;
	
	vga_sync vga_sync_unit(.CLK_100MHz(CLK_100MHz), .reset(reset), 
	.hsync(HS),.vsync(VS), .video_on(video_on), .p_tick(pixel_tick)
	, .pixel_x(pixel_x), .pixel_y(pixel_y));
	
	pixel_gen bitmap(.CLK_100MHz(CLK_100MHz), .reset(reset), 
	.video_on(video_on), .pixel_x(pixel_x), .pixel_y(pixel_y), .color(color_next));
	
	always @(posedge CLK_100MHz)
		if(pixel_tick)
			color <= color_next;
				
	assign COLOUR_OUT = color;
	
endmodule
