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
module mode0( clk, reset, led_1, led_2, led_3, led_4,
	leda,ledb,ledc,ledd,lede,ledf,ledg
    );
	 
	input clk;
	input reset;
	output leda;
	output ledb;
	output ledc;
	output ledd;
	output lede;
	output ledf;
	output ledg;
	output led_1;
	output led_2;
	output led_3;
	output led_4;
	
	reg [26:0] count;
	reg [3:0] counter;
	reg [6:0] seg_data;
	reg [3:0] LED = {led_1, led_2, led_3, led_4}
	
	
	
	
	always @(posedge clk )
		  begin
			if (reset ==0)
				begin
				 count<=27'd0;
				 counter <= 4'b0;
				end  
			else if (count==27'd50000000)
			   begin
					count <=27'd0;
					if (counter < 9) counter <= counter +1;
					else  counter <= 0;
				end
			else
				count<=count+1;
		  end
		end

	always @(counter)
	begin
		case (counter)
		4'b0000:seg_data=7'b0000001; // 0
		4'b0000:seg_data=7'b1001111; // 1
		4'b0010:seg_data=7'b0010010; // 2
		4'b0011:seg_data=7'b0000110; // 3
		4'b0100:seg_data=7'b1001100; // 4
		4'b0101:seg_data=7'b0100100; // 5
		4'b0110:seg_data=7'b0100000; // 6
		4'b0111:seg_data=7'b1110000; // 7
		4'b1000:seg_data=7'b0000000; // 8
		4'b1001:seg_data=7'b0000100; // 9
		endcase
	end
	
 
	assign leda=seg_data[6];
	assign ledb=seg_data[5];
	assign ledc=seg_data[4];
	assign ledd=seg_data[3];
	assign lede=seg_data[2];
	assign ledf=seg_data[1];
	assign ledg=seg_data[0];
	
	assign led_1 = 1;
	assign led_2 = 1;
	assign led_3 = 0;
	assign led_4 = 0;


endmodule
