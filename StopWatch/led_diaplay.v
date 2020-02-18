`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:44 02/09/2020 
// Design Name: 
// Module Name:    led_diaplay 
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
module led_diaplay(
	 input clk,
	 input clk_400hz,
    input rst,
	 input adj, // turns in to adjustment mode
	 input sel, // sec or min freeze
    input [3:0] led_0,
    input [3:0] led_1,
    input [3:0] led_2,
    input [3:0] led_3,
    output reg [6:0] seg_data,
    output reg [3:0] AN
    );
	
	reg [6:0]led_display;
	reg [3:0]led_sel;
	
	reg [3:0] led_data_hex;
	reg [1:0] led_select;
	
	// turn on led segements at frequency at 2hz, but the rotation among LEDs are still 400 hz. 
	// ie, each led turns on and off 100 times per second
	reg clk_2hz = 0;
	reg[31:0] counter_2hz = 32'd0;
	always@(posedge clk)
	 begin
		if(rst)
			counter_2hz <=0;
		else
		begin
			if(counter_2hz == 25000000-1) //100, 000, 000 / 4 = 25, 000, 000
			begin
				clk_2hz <= ~clk_2hz;
				counter_2hz <= 0;
			end
			else
				counter_2hz <= counter_2hz + 1;
		end
	 end
	
	wire clk_sel;
	
	//assign clk_sel = (adj)?clk_2hz:clk_400hz;
	
	assign clk_sel = (adj==0)? clk_400hz: 
						  (sel == 1 && (led_select == 2'b00 || led_select == 2'b01))?clk_2hz:
						  (sel == 0 && (led_select == 2'b10 || led_select == 2'b11))?clk_2hz:
						  clk_400hz;

	always@ (posedge clk_400hz or posedge rst)
	begin
		if(rst)
			led_select <= 0;
		else
			led_select <= led_select + 1;
	end
	
	always@ (led_select)
	begin
		case(led_select)
		2'b00:	AN = 4'b0111;
		2'b01:	AN = 4'b1011;
		2'b10:	AN = 4'b1101;
		2'b11:	AN = 4'b1110;
		default: AN = 4'b0000;
		endcase
	end

	always@(led_select)
	begin
		case(led_select)
		2'b00:	led_data_hex = led_0;
		2'b01:	led_data_hex = led_1;
		2'b10:	led_data_hex = led_2;
		2'b11:	led_data_hex = led_3;
		default: led_data_hex = 0;
		endcase
	end
	
	always@(led_data_hex)
	begin
		case(led_data_hex)
			4'b0000:seg_data=(clk_sel)? 7'b1111111:7'b0000001; // 0
			4'b0001:seg_data=(clk_sel)? 7'b1111111:7'b1001111; // 1
			4'b0010:seg_data=(clk_sel)? 7'b1111111:7'b0010010; // 2
			4'b0011:seg_data=(clk_sel)? 7'b1111111:7'b0000110; // 3
			4'b0100:seg_data=(clk_sel)? 7'b1111111:7'b1001100; // 4
			4'b0101:seg_data=(clk_sel)? 7'b1111111:7'b0100100; // 5
			4'b0110:seg_data=(clk_sel)? 7'b1111111:7'b0100000; // 6
			4'b0111:seg_data=(clk_sel)? 7'b1111111:7'b0001111; // 7
			4'b1000:seg_data=(clk_sel)? 7'b1111111:7'b0000000; // 8
			4'b1001:seg_data=(clk_sel)? 7'b1111111:7'b0000100; // 9
		endcase
	end

endmodule
