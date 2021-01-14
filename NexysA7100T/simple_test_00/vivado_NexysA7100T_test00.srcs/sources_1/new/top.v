`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2021 03:23:20 PM
// Design Name: 
// Module Name: top
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


module top(
    input BTNU,
    input BTNL,
    input BTNC,
    input BTNR,
    input BTND,
    output [2:0] LED_RGB_0,
    output [2:0] LED_RGB_1
    );
    
    assign LED_RGB_0[0] = BTNU&BTNL;
    assign LED_RGB_0[1] = BTNU&BTNC;
    assign LED_RGB_0[2] = BTNU&BTNR;

    assign LED_RGB_1[0] = BTND | ((~BTNU)&BTNL);
    assign LED_RGB_1[1] = BTND | ((~BTNU)&BTNC);
    assign LED_RGB_1[2] = BTND | ((~BTNU)&BTNR);

endmodule
 