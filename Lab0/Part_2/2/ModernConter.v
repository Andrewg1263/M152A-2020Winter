`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:18 01/07/2020 
// Design Name: 
// Module Name:    ModernConter 
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
module ModernConter(rst, clk, 
    a);
input rst;
input clk;
output reg [3:0] a;

always @ (posedge clk) begin

	if(rst)
		a <= 4'b0000;
	
	else
		a <= a+1'b1;
		
end

endmodule
