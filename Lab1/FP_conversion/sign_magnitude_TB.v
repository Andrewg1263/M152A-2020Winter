`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:01 01/10/2020
// Design Name:   sign_magnitude
// Module Name:   Y:/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/FP_conversion/sign_magnitude_TB.v
// Project Name:  FP_conversion
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_magnitude
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_magnitude_TB;

	// Inputs
	reg [11:0] D_in;

	// Outputs
	wire [11:0] D_out;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	sign_magnitude uut (
		.D_in(D_in), 
		.D_out(D_out), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		D_in = 12'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		D_in = 12'b001010101010;
		#100
		D_in = 12'b100000000000;
	end
	
endmodule

