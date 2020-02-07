`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:18 02/04/2020
// Design Name:   LED_1hertz
// Module Name:   Y:/BackUp/UCLA/152A-ee/M152A-2020Winter/Lab0/Part_2/LED_1hertz/hz_tb.v
// Project Name:  LED_1hertz
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LED_1hertz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hz_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	LED_1hertz uut (
		.clk(clk), 
		.rst(rst), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		
		#100;
		rst = 1;
		#1000;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      end
		
		always
		begin
			clk = ~clk;
			#100;
		end
		// Add stimulus here


      
endmodule

