`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:27:14 01/10/2020
// Design Name:   FP_conversion
// Module Name:   Y:/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/FP_conversion/FP_conversion_TB.v
// Project Name:  FP_conversion
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FP_conversion
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FP_conversion_TB;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	FP_conversion uut (
		.D(D), 
		.S(S), 
		.E(E), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		D = -40;
		#100;
		D = 125;
		#100;
		D = 44;
		#100;
		D = 422;
		#100;
		D = 57;
		#100;
		D = -1;
		#100;
		D = 12'b100000000000;
	end
      
endmodule

