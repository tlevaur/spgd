module ADC_DAC_LOOP
#(
    parameter FLOAT_WIDTH = 64,
    parameter GPIO_WIDTH = 32,
    parameter ADC_WIDTH = 12,
    parameter DAC_WIDTH = 14
)
(
    input   ADC_CLK,
    input   [ADC_WIDTH  - 1 : 0] ADC_DATA_IN,
    input   [GPIO_WIDTH - 1 : 0] GP_IN,
    output  [GPIO_WIDTH - 1 : 0] GP_OUT,
    output  DONE,
    output  val_0,
	output  val_1,
    output  [DAC_WIDTH  - 1 : 0] DACA_CODE_OUT,
    output  [DAC_WIDTH  - 1 : 0] DACB_CODE_OUT,
    output  [ADC_WIDTH  - 1 : 0] ADC_CODE_OUT
);

    reg [FLOAT_WIDTH    - 1 : 0] GAIN_MUL_IN    = 64'h0000_0280_2802_8_028;
    reg [FLOAT_WIDTH    - 1 : 0] ADC_OFFSET = 64'hFFEC_0000_0000_0000;
    reg [FLOAT_WIDTH    - 1 : 0] DAC_OFFSET = 64'h0014_0000_0000_0000;
    reg [FLOAT_WIDTH    - 1 : 0] DAC_MUL_OFFSET = 64'h0000_0CCC_CCCC_CCCC;
    reg [FLOAT_WIDTH    - 1 : 0] DAC_GAIN_OFFSET = 64'h0066_6000_0000_0000;
    reg [FLOAT_WIDTH    - 1 : 0] SIXTEEN_K_OVER_TWENTY = 64'h0333_2666_6666_6666;
    reg [FLOAT_WIDTH    - 1 : 0] TEN = 64'h000A_0000_0000_0000;
    reg [DAC_WIDTH      - 1 : 0] output_DAC_A = 14'h0000;
    reg [DAC_WIDTH      - 1 : 0] output_DAC_B = 14'h0000;

    wire RST;
    wire VALID;
    wire enable;
    wire FSM_STATE;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_AVERAGE_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_OFFSET_WIRE;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_MUL_INPUT;
    wire [FLOAT_WIDTH*2 - 1 : 0] ADC_MUL_DATA_OUT;
    wire [FLOAT_WIDTH*2 - 1 : 0] DAC_MUL_CODE_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_MUL_SPLIT;
    wire [FLOAT_WIDTH       : 0] ADC_ADD_WIRE_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] DAC_ADD_WIRE_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] DAC_ADJUST_WIRE_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] DAC_CODE_WIRE_OUT;
    wire [DAC_WIDTH     - 1 : 0] DAC_CODE_OUT;

    // assign RST = GP_IN[1];
    assign enable = GP_IN[0];
    assign GP_OUT = {16'h0000, FSM_STATE, DACA_CODE_OUT};
    assign val_0 = 1'b0;
	assign val_1 = 1'b1;
    
    assign ADC_MUL_SPLIT = ADC_MUL_DATA_OUT[112:48];
    assign DAC_CODE_WIRE_OUT = DAC_MUL_CODE_OUT[112:48];

    assign DACA_CODE_OUT = output_DAC_A;
    assign DACB_CODE_OUT = output_DAC_B;
    

    twos_to_ADC_offset #(.WIRE_WIDTH(ADC_WIDTH)) ADCO0 (.data_in(ADC_DATA_IN), .data_out(ADC_OFFSET_WIRE));

    ADC_AVERAGE  #(.ADC_WIDTH(ADC_WIDTH), .NUM_SAMPS(1024)) ADC_AVERAGE0 (.DATA_IN(ADC_OFFSET_WIRE), .DATA_OUT(ADC_AVERAGE_OUT), .CLK(ADC_CLK), .DONE(DONE), .RST(RST));

    gen_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(FLOAT_WIDTH), .L_PAD_WIDTH(4), .R_PAD_WIDTH(FLOAT_WIDTH-16)) PAD0 (.in(ADC_AVERAGE_OUT), .out(ADC_MUL_INPUT));

    gen_mult #(.DATA_WIDTH(FLOAT_WIDTH)) MULT0 (.a(ADC_MUL_INPUT), .b(GAIN_MUL_IN), .p(ADC_MUL_DATA_OUT));

    gen_adder #(.IN_WIDTH(FLOAT_WIDTH)) ADD0 (.a(ADC_MUL_SPLIT), .b(ADC_OFFSET), .s(ADC_ADD_WIRE_OUT));

    gen_adder #(.IN_WIDTH(FLOAT_WIDTH)) ADD2 (.a(ADC_ADD_WIRE_OUT), .b(TEN), .s(DAC_ADJUST_WIRE_OUT));

    gen_mult #(.DATA_WIDTH(FLOAT_WIDTH)) MULT2 (.a(DAC_ADJUST_WIRE_OUT), .b(SIXTEEN_K_OVER_TWENTY), .p(DAC_MUL_CODE_OUT));

    DAC_offset_to_twos #(.WIRE_WIDTH(DAC_WIDTH)) DAC0 (.data_in(DAC_CODE_WIRE_OUT[61 : 47]), .data_out(DAC_CODE_OUT));

    FSM FSM0 (.done(DONE), .enable(enable), .adc_clk(ADC_CLK), .RST(RST), .FSM_STATE(FSM_STATE), .valid(VALID));
endmodule