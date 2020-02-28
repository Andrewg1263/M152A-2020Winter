`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:59:36 02/27/2020
// Design Name:   counter_0
// Module Name:   Y:/BackUp/UCLA/152A-ee/M152A-2020Winter/StopWatch/counter_tb.v
// Project Name:  StopWatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg clk_1hz;
	reg clk_2hz;
	reg rst;
	reg btn_pause;
	reg increase;
	reg decrease;
	reg adj;
	reg sel;
	reg adj_b;
	reg cnt_dn;

	// Outputs
	wire [3:0] led_0;
	wire [3:0] led_1;
	wire [3:0] led_2;
	wire [3:0] led_3;

	// Instantiate the Unit Under Test (UUT)
	counter_0 uut (
		.clk(clk), 
		.clk_1hz(clk_1hz), 
		.clk_2hz(clk_2hz), 
		.rst(rst), 
		.btn_pause(btn_pause), 
		.increase(increase), 
		.decrease(decrease), 
		.adj(adj), 
		.sel(sel), 
		.adj_b(adj_b), 
		.cnt_dn(cnt_dn), 
		.led_0(led_0), 
		.led_1(led_1), 
		.led_2(led_2), 
		.led_3(led_3)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_1hz = 0;
		clk_2hz = 0;
		rst = 0;
		btn_pause = 0;
		increase = 0;
		decrease = 0;
		adj = 0;
		sel = 0;
		adj_b = 0;
		cnt_dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		forever #10 clk=~clk;
		// Add stimulus here

	end
      
endmodule

