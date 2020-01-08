`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:09 01/07/2020 
// Design Name: 
// Module Name:    Counter 
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
module Counter(rst, clk, 
    a);
input rst;
input clk;
output reg [3:0] a;

always @ (posedge clk) begin

	if(rst) begin
		a <= 4'b0000;
	end
	
	else begin
		a[0] <= ~ a[0];
		a[1] <= a[0] ^ a[1];
		a[2] <= (a[1] & a[0]) ^ a[2];
		a[3] <= (a[1] & a[0] & a[2]) ^ a[3];
	end
	
end


endmodule
