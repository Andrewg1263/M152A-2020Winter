`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:51 03/11/2020 
// Design Name: 
// Module Name:    score_count 
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
module score_count(
	input clk,
	input rst,
	input create_new_box,
	output [15:0] score
    );
reg [3:0] led_0;
reg [3:0] led_1;
reg [3:0] led_2;
reg [3:0] led_3;

// count score
always@(posedge clk)
begin
if(rst)
begin
	led_0 <= 4'd0;
	led_1 <= 4'd0;
	led_2 <= 4'd0;
	led_3 <= 4'd0;
end
else
begin
	if(create_new_box)
	begin
		if(led_0 == 4'd9 && led_1 == 4'd9 && led_2 == 4'd9 && led_3 == 4'd9)
		begin
			led_0 <= 4'd9;
			led_1 <= 4'd9;
			led_2 <= 4'd9;
			led_3 <= 4'd9;
		end
		else if(led_0 == 4'd9)
		begin
			led_0 <= 4'd0;
			if(led_1 == 4'd9)
			begin
				led_1 <= 4'd0;
				if(led_2 == 4'd9)
				begin
					led_2 <= 4'd0;
					led_3 <= led_3 + 1;
				end
				else
					led_2 <= led_2 + 1;
			end
			else
				led_1 <= led_1 + 1;
		end
		else
			led_0 <= led_0 + 1;
	end
end
end

assign score = {led_3, led_2, led_1, led_0};

endmodule
