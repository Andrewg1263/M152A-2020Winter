`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:22 02/10/2020 
// Design Name: 
// Module Name:    counter_0 
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
module counter_0(
	input clk,
	input clk_1hz,
	input clk_2hz,
	input rst,
	input btn_pause,
	input increase,
	input decrease,
	input adj,
	input sel,
	input adj_b,
	input cnt_dn,
	output [3:0] led_0,
	output [3:0] led_1,
	output [3:0] led_2,
	output [3:0] led_3
    );
	
	reg [3:0] sec_l = 4'd0;
	reg [3:0] sec_h = 4'd0;
	reg [3:0] min_l = 4'd0;
	reg [3:0] min_h = 4'd0;
	
	reg pause;
/*	always@(posedge clk)
	begin
			pause <= (btn_pause)? ~pause:pause ;
	end*/
 	
always @ (posedge clk)
	begin
		pause <= (btn_pause)? ~pause:pause ;
		if (adj)
		begin
					if(adj_b)
					begin
							///////////////////////////////// increase button begin
							if(increase)
							begin
										if(sel) // adjust seconds
										begin
											if(sec_l>=9)
											begin
												sec_l <= 4'b0000;
												if(sec_h == 5)
													sec_h <= 4'b0000;
												else
													sec_h <= sec_h + 1;
											end
											else
												sec_l <= sec_l + 1;
										end
										else // sel == 0, adjust minutes
										begin
											if(min_l>=9)
											begin
												min_l <= 4'b0000;
												if(min_h == 5)
													min_h <= 4'b0000;
												else
													min_h <= min_h + 1;
											end
											else
												min_l <= min_l + 1;
										end
											
							end
							///////////////////////////////// increase button end
							
							///////////////////////////////// decrease button begin
							else if(decrease)
							begin
										if(sel) // adjust seconds
										begin
											if(sec_l<=0)
											begin
												sec_l <= 4'b1001;
												if(sec_h == 0)
													sec_h <= 4'b0101;
												else
													sec_h <= sec_h - 1;
											end
											else
												sec_l <= sec_l - 1;
										end
										else // sel == 0, adjust minutes
										begin
											if(min_l<=0)
											begin
												min_l <= 4'b1001;
												if(min_h == 0)
													min_h <= 4'b0101;
												else
													min_h <= min_h - 1;
											end
											else
												min_l <= min_l - 1;
										end
											
							end
							///////////////////////////////// decrease button end
					end
					// else if adj_b == 0 update 2hz
							///////////////////////////////// update 2 by 2hz begin
					else if (adj_b == 0)
					begin
							
									if(sel) // adjust seconds
									begin //59
										if( sec_h >= 5 && sec_l >= 9 )
										begin
											sec_l <= 4'b0001;
											sec_h <= 4'b0000;
										end
										else
										begin
											if(clk_2hz)
											begin
												if(sec_l >= 9)
												begin
													sec_l <= 0;
													sec_h <= sec_h + 1;
												end
												else
													sec_l <= sec_l + 2;
											end
										end
									end
									else
									begin //59
										if( min_h >= 5 && min_l >= 9 )
										begin
											min_l <= 4'b0001;
											min_h <= 4'b0000;
										end
										else
										begin
											if(clk_2hz)
											begin
												if(min_l >= 9)
												begin
													min_l <= 0;
													min_h <= min_h + 1;
												end
												else
													min_l <= min_l + 2;
											end
										end
									end		
					end
						///////////////////////////////// update 2 by 2hz end
		end
		else if (rst)
		begin
			if( min_h==4'b0101 && min_l==4'b1001 && sec_h==4'b0101 && sec_l==4'b1001 )
			begin
				pause <= 1;
			end
				sec_l <= 4'b0000;
				sec_h <= 4'b0000;
				min_l <= 4'b0000;
				min_h <= 4'b0000;
		end
		// pause
		else if (pause)
		begin
			if( min_h==4'b0101 && min_l==4'b1001 && sec_h==4'b0101 && sec_l==4'b1001 )
			begin
				sec_l <= 4'b0000;
				sec_h <= 4'b0000;
				min_l <= 4'b0000;
				min_h <= 4'b0000;
				pause <= 0;
			end
			else
			begin
				sec_l <= sec_l;
				sec_h <= sec_h;
				min_l <= min_l;
				min_h <= min_h;
			end
		end
		// normal count down
		else if (cnt_dn)
		begin
					// 00:00
					if( min_h==4'b0000 && min_l==4'b0000 && sec_h==4'b0000 && sec_l==4'b0000 )
					begin
						sec_l <= 4'b0000;
						sec_h <= 4'b0000;
						min_l <= 4'b0000;
						min_h <= 4'b0000;
					end
						
					// count down
					else
					begin
					if (clk_1hz)
					begin
					
						if(sec_l==0)
						begin
							sec_l <= 4'b1001;
							if(sec_h == 0)
							begin
								sec_h <= 4'b0101;
								if(min_l == 0)
								begin
									min_l <= 4'b1001;
									min_h <= min_h - 1;
								end
								else
									min_l <= min_l - 1;
							end
							else
								sec_h <= sec_h - 1;
						end
						else
							sec_l <= sec_l - 1;
					end
					end
					// count down end
		end
				////////////////////////////////////////////// Normal mode count up
			else
			begin
				// 59:59
				if( min_h==4'b0101 && min_l==4'b1001 && sec_h==4'b0101 && sec_l==4'b1001 )
				begin
					sec_l <= sec_l;
					sec_h <= sec_h;
					min_l <= min_l;
					min_h <= min_h;
				end
					
				else
				begin
				if (clk_1hz)
				begin
					if(sec_l==9)
					begin
										sec_l <= 4'b0000;
										if(sec_h == 5)
										begin
											sec_h <= 4'b0000;
											if(min_l == 9)
											begin
												min_l <= 4'b0000;
												min_h <= min_h + 1;
											end
											else
												min_l <= min_l + 1;
										end
										else
											sec_h <= sec_h + 1;
									end
									else
										sec_l <= sec_l + 1;
					end // if(ckl_1hz)
				end
			end

	end
	
	assign led_0 = sec_l;
	assign led_1 = sec_h;
	assign led_2 = min_l;
	assign led_3 = min_h;
	
	
endmodule
