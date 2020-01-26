`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:47:46 01/10/2020
// Design Name:   count_zeros
// Module Name:   Y:/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/FP_conversion/count_zeros_TB.v
// Project Name:  FP_conversion
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_zeros
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count_zeros_TB;

	// Inputs
	reg [11:0] D_abs;

	// Outputs
	wire [2:0] exponent;
	wire [3:0] significand;
	wire fifth_bit;

	// Instantiate the Unit Under Test (UUT)
	count_zeros uut (
		.D_abs(D_abs), 
		.exponent(exponent), 
		.significand(significand), 
		.fifth_bit(fifth_bit)
	);

	initial begin
		// Initialize Inputs
		D_abs = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// 0
      D_abs = 12'b111001011010;
		#100;
		// 1
		D_abs = 12'b011110100110;
		#100;
		// 2 zeros
		D_abs = 12'b001110100100;
		#100;
		// 3 zeros
		D_abs = 12'b000110100100;
		#100;
		// 4 zeros
		D_abs = 12'b000010100100;
		#100;
		// 7 zeros, exponent should be 1
		D_abs = 12'b000000010100;
		#100;
		// -2048
		D_abs = 12'b100000000000;
		// Add stimulus here

	end
      
endmodule

