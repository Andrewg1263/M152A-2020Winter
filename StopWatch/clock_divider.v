`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:53 02/09/2020 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(
    input sclk,
    input rst,
    output reg clk_1hz,
    output reg clk_2hz,
    output reg clk_400hz
    );
	 
	 reg[25:0] counter_1hz;
	 reg[25:0] counter_2hz;
	 reg[17:0] counter_400hz;
	 
	 always@(posedge sclk)
	 begin
		if(rst)
			counter_1hz <=0;
		else
		begin
			if(counter_1hz == 26'h2FAF080) //100, 000, 000 / 2 = 50, 000, 000
				clk_1hz = ~clk_1hz;
			else
				counter_1hz <= counter_1hz + 1;
		end
	 end
	 
	 always@(posedge sclk)
	 begin
		if(rst)
			counter_2hz <=0;
		else
		begin
			if(counter_2hz == 26'h17D7840) //100, 000, 000 / 4 = 25, 000, 000
				clk_2hz = ~clk_2hz;
			else
				counter_2hz <= counter_2hz + 1;
		end
	 end
	 
	 always@(posedge sclk)
	 begin
		if(rst)
			counter_400hz <=0;
		else
		begin
			if(counter_400hz == 18'h1E848) //100, 000, 000 / 800 = 125, 000
				clk_400hz = ~clk_400hz;
			else
				counter_400hz <= counter_400hz + 1;
		end
	 end


endmodule
