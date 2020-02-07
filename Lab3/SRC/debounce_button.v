`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:29 02/04/2020 
// Design Name: 
// Module Name:    debounce_button 
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
module debounce_button(
    input btn, input clk_4,
    output btn_debounced
    );
	 
wire Q1, Q2, Q2_bar;
DFF d0(clk_4, pb_1, Q1 );
DFF d1(clk_4, Q1, Q2 );
assign Q2_bar = ~Q2;
assign pb_out = Q1 & Q2_bar;

endmodule


module DFF(input DFF_CLOCK, D, output reg Q);

    always @ (posedge DFF_CLOCK) begin
        Q <= D;
    end

endmodule