`timescale 1ns / 1ps

module top_module(
	input clk,             // board clock: 100 MHz on Arty/Basys3/Nexys
	input rst,         	  // reset button
	input btn_up,
	input btn_down,
	input btn_left,
	input btn_right,
	output wire Hsync,       // horizontal sync output
	output wire Vsync,       // vertical sync output
	output wire [2:0] vgaRed,     // 3-bit VGA red output
	output wire [2:0] vgaGreen,   // 3-bit VGA green output
	output wire [1:0] vgaBlue     // 2-bit VGA blue output
	);

	wire clk_25mhz;
	clock_divider _clock_divider( .clk(clk) , .rst(rst), .clk_25mhz(clk_25mhz));

	wire [9:0] x_counter;  // current pixel x position: 10-bit value: 0-1023
	wire [8:0] y_counter;  // current pixel y position:  9-bit value: 0-511

	vga640x480 vga_display (  .i_clk(clk),
									  .i_pix_stb(clk_25mhz),
									  .i_rst(rst),
									  .o_hs(Hsync), 
									  .o_vs(Vsync), 
									  .o_x(x_counter), 
									  .o_y(y_counter));
	
	wire [9:0] box_x;
	wire [8:0] box_y;
	wire create_new_box;
	wire snake_vga;
	wire box_vga;
	snake_body _snake_body( .clk(clk), 
									.rst(rst),
									.btn_right(btn_right),
									.btn_left(btn_left),
									.btn_up(btn_up),
									.btn_down(btn_down),
									.box_x(box_x),
									.box_y(box_y),
									.x_pos(x_counter),
									.y_pos(y_counter),
									.create_new_box(create_new_box),
									.snake_vga(snake_vga));
	
	random_box _random_box(.clk(clk),
								  .rst(rst),
								  .create_new_box(create_new_box),
								  .x_pos(x_counter),
								  .y_pos(y_counter),
								  .x_box(box_x),
								  .y_box(box_y),
								  .box_vga(box_vga));
	wire signal;
	assign signal = ( x_counter >= 100 && y_counter >= 100 && x_counter <= (100+7) && y_counter <= (100+7) );
	
	assign vgaRed = (snake_vga)?3'b111 : 3'b000;
	assign vgaGreen = (box_vga)?3'b111 : 3'b000;
	assign vgaBlue = 0;

endmodule