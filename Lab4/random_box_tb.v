`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:09:56 03/13/2020
// Design Name:   random_box
// Module Name:   Y:/Downloads/pmodjstk_demo_verilog 2/PmodJSTK_Demo/random_box_tb.v
// Project Name:  PmodJSTK_Demo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: random_box
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module random_box_tb;

	// Inputs
	reg clk;
	reg rst;
	reg create_new_box;
	reg [9:0] x_pos;
	reg [8:0] y_pos;

	// Outputs
	wire [9:0] x_box;
	wire [8:0] y_box;
	wire box_vga;

	// Instantiate the Unit Under Test (UUT)
	random_box uut (
		.clk(clk), 
		.rst(rst), 
		.create_new_box(create_new_box), 
		.x_pos(x_pos), 
		.y_pos(y_pos), 
		.x_box(x_box), 
		.y_box(y_box), 
		.box_vga(box_vga)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		create_new_box = 0;
		x_pos = 0;
		y_pos = 0;
		#10
		rst = 1;
		#10
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk = ~clk;
	end
	
	always begin
		#10;
		create_new_box = 1;
		#10;
		create_new_box = 0;
		#100;
		create_new_box = 1;
		#10;
		create_new_box = 0;
		#100;
		create_new_box = 1;
		#10
		create_new_box = 0;
    end  
endmodule

