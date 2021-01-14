`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2021 10:21:58 AM
// Design Name: 
// Module Name: TB_GPIO
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


module TB_GPIO(

    );
    
reg [15:0] SW;
reg [4:0] BTN;
reg CLK;
wire [15:0] LED;
wire [7:0] SSEG_CA;
wire [7:0] SSEG_AN;

wire UART_TXD;
wire RGB1_Red;
wire RGB1_Green;
wire RGB1_Blue;
wire RGB2_Red;
wire RGB2_Green;
wire RGB2_Blue;
wire micClk;
wire micLRSel;
wire micData;
wire ampPWM;
wire ampSD;

GPIO_demo_v Inst_GPIO_demo_v(
        .SW(SW),  
        .BTN(BTN),
        .CLK(CLK),
        .LED(LED),
        .SSEG_CA(SSEG_CA),
        .SSEG_AN(SSEG_AN),
        
        .UART_TXD(UART_TXD),
        .RGB1_Red(RGB1_Red),
        .RGB1_Green(RGB1_Green),
        .RGB1_Blue(RGB1_Blue),
        .RGB2_Red(RGB2_Red),
        .RGB2_Green(RGB2_Green),
        .RGB2_Blue(RGB2_Blue),
        .micClk(micClk),
        .micLRSel(micLRSel),
        .micData(micData),
        .ampPWM(ampPWM),
        .ampSD(ampSD)
);

initial begin
    CLK = 0;
    repeat(1000000000) begin
        #10; CLK =~CLK;
    end
end

initial begin
    SW = 16'b0;
    BTN = 5'b00000;
    
    #100000000;

    repeat(1000) begin
        BTN = 5'b10000; #10000000;
        BTN = 5'b00000; #100000000; 
    end
   
end

endmodule
