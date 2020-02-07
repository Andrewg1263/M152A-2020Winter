`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:45 01/30/2020 
// Design Name: 
// Module Name:    mode0 
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
module mode0( reset, clk, AN,
				  led
				);
	
	input wire reset, clk;
	output reg [6:0] led;
	output reg [3:0] AN;
	
	wire clk_1, clk_2, clk_400;
	
	reg [3:0]  number;
	reg [6:0]  seg_data;
	
	wire [3:0] minutes_seconds;
	
	// clock divider
	clock		_clock( .reset(reset), .clk(clk),
						  .clk_1(clk_1), .clk_4(clk_4), .clk_400(clk_400)
						 );
						 
	FourLedControl _fourledcontrol(
    );
	 
	Counter _counter (.reset(reset), .clk_1(clk_1),
							.minutes_seconds(minutes_seconds));
		
	always @ (posedge clk_2 )
	begin
		if (reset == 1 )
		begin
			number <= 4'b0;
		end
		
		else
		begin
			if (number < 9) number <= number + 1;
			else number <= 0;
		end

	end

//	single 7-segment led control
	always @(number)
	begin
		case (number)
		4'b0000:seg_data=7'b0000001; // 0
		4'b0001:seg_data=7'b1001111; // 1
		4'b0010:seg_data=7'b0010010; // 2
		4'b0011:seg_data=7'b0000110; // 3
		4'b0100:seg_data=7'b1001100; // 4
		4'b0101:seg_data=7'b0100100; // 5
		4'b0110:seg_data=7'b0100000; // 6
		4'b0111:seg_data=7'b0001111; // 7
		4'b1000:seg_data=7'b0000000; // 8
		4'b1001:seg_data=7'b0000100; // 9
		endcase
	end
	
	reg [1:0] AN_determine;
	
	always @ (posedge clk)begin 
		if(reset)
			AN_determine <= 0;
		case(AN_determine)
			2'b00: AN = 4'b1110;
			2'b01: AN = 4'b1101;
			2'b10: AN = 4'b1011;
			2'b11: AN = 4'b0111;
		endcase
		led = seg_data;
		AN_determine <= AN_determine + 1;
	end


endmodule
