`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Josh Sackos
// 
// Create Date:    07/11/2012
// Module Name:    PmodJSTK_Demo 
// Project Name: 	 PmodJSTK_Demo
// Target Devices: Nexys3
// Tool versions:  ISE 14.1
// Description: This is a demo for the Digilent PmodJSTK. Data is sent and received
//					 to and from the PmodJSTK at a frequency of 5Hz, and positional 
//					 data is displayed on the seven segment display (SSD). The positional
//					 data of the joystick ranges from 0 to 1023 in both the X and Y
//					 directions. Only one coordinate can be displayed on the SSD at a
//					 time, therefore switch SW0 is used to select which coordinate's data
//	   			 to display. The status of the buttons on the PmodJSTK are
//					 displayed on LD2, LD1, and LD0 on the Nexys3. The LEDs will
//					 illuminate when a button is pressed. Switches SW2 and SW1 on the
//					 Nexys3 will turn on LD1 and LD2 on the PmodJSTK respectively. Button
//					 BTND on the Nexys3 is used for resetting the demo. The PmodJSTK
//					 connects to pins [4:1] on port JA on the Nexys3. SPI mode 0 is used
//					 for communication between the PmodJSTK and the Nexys3.
//
//					 NOTE: The digits on the SSD may at times appear to flicker, this
//						    is due to small pertebations in the positional data being read
//							 by the PmodJSTK's ADC. To reduce the flicker simply reduce
//							 the rate at which the data being displayed is updated.
//
// Revision History: 
// 						Revision 0.01 - File Created (Josh Sackos)
//////////////////////////////////////////////////////////////////////////////////


// ============================================================================== 
// 										  Define Module
// ==============================================================================
module PmodJSTK_Demo(
	input CLK,					// 100Mhz onboard clock
	input RST,					// Button D
	input MISO,					// Master In Slave Out, Pin 3, Port JA
	input [2:0] SW,			// Switches 2, 1, and 0
	input btn_up,
	input btn_down,
	input btn_left,
	input btn_right,
	output SS,					// Slave Select, Pin 1, Port JA
	output MOSI,				// Master Out Slave In, Pin 2, Port JA
	output SCLK,				// Serial Clock, Pin 4, Port JA
	//output [2:0] LED,			// LEDs 2, 1, and 0
	output [3:0] AN,			// Anodes for Seven Segment Display
	output [6:0] SEG,			// Cathodes for Seven Segment Display
	output Hsync,       // horizontal sync output
	output Vsync,       // vertical sync output
	output [2:0] vgaRed,     // 3-bit VGA red output
	output [2:0] vgaGreen,   // 3-bit VGA green output
	output [1:0] vgaBlue    // 2-bit VGA blue output*/
    );

	// ===========================================================================
	// 										Port Declarations
	// ===========================================================================
			/*input CLK;					// 100Mhz onboard clock
			input RST;					// Button D
			input MISO;					// Master In Slave Out, Pin 3, Port JA
			input [2:0] SW;			// Switches 2, 1, and 0
			output SS;					// Slave Select, Pin 1, Port JA
			output MOSI;				// Master Out Slave In, Pin 2, Port JA
			output SCLK;				// Serial Clock, Pin 4, Port JA
			output [2:0] LED;			// LEDs 2, 1, and 0
			output [3:0] AN;			// Anodes for Seven Segment Display
			output [6:0] SEG;			// Cathodes for Seven Segment Display*/
			
			/*output Hsync,       // horizontal sync output
			output Vsync,       // vertical sync output
			output [2:0] vgaRed,     // 3-bit VGA red output
			output [2:0] vgaGreen,   // 3-bit VGA green output
			output [1:0] vgaBlue    // 2-bit VGA blue output*/

	// ===========================================================================
	// 							  Parameters, Regsiters, and Wires
	// ===========================================================================
			wire SS;						// Active low
			wire MOSI;					// Data transfer from master to slave
			wire SCLK;					// Serial clock that controls communication
			//reg [2:0] LED;				// Status of PmodJSTK buttons displayed on LEDs
			wire [3:0] AN;				// Anodes for Seven Segment Display
			wire [6:0] SEG;			// Cathodes for Seven Segment Display

			// Holds data to be sent to PmodJSTK
			wire [7:0] sndData;

			// Signal to send/receive data to/from PmodJSTK
			wire sndRec;

			// Data read from PmodJSTK
			wire [39:0] jstkData;

			// Signal carrying output data that user selected
			wire [9:0] posData;
			wire [9:0] posData_x;
			wire [9:0] posData_y;

	// ===========================================================================
	// 										Implementation
	// ===========================================================================


			//-----------------------------------------------
			//  	  			PmodJSTK Interface
			//-----------------------------------------------
			PmodJSTK PmodJSTK_Int(
					.CLK(CLK),
					.RST(RST),
					.sndRec(sndRec),
					.DIN(sndData),
					.MISO(MISO),
					.SS(SS),
					.SCLK(SCLK),
					.MOSI(MOSI),
					.DOUT(jstkData)
			);
			


			//-----------------------------------------------
			//  		Seven Segment Display Controller
			//-----------------------------------------------
		
			// 1 kHz Clock Divider
			parameter cntEndVal = 16'hC350;
			reg [15:0] clkCount = 16'h0000;
			reg DCLK;
			always @(posedge CLK) begin
				if(clkCount == cntEndVal) begin
						DCLK <= 1'b1;
						clkCount <= 16'h0000;
				end
				else begin
						DCLK <= 1'b0;
						clkCount <= clkCount + 1'b1;
				end
			end
			//------------------------------
			//	   Convert Binary to BCD
			//------------------------------
			wire [15:0] bcdData; //store joystick reading
			wire [15:0] bcdData_x; //store x joystick reading
			wire [15:0] bcdData_y; //store y joystick reading
			wire [15:0] toDisplay;
			
			assign toDisplay = (SW[2] == 1'b1)? bcdData: score;
			
			Binary_To_BCD BtoBCD(
					.CLK(CLK),
					.RST(RST),
					.START(DCLK),
					.BIN(posData),
					.BCDOUT(bcdData)
			);
			
			Binary_To_BCD X(
					.CLK(CLK),
					.RST(RST),
					.START(DCLK),
					.BIN(posData_x),
					.BCDOUT(bcdData_x)
			);
			Binary_To_BCD Y(
					.CLK(CLK),
					.RST(RST),
					.START(DCLK),
					.BIN(posData_y),
					.BCDOUT(bcdData_y)
			);
			
			ssdCtrl DispCtrl(
					.DCLK(DCLK),
					.RST(RST),
					.DIN(toDisplay),
					.AN(AN),
					.SEG(SEG)
			);
			
			

			//-----------------------------------------------
			//  			 Send Receive Generator
			//-----------------------------------------------
			ClkDiv_5Hz genSndRec(
					.CLK(CLK),
					.RST(RST),
					.CLKOUT(sndRec)
			);
			

			// Use state of switch 0 to select output of X position or Y position data to SSD
			assign posData = (SW[0] == 1'b1) ? {jstkData[9:8], jstkData[23:16]} : {jstkData[25:24], jstkData[39:32]};
			assign posData_x = {jstkData[25:24], jstkData[39:32]};
			assign posData_y = {jstkData[9:8], jstkData[23:16]};

			// Data to be sent to PmodJSTK, lower two bits will turn on leds on PmodJSTK
			assign sndData = {8'b100000, {SW[1], SW[2]}};
			
		wire clk_25mhz;
		clock_divider _clock_divider( .clk(CLK) , .rst(RST), .clk_25mhz(clk_25mhz));
		
		wire [9:0] x_counter;  // current pixel x position: 10-bit value: 0-1023
		wire [8:0] y_counter;  // current pixel y position:  9-bit value: 0-511
		vga640x480 vga_display (  .i_clk(CLK),
								  .i_pix_stb(clk_25mhz),
								  .i_rst(RST),
								  .o_hs(Hsync), 
								  .o_vs(Vsync), 
								  .o_x(x_counter), 
								  .o_y(y_counter));
		
		wire [9:0] box_x;
		wire [8:0] box_y;
		wire create_new_box;
		wire snake_vga;
		wire box_vga;
		snake_body _snake_body( .clk(CLK), 
									.rst(RST),
									/*.btn_right(btn_right),
									.btn_left(btn_left),
									.btn_up(btn_up),
									.btn_down(btn_down),*/
									.bcdData_x(bcdData_x),
									.bcdData_y(bcdData_y),
									.posData_x(posData_x),
									.posData_y(posData_y),
									.box_x(box_x),
									.box_y(box_y),
									.x_pos(x_counter),
									.y_pos(y_counter),
									.create_new_box(create_new_box),
									.snake_vga(snake_vga));
									
		random_box _random_box(.clk(CLK),
								  .rst(RST),
								  .create_new_box(create_new_box),
								  .x_pos(x_counter),
								  .y_pos(y_counter),
								  .x_box(box_x),
								  .y_box(box_y),
								  .box_vga(box_vga));


		wire [15:0] score;
		score_count _score_count(.clk(CLK),
									 .rst(RST),
									 .create_new_box(create_new_box),
									 .score(score));
		
		assign vgaRed = (snake_vga)?3'b111 : 3'b000;
		assign vgaGreen = (box_vga)?3'b111 : 3'b000;
		assign vgaBlue = 0;
		
endmodule
