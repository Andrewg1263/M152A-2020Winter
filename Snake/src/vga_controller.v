`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:42 02/20/2020 
// Design Name: 
// Module Name:    vga_controller 
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
module vga_controller( input clk_25mhz, 
							  output h_count_value, 
							  output v_count_value
    );
	 
	reg [9:0] h_count_value = 0;
	reg [9:0] v_count_value = 0;
	reg v_enable;
	
	// horizontal counter scan through 800 pixels
	always@(posedge clk_25mhz)
	begin
		if (h_count_value < 800 ) 
			begin
			h_count_value <= h_count_value + 1;
			v_enable <= 0;
			end
		else 
			begin
			h_count_value <= 0;
			v_enable <= 1;
			end
	end
	
	// vertical counter scan through 800 pixels
	always@(posedge clk_25mhz)
	begin
		if(v_enable)
		begin
			v_count_value = (v_count_value < 525)? (v_count_value + 1) : 0;
		end
	end

endmodule
