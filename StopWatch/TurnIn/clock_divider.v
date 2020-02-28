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
    output clk_1hz,
    output clk_2hz,
    output clk_400hz
    );
	 
	 wire clk_1hz = 0; // one pulse per second
    wire clk_2hz = 0; // two pulse per second
    reg clk_400hz = 0; // 50% duty cycle
	 
	 reg[31:0] counter_1hz = 32'd0;
	 reg[31:0] counter_2hz = 32'd0;
	 reg[31:0] counter_400hz = 32'd0;
	
	
	 // 1 hz
	 always @(posedge sclk)
    begin
	 if(rst)
		counter_1hz <= 0;
	 else
		//counter_1hz <= (counter_1hz>=99999999)?0:counter_1hz+1;
		counter_1hz <= (counter_1hz>=9)?0:counter_1hz+1;
    end
	 //assign clk_1hz = (counter_1hz == 99999999)?1'b1:1'b0;
	 assign clk_1hz = (counter_1hz == 9)?1'b1:1'b0;
	 
	 // 2 hz
	 always @(posedge sclk)
    begin 
	 if(rst)
		counter_2hz <= 0;
	 else
		//counter_2hz <= (counter_2hz>=49999999)?0:counter_2hz+1;
		counter_2hz <= (counter_2hz>=4)?0:counter_2hz+1;
    end
	 //assign clk_2hz = (counter_2hz == 49999999)?1'b1:1'b0;
	 assign clk_2hz = (counter_2hz == 4)?1'b1:1'b0;
	 
	 // 400 hz
	 always@(posedge sclk)
	 begin
		if(rst)
			counter_400hz <=0;
		else
		begin
			if(counter_400hz == 124999) //100, 000, 000 / 800 = 125, 000
			begin
				clk_400hz <= ~clk_400hz;
				counter_400hz <= 0;
			end
			else
				counter_400hz <= counter_400hz + 1;
		end
	 end


endmodule

/*	 always@(posedge sclk)
	 begin
		if(rst)
			counter_1hz <=0;
		else
		begin
			if(counter_1hz == 100000000-1) //100, 000, 000 / 2 = 50, 000, 000
			begin
				clk_1hz <= 1;
				counter_1hz <= 0;
			end
			else
				counter_1hz <= counter_1hz + 1;
		end
	 end*/
	 
/*	 always@(posedge sclk)
	 begin
		if(rst)
			counter_2hz <=0;
		else
		begin
			if(counter_2hz == 25000000-1) //100, 000, 000 / 4 = 25, 000, 000
			begin
				clk_2hz <= ~clk_2hz;
				counter_2hz <= 0;
			end
			else
				counter_2hz <= counter_2hz + 1;
		end
	 end*/