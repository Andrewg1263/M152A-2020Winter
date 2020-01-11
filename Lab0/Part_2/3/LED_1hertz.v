`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:13 01/07/2020 
// Design Name: 
// Module Name:    LED_1hertz 
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
module LED_1hertz(
    input wire clk, rst,
    output reg led
    );
	
	reg [26:0] counter;
	
	always @ (posedge (clk) )
	begin
		if(rst == 1) begin
			counter <= 0;
			led <= 0;
			end
		// led turns on for 1/2 sec
		else if (counter == 50000000) begin //50, 000, 000 
			counter <=0;
			led <= ~led;
			end
		else begin
			counter <= counter + 1;
			end
	end
	

endmodule
