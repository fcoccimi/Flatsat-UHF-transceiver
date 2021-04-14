`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2021 11:36:00 PM
// Design Name: 
// Module Name: BPSK_LMS
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


module BPSK_LMS(input wire clk,
                output wire [11:0] out,
                output wire clkout,
                output reg tx_iq_sel,
                input wire U_RX,
                output wire test);
                //output wire [0:7] bit_data);
                
wire clkout1;
//For UART
wire [7:0] data_rx;
wire done;
//For Modulation
reg [11:0] iq_data;
reg [7:0] data;
reg [11:0] rom_i0;
reg [11:0] rom_i1;
reg [4:0] addr;
reg [13:0]cntr;

//Do Not TOUCH
Clk_gen_pll Clk_gen_pll(.clk_out1(clkout),
                        .clk_out2(clkout1),
                        .mclk(clk));
/////////
                        
UART_RX UART_RX(.mclk(clkout1),
                .data(U_RX),
                .out(data_rx),
                .done(done));

initial
begin
    addr <= 0;
    iq_data <= 0;
    //data = 8'b10101100; //Using for sending dummy data when MCU is not connected.
    //Setup for BPSK
    rom_i0 <= 12'h708; //011100001000 1, 1
    rom_i1 <= 12'h8F8; //100011111000 0, -1
    tx_iq_sel <= 0;
    cntr <= 0;
    
    //For UART
end
 
always@(negedge clkout1)
begin
if(done==1)
begin
data <= data_rx;
end

else
begin
data<=data;
end

if(cntr==3125)
begin
    cntr <=0;
    tx_iq_sel<=~tx_iq_sel;
    if(tx_iq_sel==0)
    begin
        ///
        if(data[addr] == 1'b1)
        begin
            iq_data<=rom_i0;
        end

        else
        begin   
           iq_data<=rom_i1;
        end
        ////
        if(addr == 7)
        begin
            addr <= 0;
            tx_iq_sel <= 1;
        end
        
        else
        begin
        addr<=addr +1;
        end
        //////
    end
    
    else
    begin
        iq_data <= 0;
    end
end

else
begin
cntr<=cntr+1;
end

end //End of Always loop

assign out = iq_data;
assign test = done;
//assign bit_data = data;
//assign clock_done = clock_d;
endmodule
