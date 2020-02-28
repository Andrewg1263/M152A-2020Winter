`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:42:15 02/14/2020
// Design Name:   clock_divider
// Module Name:   Y:/BackUp/UCLA/152A-ee/M152A-2020Winter/StopWatch/clk_tb.v
// Project Name:  StopWatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_tb;

	// Inputs
	reg sclk;
	reg rst;

	// Outputs
	wire clk_1hz;
	wire clk_2hz;
	wire clk_400hz;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.sclk(sclk), 
		.rst(rst), 
		.clk_1hz(clk_1hz), 
		.clk_2hz(clk_2hz), 
		.clk_400hz(clk_400hz)
	);

	initial begin
		// Initialize Inputs
		sclk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      
	always #10 sclk = ~sclk;
	
endmodule

