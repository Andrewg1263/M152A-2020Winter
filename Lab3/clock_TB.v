`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:46:00 02/04/2020
// Design Name:   clock
// Module Name:   Y:/BackUp/UCLA/152A-ee/M152A-2020Winter/Lab3/clock_TB.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_TB;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire led;
	/*wire clk_1;
	wire clk_400;
	wire clk_2;*/

	// Instantiate the Unit Under Test (UUT)
	clock uut (
		.rst(rst), 
		.clk(clk), 
		.led(led)
		/*.clk_1(clk_1), 
		.clk_400(clk_400), 
		.clk_2(clk_2)*/
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#1000;
		rst = 0;
      end
		
		always begin
			#100;
			clk = ~clk;
			end
		// Add stimulus here
      
endmodule

