`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:25 05/13/2016 
// Design Name: 
// Module Name:    bitmap_gen 
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
module pixel_gen(
	input wire CLK_100MHz, reset, wea, 
	input wire video_on,
	input wire [9:0] pixel_x, pixel_y,
	output reg [11:0] color, 
	input wire [18:0] addr_w,
   input wire [6:0] dina
	);

	parameter width = 7;
	parameter DATASIZE = 307200;

	wire  [18:0] addr_r;
	wire [width - 1:0] dout;
	
	/** dout <=32 blue = 0, red = dout << 2, green = 32 - (dout << 2)
	dout <= 64 red = 0;	*/

	bram mem( .clka(CLK_100MHz), .wea(wea), .addra(addr_w),
	.dina(dina), .clkb(CLK_100MHz), .addrb(addr_r), .doutb(dout));
	
	reg [18:0]read_addr;
	
	wire [11:0] bitmap_color;
	assign addr_r = {10'b0,pixel_y[8:0]}*640 + {9'b0,pixel_x};//{pixel_y[8:0], pixel_x[9:0]};//19 bit address
	assign bitmap_color = {5'b0,dout};//{{dout[1],3'b110}, {2'b01, dout[1:0]},{dout[1:0],2'b11}};

	
	//--------------------------------------------------
	//		RGB MULTIPLEXING CIRCUIT
	//-------------------------------
	always @(*)
		if(~video_on)
			color = 12'h_0_0_0;
		else
			color = bitmap_color;
			
endmodule
