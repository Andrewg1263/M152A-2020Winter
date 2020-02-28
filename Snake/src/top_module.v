`timescale 1ns / 1ps

module top_module(
	input wire clk,             // board clock: 100 MHz on Arty/Basys3/Nexys
	input wire rst,         // reset button
	output wire Hsync,       // horizontal sync output
	output wire Vsync,       // vertical sync output
	output wire [2:0] vgaRed,    // 4-bit VGA red output
	output wire [2:0] vgaGreen,    // 4-bit VGA green output
	output wire [1:0] vgaBlue     // 4-bit VGA blue output
	);

	//wire rst = RST_BTN;  // reset is active high on Basys3 (BTNC)

	wire clk_25mhz;
	clock_divider _clock_divider( .clk(clk) , .rst(rst), .clk_25mhz(clk_25mhz));

	wire [9:0] x;  // current pixel x position: 10-bit value: 0-1023
	wire [8:0] y;  // current pixel y position:  9-bit value: 0-511

	vga640x480 display (
	  .i_clk(clk),
	  .i_pix_stb(clk_25mhz),
	  .i_rst(rst),
	  .o_hs(Hsync), 
	  .o_vs(Vsync), 
	  .o_x(x), 
	  .o_y(y)
	);

	// Four overlapping squares
	//wire sq_a, sq_b, sq_c, sq_d;
	//assign sq_a = ((x > 0) & (y >  0) & (x < 640) & (y < 480)) ? 1 : 0;
	//assign sq_b = ((x > 200) & (y > 120) & (x < 220) & (y < 140)) ? 1 : 0;
	//assign sq_c = ((x > 280) & (y > 200) & (x < 440) & (y < 360)) ? 1 : 0;
	//assign sq_d = ((x > 360) & (y > 280) & (x < 520) & (y < 440)) ? 1 : 0;
	wire sq_b;
	assign sq_b = ((x > x_pos) & (y > y_pos) & (x < x_pos+5) & (y < y_pos+5)) ? 1 : 0;

/*	assign vgaRed = (sq_b)?3'b111 : 3'b000;         // square b is red
	assign vgaGreen = (sq_a | sq_d)? 3'b111 : 3'b000;  // squares a and d are green
	assign vgaBlue = (sq_c)? 2'b11 : 2'b00;         // square c is blue*/
	wire [9:0] x_pos;
	wire [8:0] y_pos;
	random_grid _random_grid(.clk(clk), .x(x_pos), .y(y_pos));
	
	assign vgaRed = (sq_b)?3'b111 : 3'b000;         // square b is red
	assign vgaGreen = 0;
	assign vgaBlue = 0;

endmodule