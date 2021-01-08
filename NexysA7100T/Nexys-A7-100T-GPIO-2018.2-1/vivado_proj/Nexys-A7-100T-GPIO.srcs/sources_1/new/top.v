module GPIO_demo_v(
        input [15:0] SW,  
        input [4:0] BTN,
        input  CLK,
        output [15:0] LED,
        output [7:0] SSEG_CA,
        output [7:0] SSEG_AN,
        
        output UART_TXD,
        output RGB1_Red,
        output RGB1_Green,
        output RGB1_Blue,
        output RGB2_Red,
        output RGB2_Green,
        output RGB2_Blue,
        output micClk,
        output micLRSel,
        input micData,
        output ampPWM,
        output ampSD			  
);

parameter [26:0] TMR_CNTR_MAX =   27'b101111101011110000100000000; // 100,000,000 clk cycles per seconds
parameter [4:0] TMR_VAL_MAX = 4'b1001; // MAX 9, digit is 0~9

reg [26:0] tmrCntr;
reg [3:0] tmrVal;

wire [4:0] btnDeBnc;

initial begin
    tmrCntr = 27'b000000000000000000000000000;
    tmrVal = 4'b0000;
end
//
// https://stackoverflow.com/questions/50766295/using-verilog-case-statement-with-continuous-assignment
//

assign LED = assign_BTN(BTN[4]);
function [15:0] assign_BTN(input btn);
    case(btn)
        1'b0: assign_BTN = SW;
        1'b1: assign_BTN = 16'b0000000000000000;
    endcase
endfunction


assign SSEG_AN[3:0] = assign_SSEG_AN3210(BTN[4]);
function [3:0] assign_SSEG_AN3210(input btn);
    case(btn)
        1'b0: assign_SSEG_AN3210 = btnDeBnc[3:0];
        1'b1: assign_SSEG_AN3210 = 4'b1111;
    endcase
endfunction

assign SSEG_AN[7:4] = assign_SSEG_AN7654(BTN[4]);
function [3:0] assign_SSEG_AN7654(input btn);
    case(btn)
        1'b0: assign_SSEG_AN7654 = btnDeBnc[3:0];
        1'b1: assign_SSEG_AN7654 = 4'b1111;
    endcase
endfunction

/*
    7 Segments Low When Active: https://reference.digilentinc.com/reference/programmable-logic/nexys-a7/reference-manual#seven-segment_display
    
	SSEG_CA <= "11000000" when "0000",
				  "11111001" when "0001",
				  "10100100" when "0010",
				  "10110000" when "0011",
				  "10011001" when "0100",
				  "10010010" when "0101",
				  "10000010" when "0110",
				  "11111000" when "0111",
				  "10000000" when "1000",
				  "10010000" when "1001",
				  "11111111" when others;
*/
assign SSEG_CA = assign_SSEG_CA(tmrVal);
function [7:0] assign_SSEG_CA(input [3:0] tmrval);
    case(tmrval)
        4'b0000: assign_SSEG_CA = 8'b11000000;
        4'b0001: assign_SSEG_CA = 8'b11111001;
        4'b0010: assign_SSEG_CA = 8'b10100100;
        4'b0011: assign_SSEG_CA = 8'b10110000;
        4'b0100: assign_SSEG_CA = 8'b10011001;        
        4'b0101: assign_SSEG_CA = 8'b10010010;
        4'b0110: assign_SSEG_CA = 8'b10000010;
        4'b0111: assign_SSEG_CA = 8'b11111000;
        4'b1000: assign_SSEG_CA = 8'b10000000;
        4'b1001: assign_SSEG_CA = 8'b10010000;
        default: assign_SSEG_CA = 8'b11111111;
    endcase    
endfunction

// Timer
always @(posedge CLK)
begin : timer_counter_process
    if (tmrCntr == TMR_CNTR_MAX || BTN[4] == 1'b1) begin
        tmrCntr <= 27'b000000000000000000000000000;
    end else begin
        tmrCntr <= tmrCntr + 1'b1;
    end
end

// Increase Value for 7-Segment
always @(posedge CLK)
begin : timer_inc_process
    if (BTN[4] == 1'b1) begin
        tmrVal <= 4'b0000;
    end else if (tmrCntr == TMR_CNTR_MAX) begin
        if (tmrVal == TMR_VAL_MAX) begin
            tmrVal <= 4'b0000;
        end else begin
            tmrVal <= tmrVal + 1'b1;
        end
    end
end

debouncer #(.DEBNC_CLOCKS(2**16), .PORT_WIDTH(5)) Inst_btn_debounce(.SIGNAL_I(BTN), .CLK_I(CLK), .SIGNAL_O(btnDebnc));





//
// RGB LED Control
//
RGB_controller RGB_Core(.GCLK(CLK),
                        .RGB_LED_1_O({RGB1_Green, RGB1_Blue, RGB1_Red}),
                        .RGB_LED_2_O({RGB2_Green, RGB2_Blue, RGB2_Red})
                        );
endmodule