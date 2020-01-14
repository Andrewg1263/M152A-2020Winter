`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:04 01/10/2020 
// Design Name: 
// Module Name:    count_zeros 
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
module count_zeros( D_abs, 
	exponent, significand, fifth_bit);
	input [11:0] D_abs;
	output wire [2:0] exponent;
	output wire [3:0] significand;
	output wire fifth_bit;
	
	wire [7:0] d;
	wire [2:0] Q;
	wire [3:0] y;
	
	assign d = D_abs[11:4];
	assign Q[0] = (~d[7])& (((~d[5]) & ( ((~d[3])&(~d[1])&d[0]) | ((~d[3])&d[2]) | d[4] ) ) | d[6] );
	assign Q[1] = (~d[7])& ( (~d[6]) & ( (~d[3])&(~d[2])&(d[0] | d[1]) | d[4] | d[5] ) );
	assign Q[2] = (~d[7])& (~d[6])&(~d[5])&(~d[4])&(d[0]|d[1]|d[2]|d[3]);
	//assign Q[3] = 0;
	
	// exponent = 8 - Q, when sign bit is still 1, it can only be 12'b10 0000 0000
	assign exponent = (D_abs[11] == 0)? 8-Q : 7;						

	
	// significant bits
	
	
	assign significand =   	(Q == 3'b001) ? D_abs[10:7] :
									(Q == 3'b010) ? D_abs[9:6] :
									(Q == 3'b011) ? D_abs[8:5] :
									(Q == 3'b100) ? D_abs[7:4] :
									(Q == 3'b101) ? D_abs[6:3] :
									(Q == 3'b110) ? D_abs[5:2] :
									(Q == 3'b111) ? D_abs[4:1] :
									// After two's complement, if the sign bit is still one, it could only be 12'b1000 0000 0000
									// Else save the last four bits to sig
									(D_abs[11] == 1 )? 4'b1111:
									 D_abs[3:0];
									
	// fifth_bit
	assign fifth_bit = 		(Q == 3'b001) ? D_abs[6] :
									(Q == 3'b010) ? D_abs[5] :
									(Q == 3'b011) ? D_abs[4] :
									(Q == 3'b100) ? D_abs[3] :
									(Q == 3'b101) ? D_abs[2] :
									(Q == 3'b110) ? D_abs[1] :
									(Q == 3'b111) ? D_abs[0] :
									1'b0;
endmodule
