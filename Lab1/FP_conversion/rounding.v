`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:05 01/10/2020 
// Design Name: 
// Module Name:    rounding 
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
module rounding(exponent, significand, fifth_bit,
		F, E);
		input [2:0] exponent;
		input [3:0] significand;
		input fifth_bit;
		output reg [2:0] E;
		output reg [3:0] F;
		
		always @(exponent or significand or fifth_bit)
		begin
		
			if (fifth_bit == 0)
			begin
				E <= exponent;
				F <= significand;
			end
			
			else
			begin
			
				if (significand == 4'b1111)
				begin
				
					if (exponent == 3'b111)
					begin
						E <= exponent;
						F <= significand;
					end
					
					else
					begin
						E <= exponent + 1;
						F <= 4'b1000;
					end
				end
				
				else
				begin
					E <= exponent;
					F <= significand + 1;
				end
			end
		
		end

endmodule
