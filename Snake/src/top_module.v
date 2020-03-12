`timescale 1ns / 1ps

module top_module(
	input clk,             // board clock: 100 MHz on Arty/Basys3/Nexys
	input rst,         	  // reset button
	input btn_up,
	input btn_down,
	input btn_left,
	input btn_right,
	input [1:0] SW,
	
	input MISO,
	//SW,
	output wire SS,
	output wire MOSI,
	output wire SCLK,
	
	output led,
	output wire Hsync,       // horizontal sync output
	output wire Vsync,       // vertical sync output
	output wire [2:0] vgaRed,     // 3-bit VGA red output
	output wire [2:0] vgaGreen,   // 3-bit VGA green output
	output wire [1:0] vgaBlue,    // 2-bit VGA blue output
	
	// seven segment display
	output [6:0] seg,
   output [3:0] AN
	);
	
	// ===========================================================================
	// 							  Parameters, Regsiters, and Wires
	// ===========================================================================
			// Holds data to be sent to PmodJSTK
			wire [7:0] sndData;
			// Signal to send/receive data to/from PmodJSTK
			wire sndRec;
			// Data read from PmodJSTK
			wire [39:0] jstkData;
			// Signal carrying output data that user selected
			wire [9:0] posData_x;
			wire [9:0] posData_y;
	// ===========================================================================
	// 										Implementation
	// ===========================================================================


	//-----------------------------------------------
	//  	  			PmodJSTK Interface
	//-----------------------------------------------
	PmodJSTK PmodJSTK_Int(
			.CLK(clk),
			.RST(rst),
			.sndRec(sndRec),
			.DIN(sndData),
			.MISO(MISO),
			.SS(SS),
			.SCLK(SCLK),
			.MOSI(MOSI),
			.DOUT(jstkData)
	);
	// Use state of switch 0 to select output of X position or Y position data to SSD
	assign posData_x = {jstkData[25:24], jstkData[39:32]};
	assign posData_y = {jstkData[9:8], jstkData[23:16]};
	assign led = (posData_x <= 237)? 1 : 0;


	wire clk_25mhz;
	wire DCLK;
	clock_divider _clock_divider( .clk(clk) , .rst(rst), .clk_25mhz(clk_25mhz), .DCLK(DCLK));
	
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
									.posData_x(posData_x),
									.posData_y(posData_y),
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
	
	
	wire [15:0] score;
	score_count _score_count(.clk(clk),
									 .rst(rst),
									 .create_new_box(create_new_box),
									 .score(score));

//------------------------------
//	   Convert Binary to BCD
//------------------------------
	wire [9:0] BIN;
	wire [15:0] BCDOUT;
	// switch 10 to x, switch 01 to y
	assign BIN = ( {SW[1], SW[0]} == 2'b10 )? posData_x : ( {SW[1], SW[0]} == 2'b01 ) ? posData_y: 16'd0;
	// switch 00 to score, else to x or y
	Binary_To_BCD BtoBCD(
			.CLK(clk),
			.RST(rst),
			.START(DCLK),
			.BIN(BIN),
			.BCDOUT(BCDOUT));
			
	wire [15:0] bcdData;
	assign bcdData = ( {SW[1], SW[0]} == 2'b00 )? score: BCDOUT;			
	ssdCtrl _ssdCtrl(//.CLK(clk),
						  .DCLK(DCLK),
						  .RST(rst),
						  .DIN(bcdData),
						  .AN(AN),
						  .SEG(seg));								 

	wire signal;
	assign signal = ( x_counter >= 100 && y_counter >= 100 && x_counter <= (100+7) && y_counter <= (100+7) );
	//assign led = (btn_right | btn_left | btn_up | btn_down);
	
	assign vgaRed = (snake_vga)?3'b111 : 3'b000;
	assign vgaGreen = (box_vga)?3'b111 : 3'b000;
	assign vgaBlue = 0;

endmodule