`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:22 02/10/2020 
// Design Name: 
// Module Name:    counter_0 
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
module counter_0(
	input clk_1hz,
	input clk_400hz,
	input rst,
	input pause,
	output [3:0] led_0,
	output [3:0] led_1,
	output [3:0] led_2,
	output [3:0] led_3
    );
	
	reg [3:0] sec_l;
	reg [3:0] sec_h;
	reg [3:0] min_l;
	reg [3:0] min_h;	
	
	always @ (posedge clk_1hz)
	begin
	if(rst)
	begin
		sec_l <= 4'b0000;
		sec_h <= 4'b0000;
		min_l <= 4'b0000;
		min_h <= 4'b0000;
	end
	else if(pause)
	begin
		sec_l <= sec_l;
		sec_h <= sec_h;
		min_l <= min_l;
		min_h <= min_h;
	end
	else
	begin
		// 59:59
		if( min_h==4'b0101 && min_l==4'b1001 && sec_h==4'b0101 && sec_l==4'b1001 )
		begin
			sec_l <= sec_l;
			sec_h <= sec_h;
			min_l <= min_l;
			min_h <= min_h;
		end
		
		else
		begin
			if(sec_l==9)
			begin
				sec_l <= 4'b0000;
				if(sec_h == 5)
				begin
					sec_h <= 4'b0000;
					if(min_l == 9)
					begin
						min_l <= 4'b0000;
						min_h <= min_h + 1;
					end
					else
						min_l <= min_l + 1;
				end
				else
					sec_h <= sec_h + 1;
			end
			else
				sec_l <= sec_l + 1;
		end
	end
	end
	
	assign led_0 = sec_l;
	assign led_1 = sec_h;
	assign led_2 = min_l;
	assign led_3 = min_h;
	
	
endmodule
