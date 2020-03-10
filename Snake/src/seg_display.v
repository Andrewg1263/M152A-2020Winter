`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:43 03/10/2020 
// Design Name: 
// Module Name:    seg_display 
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
module seg_display(
	input clk,
	input rst,
	input create_new_box,
	output reg [6:0] seg_data,
   output reg [3:0] AN	
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

// 400 hz clk
reg[16:0] counter_400hz;
reg clk_400hz;
always@(posedge clk)
begin
if(rst)
	counter_400hz <= 17'd0;
else
begin
	if(counter_400hz == 100000000-1) //100, 000, 000 / 800 = 125, 000
	begin
		clk_400hz <= ~clk_400hz;
		counter_400hz <= 0;
	end
	else
		counter_400hz <= counter_400hz + 1;
end
end


// 7-segment display
reg [1:0] led_select;
reg [3:0] led_data_hex;
always@ (posedge clk_400hz or posedge rst)
begin
	if(rst)
		led_select <= 0;
	else
		led_select <= led_select + 1;
end

always@(posedge clk)
begin
	case(led_select)
	2'b00:	led_data_hex = led_0;
	2'b01:	led_data_hex = led_1;
	2'b10:	led_data_hex = led_2;
	2'b11:	led_data_hex = led_3;
	default: led_data_hex = 0;
	endcase
end

always@(posedge clk)
begin
	case(led_data_hex)
		4'b0000: seg_data = 7'b0000001; // 0
		4'b0001: seg_data = 7'b1001111; // 1
		4'b0010: seg_data = 7'b0010010; // 2
		4'b0011: seg_data = 7'b0000110; // 3
		4'b0100: seg_data = 7'b1001100; // 4
		4'b0101: seg_data = 7'b0100100; // 5
		4'b0110: seg_data = 7'b0100000; // 6
		4'b0111: seg_data = 7'b0001111; // 7
		4'b1000: seg_data = 7'b0000000; // 8
		4'b1001: seg_data = 7'b0000100; // 9
	endcase
end

always@ (posedge clk)
begin
	case(led_select)
	2'b00: AN = 4'b0111;
	2'b01: AN = 4'b1011;
	2'b10: AN = 4'b1101;
	2'b11: AN = 4'b1110;
	default: AN = 4'b1011;
	endcase
end

endmodule
