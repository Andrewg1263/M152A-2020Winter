`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:23 02/03/2020 
// Design Name: 
// Module Name:    clock 
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

module clock( reset, clk,
	clk_1, clk_4, clk_400, 
    );
	
	input reset, clk;
	output reg clk_1, clk_4, clk_400;
	reg [26:0] count_1;
	reg [26:0] count_4;
	reg [26:0] count_400;
	
	always @ ( posedge(clk) )
		begin
		
			if(reset == 1) begin
				count_1 <= 0;
				count_4 <= 0;
				count_400 <= 0;
				clk_1 <= 0;
				clk_4 <= 0;
				clk_400 <= 0;
			end
			
			else
			begin
				if(count_1 == 50000000) //100 million / 2
					begin
						count_1 <= 0;
						clk_1 <= ~clk_1;
					end
					
				else if(count_4 == 125000) //100 million / 4
					begin
						count_4 <= 0;
						clk_4 <= ~clk_4;
					end
					
				else if(count_400 == 1250) //100 million / 800
					begin
						count_400 <= 0;
						clk_400 <= ~clk_400;
					end
					
				else 
				begin
					count_1 <= count_1 + 1;
					count_4 <= count_4 + 1;
					count_400 <= count_400 + 1;
				end
				
			end
		end
	
endmodule
