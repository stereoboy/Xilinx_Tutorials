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

debouncer #(.DEBNC_CLOCKS(2**16), .PORT_WIDTH(5)) Inst_btn_debounce(.SIGNAL_I(BTN), .CLK_I(CLK), .SIGNAL_O(btnDeBnc));





//
// RGB LED Control
//
/*
RGB_controller RGB_Core(.GCLK(CLK),
                        .RGB_LED_1_O({RGB1_Green, RGB1_Blue, RGB1_Red}),
                        .RGB_LED_2_O({RGB2_Green, RGB2_Blue, RGB2_Red})
                        );
*/
//
// UART
//
parameter [17:0] RESET_CNTR_MAX = 18'b110000110101000000; // 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms

parameter MAX_STR_LEN = 31*8;

parameter WELCOME_STR_LEN = 31*8;

parameter BTN_STR_LEN = 24*8;

reg [MAX_STR_LEN:0] sendStr;

integer strEnd;

integer strIndex;

reg [3:0] btnReg;

always @(posedge CLK)
begin : btn_reg_process
    btnReg <= btnDeBnc[3:0];
end

wire btnDetect;

assign btnDetect = assign_btnDetect(btnReg);
function assign_btnDetect(input [3:0] btnreg);
    if (btnreg[0] == 1'b0 && btnDeBnc[0] == 1'b1)
        assign_btnDetect = 1'b1;
    else if (btnreg[1] == 1'b0 && btnDeBnc[1] == 1'b1)
        assign_btnDetect = 1'b1;
    else if (btnreg[2] == 1'b0 && btnDeBnc[2] == 1'b1)
        assign_btnDetect = 1'b1;
    else if (btnreg[3] == 1'b0 && btnDeBnc[3] == 1'b1)
        assign_btnDetect = 1'b1;
    else
        assign_btnDetect = 1'b0;
endfunction

// State Definition
reg [2:0] uartState;
localparam
    RST_REG     = 3'b000,
    LD_INIT_STR = 3'b001,
    SEND_CHAR   = 3'b010,
    RDY_LOW     = 3'b011,
    WAIT_RDY    = 3'b100,
    WAIT_BTN    = 3'b101,
    LD_BTN_STR  = 3'b110;

reg [17:0] reset_cntr;

wire uartRdy;
reg uartSend;
reg [7:0] uartData;
wire uartTX;

//-----------------------------------------------------------------
// DEBUG
assign RGB0_Green = uartTX;
assign RGB1_Green = uartSend;
//-----------------------------------------------------------------

//
// reference: https://stackoverflow.com/questions/23507629/parameter-array-in-verilog
//
/*
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
*/
parameter [8*31 - 1: 0] WELCOME_STR = {
    8'h0D,  // \r
    8'h0A, // \n
    8'h0A, // \n
    8'h21, // !
    8'h4F, // O
    8'h4D, // M
    8'h45, // E
    8'h44, // D
    8'h20, // " "
    8'h54, // T
    8'h52, // R
    8'h41, // A
    8'h55, // U
    8'h2F, // /
    8'h4F, // O
    8'h49, // I
    8'h50, // P
    8'h47, // G
    8'h20, // " "
    8'h52, // R
    8'h44, // D
    8'h44, // D
    8'h20, // " "
    8'h34, // 4
    8'h53, // S
    8'h59, // Y
    8'h58, // X
    8'h45, // E    
    8'h4E, // N    
    8'h0D, // \r
    8'h0A // \n
    };
/*    
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
}; */

parameter [8*24 - 1: 0] BTN_STR = {
    8'h0D,  //\r
    8'h0A,  //\n
    8'h21,  //!
    8'h64,  //d
    8'h65,  //e
    8'h74,  //t
    8'h63,  //c
    8'h65,  //e
    8'h74,  //t
    8'h65,  //e                                
    8'h64,  //d
    8'h20,  //" "
    8'h73,  //s
    8'h73,  //s
    8'h65,  //e
    8'h72,  //r
    8'h70,  //p
    8'h20,  //" "
    8'h6E,  //n
    8'h6F,  //o    
    8'h74,  //t    
    8'h74,  //t    
    8'h75,  //u
    8'h42  //B
};

initial begin : uart_initialization
    btnReg = 4'b0000;

    uartState = RST_REG;
    reset_cntr = 18'b000000000000000000;;
    
    uartSend = 1'b0;
    uartData = 8'b00000000;
end

always @(posedge CLK)
begin : reset_cntr_process
    if ((reset_cntr == RESET_CNTR_MAX) || (uartState != RST_REG)) begin
        reset_cntr <= 18'b000000000000000000;
    end else begin
        reset_cntr <= reset_cntr + 1'b1;
    end
end

always @(posedge CLK)
begin : next_uartState_process
    if (btnDeBnc[4] == 1'b1) begin
        uartState <= RST_REG;
    end else begin
        case (uartState)
            RST_REG:    begin
                            if (reset_cntr == RESET_CNTR_MAX)
                                uartState <= LD_INIT_STR;
                        end
            LD_INIT_STR:    uartState <= SEND_CHAR;
            SEND_CHAR:      uartState <= RDY_LOW;
            RDY_LOW:        uartState <= WAIT_RDY;
            WAIT_RDY:   begin
                            if (uartRdy == 1'b1) begin
                                if (strEnd == strIndex)
                                    uartState <= WAIT_BTN;
                                else
                                    uartState <= SEND_CHAR;
                            end
                        end
            WAIT_BTN:   begin
                            if (btnDetect == 1'b1)
                                uartState <= LD_BTN_STR;
                        end
            LD_BTN_STR: begin
                            uartState <= SEND_CHAR;
                        end
            default:    begin
                            uartState <= RST_REG;
                        end
        endcase
    end
end

always @(posedge CLK)
begin : string_load_process
    if (uartState == LD_INIT_STR) begin
        sendStr <= WELCOME_STR;
        strEnd <= WELCOME_STR_LEN;
    end else if (uartState == LD_BTN_STR) begin
        sendStr[BTN_STR_LEN - 1:0] <= BTN_STR;
        strEnd <= BTN_STR_LEN;
    end
end

always @(posedge CLK)
begin : char_count_process
    if (uartState == LD_INIT_STR || uartState == LD_BTN_STR)
        strIndex <= 0;
    else if (uartState == SEND_CHAR)
        strIndex <= strIndex + 8;
end

always @(posedge CLK)
begin: char_load_process
    if (uartState == SEND_CHAR) begin
        uartSend <= 1'b1;
        uartData <= sendStr[strIndex +: 8];
    end else begin
        uartSend <= 1'b0;
    end
end

UART_TX_CTRL Inst_UART_TX_CTRL(.SEND(uartSend), .DATA(uartData), .CLK(CLK), .READY(uartRdy), .UART_TX(uartTX));

assign UART_TXD = uartTX;

endmodule