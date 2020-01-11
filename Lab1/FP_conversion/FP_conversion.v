`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:15 01/09/2020 
// Design Name: 
// Module Name:    FP_conversion 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//	
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FP_conversion(D,
	S,E,F);
	
	input wire [11:0] D;
	output wire S;
	output wire [2:0] E;
	output wire [3:0] F;
	
	// D_out
	wire [11:0]outB_to_inC;
	sign_magnitude s_inst( .D_in(D), 
	                       .D_out(outB_to_inC), 
								  .S(S));
	
	// exponent, significand, fifth_bit
	wire [2:0] outC_to_inD_0;
	wire [3:0] outC_to_inD_1;
	wire outC_to_inD_2;
	count_zeros c_inst( .D_abs(outB_to_inC), 
							  .exponent(outC_to_inD_0), 
							  .significand(outC_to_inD_1), 
							  .fifth_bit(outC_to_inD_2));
	
	rounding r_inst(.exponent(outC_to_inD_0), 
						 .significand(outC_to_inD_1),
						 .fifth_bit(outC_to_inD_2),
						 .F(F), 
						 .E(E));
	
endmodule
