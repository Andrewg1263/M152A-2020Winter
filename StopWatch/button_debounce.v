`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:55 02/11/2020 
// Design Name: 
// Module Name:    button_debounce 
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
//module button_debounce(input button, clk_400hz, output d_button);
module button_debounce(input btn,clk,output btn_out);

wire slow_clk_en;
wire Q1,Q2,Q2_bar;

slow_clk t1(clk,btn,slow_clk_en);

my_dff_en d1(clk,slow_clk_en,btn,Q1);
my_dff_en d2(clk,slow_clk_en,Q1,Q2);

assign Q2_bar = ~Q2;
assign btn_out = Q1 & Q2_bar & slow_clk_en;

endmodule

// Slow clock for downsampling 
module slow_clk(input clk_100m,btn, output slow_clk_en);
    reg [26:0]counter=0;
    always @(posedge clk_100m)
    begin
		//counter <= (counter>=249999)?0:counter+1;
		if(counter >= 249999)
			counter <= 0;
		else
			counter <= counter + 1;
		//counter <= (counter>=999)?0:counter+1;
    end
    //assign slow_clk_en = (counter == 249999)?1'b1:1'b0;
	 assign slow_clk_en = (counter == 249999)?1'b1:1'b0;
endmodule

// Dflipflop
module my_dff_en(input dff_clk, slow_clk,D, output reg Q=0);
    always @ (posedge dff_clk) begin
  if(slow_clk==1) 
           Q <= D;
    end
endmodule 