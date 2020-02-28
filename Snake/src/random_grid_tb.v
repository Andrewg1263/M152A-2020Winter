`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:46:14 02/27/2020
// Design Name:   random_grid
// Module Name:   Y:/BackUp/UCLA/152A-ee/M152A-2020Winter/Snake/src/random_grid_tb.v
// Project Name:  Snake
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: random_grid
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module random_grid_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [9:0] x;
	wire [8:0] y;

	// Instantiate the Unit Under Test (UUT)
	random_grid uut (
		.clk(clk), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

