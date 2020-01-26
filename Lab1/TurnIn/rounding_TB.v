`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:10 01/10/2020
// Design Name:   rounding
// Module Name:   Y:/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/FP_conversion/rounding_TB.v
// Project Name:  FP_conversion
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rounding
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rounding_TB;

	// Inputs
	reg [2:0] exponent;
	reg [3:0] significand;
	reg fifth_bit;

	// Outputs
	wire [3:0] F;
	wire [2:0] E;

	// Instantiate the Unit Under Test (UUT)
	rounding uut (
		.exponent(exponent), 
		.significand(significand), 
		.fifth_bit(fifth_bit), 
		.F(F), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		exponent = 0;
		significand = 0;
		fifth_bit = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		fifth_bit = 0;
		exponent = 3'b001;
		significand = 4'b1011;
		
		#50;
		fifth_bit = 1;
		exponent = 3'b001;
		significand = 4'b1011;
		
		#50;
		fifth_bit = 1;
		exponent = 3'b111;
		significand = 4'b1111;
		
		#50;
		fifth_bit = 1;
		exponent = 3'b001;
		significand = 4'b1111;
	end
      
endmodule

