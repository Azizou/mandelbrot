`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:46 04/19/2016 
// Design Name: 
// Module Name:    fractal 
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
module fractal(
input Clk_100M, reset, 
input [15:0]startX, //top left corner
input [15:0]startY,
input [15:0]stepX, //horizontal and vertical step sizes
input [15:0]stepY, 
output [7:0] divOut,
output [15:0]xTest,
output [15:0]yTest,
output [15:0]c1Test,
output [15:0]c2Test,
output [18:0] addr_w,
output wire display,
output wire wea
    );
	


//reg [8:0]rowsComplete; //how many rows of the 420
//reg [15:0] xVals [639:0]; //grid of values
//reg [15:0] yVals [419:0]; 
reg [9:0] colCount = 10'd0;
reg [8:0] rowCount = 9'd0;
wire [15:0] stage_x [63:0];
wire [15:0] stage_y [63:0];
wire [15:0] stage_c1 [63:0];
wire [15:0] stage_c2 [63:0];
wire [7:0] stage_div [63:0];
wire stage_no_op [63:0];

reg [15:0] xReg1;
reg [15:0] yReg1;

//populate grid values
//always @(*) begin
//	for (x = 0; x < 640; x = x + 1) begin
//		fixed_x <=
//		xVals[x] <= startX + x*stepX;
//	end
//	for(y = 0; y < 420; y = y + 1) begin
//		yVals[y] <= startY + y*stepY;
//	end
//end	
	
/****************************************************/

	
//generate modules 	
genvar i;
generate
for(i = 0; i < 62; i = i+1) begin: gen_loop
	diverge_pipe div_pipe_instance(Clk_100M, stage_x[i], stage_y[i], stage_c1[i], stage_c2[i],
											stage_div[i], stage_no_op[i], i,
											stage_x[i+1], stage_y[i+1], stage_c1[i+1], stage_c2[i+1],
											stage_div[i+1], stage_no_op[i+1]);
end
endgenerate



assign	stage_x[0] = xReg1;
assign	stage_y[0] = yReg1;
assign	stage_c1[0] = xReg1;
assign	stage_c2[0] = yReg1;
assign stage_div[0] = 8'd100;
assign stage_no_op[0] = 1'd0;

assign addr_w = currAddr;
assign wea = 1'b1;//en_reg;
//test var
assign divOut = stage_div[62];
assign xTest = stage_x[1];
assign yTest = stage_y[1];
assign c1Test = stage_c1[1];
assign c2Test = stage_c2[1];


reg en_reg;

reg [2:0]ClkCount = 3'd0;

reg [25:0]xRegTemp;
reg [25:0]yRegTemp;
reg tempGo =0;

reg [18:0] currAddr;

always @(posedge Clk_100M)  
begin
 ClkCount <= ClkCount + 1'b1;
 if(ClkCount == 3'd5) begin
	ClkCount <= 3'd0;
	if(colCount == 10'd639) begin
		colCount <= 10'd0;
		tempGo <= 1'b1;
		xRegTemp <= stepX*colCount;
		xReg1    <= startX + xRegTemp[15:0]; 
		yRegTemp <= stepY*rowCount;
		yReg1    <= startY + yRegTemp[15:0];
		currAddr <= {10'b0,rowCount}*640 + {9'b0,colCount};
		//colCount <= colCount + 1'b1;
		en_reg <= 1'b1;
		
		rowCount <= rowCount + 9'd1;
		if(rowCount == 9'd479) begin
			rowCount <= 9'd0;
		end
	end
	else begin
	xRegTemp <= stepX*colCount;
	xReg1    <= startX + xRegTemp[15:0]; 
	yRegTemp <= stepY*rowCount;
	yReg1    <= startY + yRegTemp[15:0];
	
	
	
	//currAddr <= (({{1'b0}, rowCount} * 11'd640) + colCount) - 11'd63;
	
	 currAddr <= {10'b0,rowCount}*640 + {9'b0,colCount};//{pixel_y[8:0], pixel_x[9:0]};//19 bit address

	//currAddr <= (({{10'b0}, rowCount} * 640) + {9'b0, colCount}) - 18'd63;

	en_reg <= 1'b1;
	colCount <= colCount + 1'b1;
	end
 end
 
 else begin
	en_reg <= 1'b0;
 end
end	
 assign display = tempGo;


endmodule
