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
    input clk,
    input rst,
	 input pause,
		// [3:0] sw [ sel, adj, adj_b, cnt_dn ]
	 input [3:0] sw,
	 output [3:0] Led,
    output [6:0] led_seg,
    output [3:0] AN
    );
	
	wire[3:0] led_0;
	wire[3:0] led_1;
	wire[3:0] led_2;
	wire[3:0] led_3;
	
	wire	clk_1hz;
	wire	clk_2hz;
	wire	clk_400hz;
	
	wire btn_reset;
	wire btn_pause;
	reg pause_flag;
	
	//button_debounce( btn, clk,  btn_state);
	button_debounce _reset( .btn(rst), .clk(clk), .btn_out(btn_reset) );
	button_debounce _pause( .btn(pause), .clk(clk), .btn_out(btn_pause) );
	always@(posedge btn_pause)
	begin
		pause_flag <= ~pause_flag;
	end
	
	clock_divider _clock_divider(.sclk(clk), .rst(btn_reset), .clk_1hz(clk_1hz), .clk_2hz(clk_2hz), .clk_400hz(clk_400hz));
	counter_0 _counter_0(.clk(clk_1hz), .rst(btn_reset), .pause(pause_flag),/* .adj(sw[2]),*/ .led_0(led_0), .led_1(led_1), .led_2(led_2), .led_3(led_3));
	
	led_diaplay	_led_display(clk_400hz, btn_reset, led_0,led_1,led_2,led_3, led_seg,AN);
	// for clock test
	
	assign Led[0] = (pause_flag)?1:0;
	assign Led[3:1] = sw[3:1];
		
endmodule
