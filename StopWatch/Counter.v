`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:24 02/09/2020 
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
module Counter(
    input clk,
    input rst,
	 input [12:0] max,
    input [3:0] sub_max,
    output [3:0] led_display
    );
	
	reg [12:0] counter;
	reg [3:0] sub_counter;
	
	always@(posedge  clk)
	begin
		if(rst) 
		begin
			counter <= 0;
		end
		else
			if(counter == max - 1)
			begin
				counter <= 0;
			end
			else
			begin
				counter <= counter + 1;
			end
	end
	
	always@(posedge  clk)
	begin
		if(rst) 
		begin
			sub_counter <= 0;
		end
		else
		begin
			if( counter == max - 1)
			begin
				if (sub_counter == sub_max) 
				begin
					sub_counter <= 0;
				end
				else
				begin
					sub_counter <= sub_counter + 1;
				end
			end
			else
			begin
				sub_counter <= subcounter;
			end
		end
	end
	
	assign led_display = sub_counter;
	
endmodule
