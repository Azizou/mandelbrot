`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:18 05/13/2016 
// Design Name: 
// Module Name:    vga_sync 
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
module vga_sync(
	input wire CLK_100MHz, reset,display,
	output wire hsync, vsync, video_on, p_tick,
	output wire [9:0] pixel_x, pixel_y
    );
	
	localparam  HD = 640;
	localparam  HF = 48;
	localparam  HB = 16;
	localparam  HR = 96;
	localparam  VD = 480;
	localparam  VF = 10;
	localparam  VB = 33;
	localparam  VR = 2;
	
//	wire CLK_25MHz;
	
	//vga_clk clk(.CLK_100MHz(CLK_100MHz), .CLK_25MHz(CLK_25MHz), .reset(reset), .LOCKED());
	//sync counters
	reg [9:0] 	h_count_reg, h_count_next;
	reg [9:0] 	v_count_reg, v_count_next;
	//output buffer
	reg 			h_sync_reg, v_sync_reg; 
	wire 			h_sync_next, v_sync_next;
	//status signal
	wire h_end, v_end;
	
	//mod4-counter
	reg  [1:0]mod4_reg;
	wire  [1:0]mod4_next;
	
	initial begin
		mod4_reg <= 2'b0;
		h_count_reg <=0;
		v_count_reg <=0;
		h_sync_reg  <=1'b0;
		v_sync_reg  <=1'b0;
	end
	
	always@(posedge CLK_100MHz, posedge reset)
		if(reset)
			begin
				mod4_reg <= 2'b0;
				h_count_reg <=0;
				v_count_reg <=0;
				h_sync_reg  <=1'b0;
				v_sync_reg  <=1'b0;
			end
		else
			begin
				mod4_reg <= mod4_next;
				h_count_reg <= h_count_next;
				v_count_reg <= v_count_next;
				h_sync_reg  <= h_sync_next;
				v_sync_reg  <= v_sync_next;
			end
	
	assign mod4_next = (mod4_reg + 1);
	
	assign pixel_tick = mod4_reg[1];
	assign h_end = (h_count_reg == (HD + HF + HR + HB - 1));
	assign v_end = (v_count_reg == (VD + VF + VR + VB - 1));
	
	// next-state logic of mo-800
	always @(*)
		if(pixel_tick & display)
			if(h_end)
				h_count_next = 0;
			else
				if(mod4_reg == 2'b11)
					h_count_next = h_count_reg + 1;
				else
					h_count_next = h_count_reg;
		else
			h_count_next = h_count_reg;//same
			
	//next-state logic of mod-525
	always @(*)
		if(pixel_tick & h_end & display)
			if(v_end)
				v_count_next = 0;
			else
				v_count_next = v_count_reg + 1;
		else
			v_count_next = v_count_reg;
			
	//horizontal and vertcial syncs
	assign h_sync_next = (h_count_reg >= (HD + HB) && h_count_reg <= (HD + HB + HR - 1));
	assign v_sync_next = (v_count_reg >= (VD + VB) && v_count_reg <= (VD + VB + VR - 1));
	
	//display active
	assign video_on = (h_count_reg < HD) && (v_count_reg < VD);
	
	assign hsync = h_sync_reg;
	assign vsync = v_sync_reg;
	assign pixel_x = h_count_reg;
	assign pixel_y = v_count_reg;
	assign p_tick = pixel_tick;
	
endmodule
