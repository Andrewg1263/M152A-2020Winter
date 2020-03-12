`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:49 02/20/2020 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(
    input clk,
    input rst,
    output clk_25mhz,
    );
	 
reg [15:0] cnt = 0;
reg pix_stb = 0; 
always @(posedge clk)
begin
	if(rst)
	begin
		pix_stb <= 0;
		cnt <= 0;
	end
	else
	{pix_stb, cnt} <= cnt + 16'h4000;  // divide by 4: (2^16)/4 = 0x4000
end

assign clk_25mhz = pix_stb;
	
endmodule
