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
	input wire CLK_100MHz, reset, 
	input wire video_on,
	input wire [9:0] pixel_x, pixel_y,
	output reg [11:0] color
	);

	parameter width = 7;
	parameter DATASIZE = 307200;

	wire refr_tick, load_tick;
	wire ena;
	wire wea;
	wire [width - 1:0] dina;
	reg [18:0] addr_w;
	wire  [18:0] addr_r;
	wire [width - 1:0] dout;
	
	/** dout <=32 blue = 0, red = dout << 2, green = 32 - (dout << 2)
	dout <= 64 red = 0;	*/

	dp_bram mem( .clka(CLK_100MHz), .wea(wea), .addra(addr_w),
	.dina(dina), .clkb(CLK_100MHz), .addrb(addr_r), .doutb(dout));
	
	integer counter =  0;
	
	reg write_en_reg;
	reg ena_reg;
	reg [18:0]read_addr;
	always @(posedge CLK_100MHz)
		if(counter < DATASIZE)
			begin
				write_en_reg = 1'b1; //Enable writing
				addr_w <= counter;
				counter <= counter + 1;
			end
		else
			write_en_reg = 1'b0;

	assign wea = write_en_reg;
	assign dina = counter%(128);

	
	wire [11:0] bitmap_color;
	// 1<<9 + x
	assign addr_r = {10'b0,pixel_y}*640 + {9'b0,pixel_x};//{pixel_y[8:0], pixel_x[9:0]};//19 bit address
//	assign bitmap_color = {dout[6:3], dout[5:2],dout[3:0]};
	assign bitmap_color = {4'h0, {2'b00, dout[6:4]},dout[3:0]};

	
	//--------------------------------------------------
	//		RGB MULTIPLEXING CIRCUIT
	//-------------------------------
	always @(*)
		if(~video_on)
			color = 12'hfff;
		else
			color = bitmap_color;
			
endmodule
