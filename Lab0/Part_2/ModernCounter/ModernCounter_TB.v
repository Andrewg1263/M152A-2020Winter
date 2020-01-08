`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:23:34 01/07/2020
// Design Name:   ModernConter
// Module Name:   Y:/BackUp/UCLA/152A-ee/Lab0/Part_2/ModernCounter/ModernCounter_TB.v
// Project Name:  ModernCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ModernConter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ModernCounter_TB;

	// Inputs
	reg rst;
	reg clk;
	
	// Outputs
	wire [3:0] a;

	// Instantiate the Unit Under Test (UUT)
	ModernConter uut (
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

