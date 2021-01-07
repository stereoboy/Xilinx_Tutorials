`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2021 06:34:12 PM
// Design Name: 
// Module Name: TB_DFF
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


module TB_DFF(

    );
    
    reg clk;
    reg D;
    wire Q0;
    wire nQ0;
    wire Q1;
    wire nQ1;
    wire Q2;
    wire nQ2;
    
    DFF DUT0(.clk(clk), .D(D), .Q(Q0), .nQ(nQ0));
    
    DFF DUT1(.clk(clk), .D(Q0), .Q(Q1), .nQ(nQ1));
    
    DFF DUT2(.clk(clk), .D(Q1), .Q(Q2), .nQ(nQ2));
    
    initial begin
        D = 0;
        repeat(100) begin
            #3;
            D = ~D;
        end
    end    
        
    initial begin
        clk = 0;
        repeat(1000) begin
            #2;
            clk = ~clk; 
        end
    end
    

endmodule
