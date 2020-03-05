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
			rand_x <= 9'd300;
			rand_y <= 8'd300;
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
	
	assign x_box = rand_x;
	assign y_box = rand_y;
	
	assign box_vga  = ( x_pos >= rand_x && y_pos >= rand_y && x_pos <= (rand_x+7) && y_pos <= (rand_y+7) );
	
/*reg [9:0] rand_x = 0;
reg [8:0] rand_y = 0;
reg[5:0] pointX = 0; 
reg [5:0] pointY = 0;

// 1s counter
reg [31:0] counter = 0;
reg clk_1s;						 
always@(posedge clk)
begin
	if(counter == 100000000-1)
	begin
		counter <= 0;
		clk_1s <= 1;
	end
	else
		begin
		counter <= counter + 1;
		clk_1s <= 0;
		end
end

always@(posedge clk_1s)
	pointX <= pointX + 3;
always@(posedge clk_1s)
	pointY <= pointY + 1;

always@(posedge clk_1s)
begin
	if(pointX>=63)
		rand_x <= 620;
	else if(pointX < 2)
		rand_x <= 20;
	else
		rand_x <= (pointX * 10);
end

always@(posedge clk_1s)
begin
	if(pointY>=47)
		rand_y <= 460;
	else if(pointY < 2)
		rand_y <= 20;
	else
		rand_y <= (pointY * 10);
end

assign x_box = rand_x;
assign y_box = rand_y;*/

endmodule
