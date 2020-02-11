`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:48 02/09/2020 
// Design Name: 
// Module Name:    stopwatch 
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
module stopwatch(
    input sclk,
    input reset,
	 input pause,
    output [6:0] led_seg,
    output [3:0] AN
    );
	
/*	parameter counter_1s = 12'h1;
	parameter counter_10s = 12'hA;
	parameter counter_1m = 12'h3C;
	parameter counter_10m = 12'h258;*/
	
	wire[3:0] led_0;
	wire[3:0] led_1;
	wire[3:0] led_2;
	wire[3:0] led_3;
	
	wire	clk_1hz;
	wire	clk_2hz;
	wire	clk_400hz;
	
	reg pause_ff;
	reg start_pause;
	reg rst_ff;
	reg rst;
	// button debounce for pause
	always@(posedge clk_400hz)
	begin
		pause_ff <= pause;
		if(pause_ff && !pause)
			start_pause <= ~start_pause;
	end
	//button debounce for reset
	always@(posedge clk_400hz)
	begin
		rst_ff <= reset;
		if(rst_ff && !reset)
			rst <= 1;
		else
			rst <= 0;
	end
	
	clock_divider _clock_divider(sclk, rst, clk_1hz, clk_2hz, clk_400hz);
	
/*	Counter	Count_1s(clk_1hz, rst, counter_1s, 4'h9, led_0);
	Counter	Count_10s(clk_1hz, rst, counter_10s, 4'h5, led_1);
	Counter	Count_1m(clk_1hz, rst, counter_1m, 4'h9, led_2);
	Counter	Count_10m(clk_1hz, rst, counter_10m, 4'h5, led_3);*/
	counter_0 _counter_0(clk_1hz, clk_400hz, rst, start_pause, led_0, led_1, led_2, led_3);
	
	led_diaplay	_led_display(sclk,clk_400hz,rst,led_0,led_1,led_2,led_3, led_seg,AN);

endmodule
