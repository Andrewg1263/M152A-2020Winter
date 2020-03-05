`timescale 1ns / 1ps
module random_box(
	input clk,
	input rst,
	input create_new_box,
	input [9:0] x_pos,
	input [8:0] y_pos,
	output wire [9:0] x_box, 
	output wire [8:0] y_box,
	output wire box_vga);

	// generate random numbers, store in rand_num
	reg [8:0]rand_num;
	always@(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			rand_num <= 9'd359;
		end
		else 
		begin
			rand_num[0] <= rand_num[8];
			rand_num[1] <= rand_num[0];
			rand_num[2] <= rand_num[1];
			rand_num[3] <= rand_num[2];
			rand_num[4] <= rand_num[3]^rand_num[8];
			rand_num[5] <= rand_num[4]^rand_num[8];
			rand_num[6] <= rand_num[5]^rand_num[8];
			rand_num[7] <= rand_num[6];
			rand_num[8] <= rand_num[7];
		end
	end
	
	//
	reg [9:0] rand_x;
	reg [8:0] rand_y;
	
	//x and y generat in two cycles
	reg flag;
	always@(posedge clk or posedge rst)
	begin
		if(rst) 
		begin
			rand_x <= 10'd300;
			rand_y <= 9'd300;
			flag <= 1'b0;
		end
		else if(create_new_box)
		begin
			flag <= 1'b1; 
			rand_x <= rand_num; 
		end
		else if(flag == 1'b1)
		begin
			rand_y <= rand_num;
			flag <= 1'b0;
		end
	end
	
	assign x_box = 10'd300;
	assign y_box = 9'd300;
	
	//assign box_vga  = ( x_pos > rand_x && y_pos > rand_y && x_pos < (rand_x+10) && y_pos < (rand_y+10) );
	assign box_vga  = ( x_pos > 300 && y_pos > 300 && x_pos < 310 && y_pos < 310 );
	
endmodule
