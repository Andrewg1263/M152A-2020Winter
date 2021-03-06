

// TOOL:     vlog2tf
// DATE:     Wed Apr 03 14:32:06 2013
 
// TITLE:    Lattice Semiconductor Corporation
// MODULE:   DeBounce
// DESIGN:   DeBounce
// FILENAME: DeBounce_tf.v
// PROJECT:  Unknown
// VERSION:  2.0
// This file is auto generated by the Diamond


`timescale 1 ns / 100 ps

// Define Module for Test Fixture
module DeBounce_tf();

// Inputs
    reg clk;
    reg button_in;


// Outputs
    wire DB_out;


// Bidirs


// Instantiate the UUT
// Please check and add your parameters manually
    button_debounce UUT (
        .clk(clk), 
        .btn(button_in), 
        .btn_out(DB_out)
        );


// Initialize Inputs
// You can add your stimulus here
    initial begin
			$display ($time, " << Starting the Simulation >> ");
            clk = 1'b0;
            button_in = 1'b0;
    end


	always 
			#10 clk = ~clk;    // every ten nanoseconds invert the clock

	always 
		begin
			#40000 button_in = 1'b1;
			
			#400 button_in = 1'b0;		
			
			#800 button_in = 1'b1;	
			
			#800 button_in = 1'b0;				
			
			#800 button_in = 1'b1;

			#400000 button_in = 1'b0;
			
			#4000 button_in = 1'b1;		
			
			#40000 button_in = 1'b0;

			#400 button_in = 1'b1;
			
			#800 button_in = 1'b0;		
			
			#800 button_in = 1'b1;

			#800 button_in = 1'b0;
			
			#40000 button_in = 1'b1;		
			
			#4000 button_in = 1'b0;

		end





endmodule // DeBounce_tf