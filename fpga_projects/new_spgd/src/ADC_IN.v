module ADC_IN
#(
    parameter FP_WIDTH = 64,
    parameter ADC_WIDTH = 12,
    parameter NUM_SAMPS = 1023,
    parameter INT_WIDTH = 16
)
(
    input   ADC_CLK,
    input   [ADC_WIDTH      - 1 : 0] ADC_DATA_IN,
    // input   [FP_WIDTH/2  - 1 : 0] TIMER_OFFSET,
    // input   [FP_WIDTH/2  - 1 : 0] TIME_VALUE,
    input   enable,
    output  DONE,
    output  [FP_WIDTH    - 1 : 0] ADC_16QM_OUT,
    output REG_WRITE
);
    reg [FP_WIDTH    - 1 : 0] GAIN_MUL_IN = {{16'h0014}, {FP_WIDTH-INT_WIDTH{1'b0}}};

    wire RST;
    wire VALID;
    wire in_REG_RST;
    wire [ADC_WIDTH   - 1 : 0] ADC_AVERAGE_OUT;
    wire [FP_WIDTH   - 1 : 0] ADC_MUL_INPUT;

    assign REG_RST = in_REG_RST;
    assign REG_WRITE = VALID;

    ADC_AVERAGE  #(
        .ADC_WIDTH(ADC_WIDTH),
        .NUM_SAMPS(NUM_SAMPS)
    ) ADC_AVERAGE0 (
        .DATA_IN(ADC_DATA_IN),
        .DATA_OUT(ADC_AVERAGE_OUT),
        .CLK(ADC_CLK),
        .DONE(DONE),
        .EN(!RST)
    );

    FSM FSM0 (
        .done(DONE),
        .enable(enable),
		.adc_clk(ADC_CLK),
        .REG_RST(in_REG_RST),
        .REG_WRITE(VALID),
        .ADC_RST(RST)
    );
    
    gen_padder #(
        .IN_WIDTH(ADC_WIDTH),
        .OUT_WIDTH(FP_WIDTH),
        .L_PAD_WIDTH(4),
        .R_PAD_WIDTH(FP_WIDTH-16)
    ) PAD0 (
        .in(ADC_AVERAGE_OUT),
        .out(ADC_MUL_INPUT)
    );

    my_mult #(
        .DATA_WIDTH(FP_WIDTH),
        .BIT_SHIFT(11)
    ) MULT1 (
        .a(ADC_MUL_INPUT),
        .b(GAIN_MUL_IN),
        .p(ADC_16QM_OUT)
    );
endmodule
