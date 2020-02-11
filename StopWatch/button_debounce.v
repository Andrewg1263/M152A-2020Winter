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
module button_debounce(
	input button,
	input clk,
	output button_state
    );
reg button_state_reg = 0;

reg [15:0] counter;

always @ (posedge clk)
begin
	if(button == 0) //If the button is idle, not pressed
	begin
		counter <= 0;
		button_state_reg <= 0;
	end
	else
	begin
		counter <= counter + 1'b1;
		if(counter == 16'hffff) //We hit counter max (all 1's)
		begin
			button_state_reg <= 1;
			counter <= 0;
		end
	end
end

assign button_state = button_state_reg;


endmodule
