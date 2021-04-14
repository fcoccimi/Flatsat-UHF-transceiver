`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2021 02:36:52 PM
// Design Name: 
// Module Name: UART_RX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module UART_RX(mclk,data,out,done);


input wire mclk;
input wire data;
output wire [7:0] out;
output wire done;


//inter
reg [14:0] cntr;
reg [4:0] present,next;
reg done_d;
reg [7:0] outd;

initial
begin
cntr = 0;
present = 0;
next = 0;
done_d = 0;
end

always@(posedge mclk)
begin
	if(cntr==5028)
	begin
		cntr<=0;
		present<=next;
	end
	else
	begin
		cntr<=cntr+1;
		present<=present;
	end
	if(present==10)
	begin
	 done_d = 1;
	end
	else
	begin
	 done_d = 0;
	end
end

always@(present or data)
	case(present)
		0:if(data==0)
			next<=2;
			else
			begin
			next<=0;
			outd<=outd;
			end
		2:begin
			outd[0]<=data;
			next<=3;
		  end
		3:begin
			outd[1]<=data;
			next<=4;
		  end
		4:begin
			outd[2]<=data;
			next<=5;
		  end
		 5:begin
			 outd[3]<=data;
			 next<=6;
			end
		 6:begin
			 outd[4]<=data;
			 next<=7;
			end
		7:begin
			 outd[5]<=data;
			 next<=8;
		  end
		 8:begin
			 outd[6]<=data;
			 next<=9;
			end
		9:begin
			outd[7]<=data;
			next<=10;
	     end
		10:begin 
		next<=0;
		end
	default:next<=0;
endcase

assign done = done_d;
assign out = outd;

endmodule
