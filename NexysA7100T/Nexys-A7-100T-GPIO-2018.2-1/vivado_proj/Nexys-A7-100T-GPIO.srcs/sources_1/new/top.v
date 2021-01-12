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

initial begin : timer_initialization
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

//
// UART
//
parameter [17:0] RESET_CNTR_MAX = 18'b110000110101000000; // 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms

parameter MAX_STR_LEN = 31;

parameter WELCOME_STR_LEN = 31;

parameter BTN_STR_LEN = 24;

reg [MAX_STR_LEN:0] sendStr;

reg strEnd;

reg strIndex;

reg [3:0] btnReg;

wire btnDetect;

assign btnDetect = Assign_btnDetect(btnReg, btnDeBnc);
function assign_btnDetect(input [3:0] btnreg, input [3:0] btndebnc);
    if (btnreg[0] == 1'b0 && btndebnc[0] == 1'b1)
        assign_btnDetect = 1'b1;
    else if (btnreg[1] == 1'b0 && btndebnc[1] == 1'b1)
        assign_btnDetect = 1'b1;
    else if (btnreg[2] == 1'b0 && btndebnc[2] == 1'b1)
        assign_btnDetect = 1'b1;
    else if (btnreg[3] == 1'b0 && btndebnc[3] == 1'b1)
        assign_btnDetect = 1'b1;
    else
        assign_btnDetect = 1'b0;
endfunction

// State Definition
reg [2:0] UART_STATE;
localparam
    RST_REG     = 3'b000,
    LD_INIT_STR = 3'b001,
    SEND_CHAR   = 3'b010,
    RDY_LOW     = 3'b011,
    WAIT_RDY    = 3'b100,
    WAIT_BTN    = 3'b101,
    LD_BTN_STR  = 3'b110;

//
// reference: https://stackoverflow.com/questions/23507629/parameter-array-in-verilog
//
parameter [8*31 - 1:0] WELCOME_STR = {
    8'h0A, // \n
    8'h0D, // \r
    8'h4E, // N
    8'h45, // E
    8'h58, // X
    8'h59, // Y
    8'h53, // S
    8'h34, // 4
    8'h20, // " "
    8'h44, // D
    8'h44, // D
    8'h52, // R
    8'h20, // " "
    8'h47, // G
    8'h50, // P
    8'h49, // I
    8'h4F, // O
    8'h2F, // /
    8'h55, // U
    8'h41, // A
    8'h52, // R
    8'h54, // T
    8'h20, // " "
    8'h44, // D
    8'h45, // E
    8'h4D, // M
    8'h4F, // O
    8'h21, // !
    8'h0A, // \n
    8'h0A, // \n
    8'h0D  // \r
    };

parameter [8*24 - 1: 0] BTN_STR = {
    8'h42,  //B
    8'h75,  //u
    8'h74,  //t
    8'h74,  //t
    8'h6F,  //o
    8'h6E,  //n
    8'h20,  //" "
    8'h70,  //p
    8'h72,  //r
    8'h65,  //e
    8'h73,  //s
    8'h73,  //s
    8'h20,  //" "
    8'h64,  //d
    8'h65,  //e
    8'h74,  //t
    8'h65,  //e
    8'h63,  //c
    8'h74,  //t
    8'h65,  //e
    8'h64,  //d
    8'h21,  //!
    8'h0A,  //\n
    8'h0D   //\r

};

endmodule