module ADC_IN
#(
    parameter FLOAT_WIDTH = 64,
    parameter ADC_WIDTH = 12
)
(
    input   ADC_CLK,
    input   RST,
    input   [ADC_WIDTH      - 1 : 0] ADC_DATA_IN,
    input   [FLOAT_WIDTH/2  - 1 : 0] TIMER_OFFSET,
    input   [FLOAT_WIDTH/2  - 1 : 0] TIME_VALUE,
    input   enable,
    output  DONE,
    output  [FLOAT_WIDTH    - 1 : 0] ADC_16Q48_OUT,
    output REG_WRITE,
    output REG_RST
);
    reg [FLOAT_WIDTH    - 1 : 0] GAIN_MUL_IN    = 64'h0014_0000_0000_0000;

    wire ADC_RST;
    wire VALID;
    wire in_REG_RST;
    wire [ADC_WIDTH   - 1 : 0] ADC_AVERAGE_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_MUL_INPUT;

    assign REG_RST = in_REG_RST;
    assign REG_WRITE = VALID;

    ADC_AVERAGE  #(.ADC_WIDTH(ADC_WIDTH), .NUM_SAMPS(128)) ADC_AVERAGE0 (.DATA_IN(ADC_DATA_IN), .DATA_OUT(ADC_AVERAGE_OUT), .CLK(ADC_CLK), .DONE(DONE), .RST(ADC_RST), .TIME_VALUE(TIME_VALUE), .TIMER_OFFSET(TIMER_OFFSET));

    FSM FSM0 (.done(DONE), .enable(enable), .adc_clk(ADC_CLK), .ADC_RST(ADC_RST), .REG_RST(in_REG_RST), .REG_WRITE(VALID), .RST(RST));
    
    gen_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(FLOAT_WIDTH), .L_PAD_WIDTH(4), .R_PAD_WIDTH(FLOAT_WIDTH-16)) PAD0 (.in(ADC_AVERAGE_OUT), .out(ADC_MUL_INPUT));

    my_mult #(.DATA_WIDTH(FLOAT_WIDTH), .BIT_SHIFT(11)) MULT1 (.a(ADC_MUL_INPUT), .b(GAIN_MUL_IN), .p(ADC_16Q48_OUT));
endmodule