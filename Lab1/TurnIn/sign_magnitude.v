`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:01 01/10/2020 
// Design Name: 
// Module Name:    sign_magnitude 
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
module sign_magnitude( D_in, D_out, S
    );
	 input [11:0] D_in;
	 output wire[11:0] D_out;
	 output wire S;
	 
	 assign S = D_in[11];
	 assign D_out = (S==1'b1)? ~D_in + 1 : D_in;

endmodule