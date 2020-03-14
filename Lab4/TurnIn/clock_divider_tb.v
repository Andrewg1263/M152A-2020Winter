`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:19 03/13/2020
// Design Name:   clock_divider
// Module Name:   Y:/Downloads/pmodjstk_demo_verilog 2/PmodJSTK_Demo/clock_divider_tb.v
// Project Name:  PmodJSTK_Demo
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

module clock_divider_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clk_25mhz;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk(clk), 
		.rst(rst), 
		.clk_25mhz(clk_25mhz)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	forever #10 clk = ~clk;
	end
      
endmodule

