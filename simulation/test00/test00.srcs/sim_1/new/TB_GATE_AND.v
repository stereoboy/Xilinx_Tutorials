`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2021 06:13:58 PM
// Design Name: 
// Module Name: TB_GATE_AND
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


module TB_GATE_AND(

    );
    reg A;
    reg B;
    wire C;
    
    GATE_AND DUT(.A(A), .B(B), .C(C));
    
    initial begin
        repeat(10) begin
            A = 0;
            B = 0; #10;
            A = 0;
            B = 1; #10;
            A = 1;
            B = 0; #10;
            A = 1;
            B = 1; #10;
        end
    end
    
endmodule
