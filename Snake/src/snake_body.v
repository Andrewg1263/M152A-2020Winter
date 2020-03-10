`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:25 02/27/2020 
// Design Name: 
// Module Name:    snake_body 
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
module snake_body( 
	input clk,
	input rst,
	// buttons to control directions
	input btn_right,
	input btn_left,
	input btn_up,
	input btn_down,
	// box position for collision detection
	input [9:0]box_x,
	input [8:0]box_y,
	// VGA counter
	input [9:0]x_pos,
	input [8:0]y_pos,
	// signal for create a new box, the old box has been eaten
	output reg create_new_box,
	output  snake_vga
    );
	
	//FSM
	localparam Up = 2'b00;
	localparam Down = 2'b01;
	localparam Left = 2'b10;
	localparam Right = 2'b11;
	reg [1:0] direction;
	
	// assign directions, change to corresponding dir if not in reverse dir
	always@(posedge clk)
	begin
		if(rst)
			direction <= Up;
		else
		begin
			if(btn_right) 
				direction <= (direction != Left)?   Right : direction;
			else if(btn_left)
				direction <= (direction != Right)?  Left : direction;
			else if(btn_up)
				direction <= (direction != Down)?   Up : direction;
			else if(btn_down)
				direction <= (direction != Up)?     Down : direction;
		end
	end
	
	reg [25:0]counter;
	wire clk_halfhz;
	
	always@(posedge clk)
	begin
		if(rst)
			counter <= 25'd0;
		else 
			begin
			if(body_collision) counter <= 25'd0;
			//else if(counter == 49999999) counter <= 25'd0;
			else if(counter == 20000000-1) counter <= 25'd0;
			else counter <= counter + 25'd1;
			end
	end
	//assign clk_halfhz = (counter == 49999999)? 1 : 0;
	assign clk_halfhz = (counter == 20000000-1 )? 1 : 0;
	
	// maximum length of snake = 12
	reg[9:0] snake_x [0:11];
	reg[8:0] snake_y [0:11];
	always@(posedge clk)
	begin
		if(rst)
		begin
		// head initialized at 400,400
			snake_x [0] <= 10'd400;
			snake_y [0] <= 9'd400;
		end
		else
		begin
				// for boarder detection
				if(clk_halfhz)
				begin
					case(direction)
						Right: 
						begin  
							if(snake_x[0] == 10'd640)
								snake_x[0]  <= 10'd0;
							else
								snake_x[0] <= snake_x[0] + 10'd10;
						end
						Left:
						begin
							if(snake_x[0] == 10'd0)
								snake_x[0]  <=  10'd630;
							else
								snake_x[0]  <=  snake_x[0]  -   10'd10;
						end
						Up:
						begin
							if(snake_y[0] == 9'd0)
								snake_y[0] <= 9'd480;
							else
								snake_y[0] <= snake_y[0] - 9'd10;
						end
						Down:
						begin
							if(snake_y[0] == 9'd480)
								snake_y[0] <= 9'd10;
							else
								snake_y[0] <= snake_y[0] + 9'd10;
						end
						endcase
					end
		end
	end
	
	// for snake body
	always@(posedge clk or posedge rst)
	begin
		if(rst) 
		begin
			snake_x[1] <= 10'd0;
			snake_y[1] <= 10'd0;
			snake_x[2] <= 10'd0;
			snake_y[2] <= 10'd0;
			snake_x[3] <= 10'd0;
			snake_y[3] <= 10'd0;
			snake_x[4] <= 10'd0;
			snake_y[4] <= 10'd0;
			snake_x[5] <= 10'd0;
			snake_y[5] <= 10'd0;
			snake_x[6] <= 10'd0;
			snake_y[6] <= 10'd0;
			snake_x[7] <= 10'd0;
			snake_y[7] <= 10'd0;
			snake_x[8] <= 10'd0;
			snake_y[8] <= 10'd0;
			snake_x[9] <= 10'd0;
			snake_y[9] <= 10'd0;
			snake_x[10] <= 10'd0;
			snake_y[10] <= 10'd0;
			snake_x[11] <= 10'd0;
			snake_y[11] <= 10'd0;
		end
		else if(clk_halfhz)
		begin
			snake_x[1] <= snake_x[0];
			snake_y[1] <= snake_y[0];
			snake_x[2] <= snake_x[1];
			snake_y[2] <= snake_y[1];
			snake_x[3] <= snake_x[2];
			snake_y[3] <= snake_y[2];
			snake_x[4] <= snake_x[3];
			snake_y[4] <= snake_y[3];
			snake_x[5] <= snake_x[4];
			snake_y[5] <= snake_y[4];
			snake_x[6] <= snake_x[5];
			snake_y[6] <= snake_y[5];
			snake_x[7] <= snake_x[6];
			snake_y[7] <= snake_y[6];
			snake_x[8] <= snake_x[7];
			snake_y[8] <= snake_y[7];
			snake_x[9] <= snake_x[8];
			snake_y[9] <= snake_y[8];
			snake_x[10] <= snake_x[9];
			snake_y[10] <= snake_y[9];
			snake_x[11] <= snake_x[10];
			snake_y[11] <= snake_y[10];
		end
	end
	
	// box collision detection
	reg[3:0] length;
	always@(posedge clk)
	begin
		if(rst) 
		begin 
			length <= 4'd1;
			create_new_box <= 1'd0;
		end
		else 
		begin
		if(create_new_box) 
			create_new_box <= 1'd0;
		else if(clk_halfhz)
		begin
			//if(create_new_box) create_new_box <= 1'd0;
			// box collision
			if(snake_x[0] == box_x && snake_y[0] == box_y) 
			begin
				create_new_box <= 1'b1;
				if(length < 4'd12)
					length <= length + 4'd1;
				else 
					length <= length;
			end
		end
		end
	end
	
	reg body_collision;
	always@(posedge clk)
	begin
		if( snake_x[0]==snake_x[1] && snake_y[0]==snake_y[1] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[2] && snake_y[0]==snake_y[2] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[3] && snake_y[0]==snake_y[3] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[4] && snake_y[0]==snake_y[4] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[5] && snake_y[0]==snake_y[5] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[6] && snake_y[0]==snake_y[6] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[7] && snake_y[0]==snake_y[7] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[8] && snake_y[0]==snake_y[8] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[9] && snake_y[0]==snake_y[9] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[10] && snake_y[0]==snake_y[10] ) body_collision <= 1;
		else if( snake_x[0]==snake_x[11] && snake_y[0]==snake_y[11] ) body_collision <= 1;
		else
			body_collision <= 0;
	end
	
	assign snake_vga =( x_pos > snake_x[0] && y_pos > snake_y[0] && x_pos < (snake_x[0]+10) && y_pos < (snake_y[0]+10) )||
							( x_pos > snake_x[1] && y_pos > snake_y[1] && x_pos < (snake_x[1]+10) && y_pos < (snake_y[1]+10) && length > 4'd1)||
							( x_pos > snake_x[2] && y_pos > snake_y[2] && x_pos < (snake_x[2]+10) && y_pos < (snake_y[2]+10) && length > 4'd2)||
							( x_pos > snake_x[3] && y_pos > snake_y[3] && x_pos < (snake_x[3]+10) && y_pos < (snake_y[3]+10) && length > 4'd3)||
							( x_pos > snake_x[4] && y_pos > snake_y[4] && x_pos < (snake_x[4]+10) && y_pos < (snake_y[4]+10) && length > 4'd4)||
							( x_pos > snake_x[5] && y_pos > snake_y[5] && x_pos < (snake_x[5]+10) && y_pos < (snake_y[5]+10) && length > 4'd5)||
							( x_pos > snake_x[6] && y_pos > snake_y[6] && x_pos < (snake_x[6]+10) && y_pos < (snake_y[6]+10) && length > 4'd6)||
							( x_pos > snake_x[7] && y_pos > snake_y[7] && x_pos < (snake_x[7]+10) && y_pos < (snake_y[7]+10) && length > 4'd7)||
							( x_pos > snake_x[8] && y_pos > snake_y[8] && x_pos < (snake_x[8]+10) && y_pos < (snake_y[8]+10) && length > 4'd8)||
							( x_pos > snake_x[9] && y_pos > snake_y[9] && x_pos < (snake_x[9]+10) && y_pos < (snake_y[9]+10) && length > 4'd9)||
							( x_pos > snake_x[10] && y_pos > snake_y[10] && x_pos < (snake_x[10]+10) && y_pos < (snake_y[10]+10) && length > 4'd10)||
							( x_pos > snake_x[11] && y_pos > snake_y[11] && x_pos < (snake_x[11]+10) && y_pos < (snake_y[11]+10) && length > 4'd11);

endmodule
