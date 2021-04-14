`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 12:35:11 PM
// Design Name: 
// Module Name: BPSK_test
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


module BPSK_test();

reg clk;
wire [0:11] out;
wire clkout;
wire tx_iq_sel;
wire [0:7] bit_data;
wire U_RX;

BPSK_LMS BPSK_LMS(.clk(clk),
                  .out(out),
                  .clkout(clkout),
                  .tx_iq_sel(tx_iq_sel),
                  .bit_data(bit_data));
initial
begin
    clk = 0;
    forever #10 clk = ~clk;
    #200; //Wait time
end




endmodule
