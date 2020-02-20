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
	 input increase,
	 input decrease,
	 output [3:0] Led,
    output [6:0] led_seg,
    output [3:0] AN,
	 output led
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
	wire btn_increase;
	wire btn_decrease;
	reg pause_flag;
	
	//button_debounce( btn, clk,  btn_state);
	button_debounce _reset( .btn(rst), .clk(clk), .btn_out(btn_reset) );
	button_debounce _pause( .btn(pause), .clk(clk), .btn_out(btn_pause) );
	button_debounce _increase( .btn(increase), .clk(clk), .btn_out(btn_increase) );
	button_debounce _decrease( .btn(decrease), .clk(clk), .btn_out(btn_decrease) );
	always@(posedge clk)
	begin
			pause_flag <= (btn_pause)? ~pause_flag:pause_flag ;
	end
	
	// create 3 clock frequencies, 1hz, 2hz, and 400hz.
	clock_divider _clock_divider(.sclk(clk), .rst(btn_reset), .clk_1hz(clk_1hz), .clk_2hz(clk_2hz), .clk_400hz(clk_400hz));
	
	// Count up and down module
	counter_0 _counter_0( .clk(clk), .clk_1hz(clk_1hz), .clk_2hz(clk_2hz), //clocks
								.rst(btn_reset), .btn_pause(btn_pause), .increase(btn_increase), .decrease(btn_decrease), // buttons
								.adj(sw[2]), .sel(sw[3]), .adj_b(sw[1]), .cnt_dn(sw[0]),		 // switches
								.led_0(led_0), .led_1(led_1), .led_2(led_2), .led_3(led_3)); //outputs
	
	// Control 7-segment led module
	led_diaplay _led_display(
	 .clk(clk),.clk_400hz(clk_400hz), // clocks
	 .rst(btn_reset),.adj(sw[2]), .sel(sw[3]), // button & switchs
	 .led_0(led_0),.led_1(led_1),.led_2(led_2),.led_3(led_3),  // inputs
	 .seg_data(led_seg), .AN(AN) // outputs
    );
	 
	 
	// for switch test
	assign Led = sw;
	assign led = pause_flag;
endmodule
