`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:20 01/07/2020
// Design Name:   Counter
// Module Name:   Y:/BackUp/UCLA/152A-ee/Lab0/Part_2/Counter/Counter_TB.v
// Project Name:  Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_TB;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [3:0] a;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.rst(rst), 
		.clk(clk), 
		.a(a)
	);

	initial begin
		// Initialize Inputs
		rst = 1'b1;
		clk = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = ~rst;		
		// Add stimulus here

	end
	
	always
		#5 clk = ~clk;
	
	initial
		#1000 $finish;
      
endmodule

