`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:11 02/06/2020 
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
    input clk_1,
    input reset,
    output minutes_seconds
    );
		
	 reg [3:0] second_0;
	 reg [3:0] second_1;
	 reg [3:0] minute_0;
	 reg [3:0] minute_1;
	 
	 wire[15:0] minutes_seconds;
	 
	 always @(posedge clk_1)
	 begin
		if (reset)
		begin
			second_0 <= 0;
			second_1 <= 0;
			minute_0 <= 0;
			minute_1 <= 0;
		end
			
		else
		begin
			if (second_0 > 9)
			begin
				second_1 <= second_1 + 1;
				second_0 <= -1;
			end
			
			if (second_1 > 5)
			begin
				minute_0 <= minute_0 + 1;
				second_1 <= 0;
			end
			
			if (minute_0 > 9)
			begin
				minute_1 <= minute_1 + 1;
				minute_0 <= 0;
			end
			
			if (minute_1 > 5)
			begin
				minute_1 <= minute_1;
				minute_0 <= minute_0;
				second_0 <= second_0;
				second_1 <= second_1;
			end
			
			second_0  <= second_0 + 1;
		end
	 end
	 
	 assign minutes_seconds = {minute_1, minute_0, second_1, second_0};

endmodule
