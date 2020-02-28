`timescale 1ns / 1ps
module random_grid(input clk,
						 output wire [9:0] x, 
						 output wire [8:0] y);

reg [9:0] rand_x = 0;
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

assign x = rand_x;
assign y = rand_y;

endmodule
/*module random_grid(input clk,
						 output wire [9:0] x, 
						 output wire [8:0] y);

reg [9:0] foodx = 0;
reg [8:0] foody = 0;

reg [31:0] counter = 0;
reg clk_1s;						 
always@(posedge clk)
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
begin
	
end

always@(posedge clk)
begin
	if(clk_1s)
	begin
		foodx =  $urandom_range(0,635);
		foody =  $urandom_range(5,480);
		//foodx = foodx + 10;
		//foody = foody + 10;
	end
end

assign x = foodx;
assign y = foody;
    
endmodule
*/