`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:14:05 02/20/2020
// Design Name:   clock_divider
// Module Name:   Y:/BackUp/UCLA/152A-ee/M152A-2020Winter/Snake/src/clk_divider_tb.v
// Project Name:  Snake
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

module clk_divider_tb;

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
		
		forever #10 clk=~clk;
        
		// Add stimulus here

	end
      
endmodule

