`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:44 03/03/2020 
// Design Name: 
// Module Name:    block_display 
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
module block_display( 
	input clk,
	input [9:0] x,
	input [9:0] x_counter,
	input [8:0] y,
	input [8:0] y_counter,
	output vga_signal
    );
	 
	 reg turn_on;
	 always@(posedge clk)
	 begin
		turn_on = ( x_counter >= x && y_counter >= y && x_counter <= (x+7)  && y_counter <= (y+7) )? 1 : 0;
	 end
	
	assign vga_signal = turn_on;
	
endmodule
