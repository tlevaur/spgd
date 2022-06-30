module ADC_IN
#(
    parameter FLOAT_WIDTH = 64,
    parameter ADC_WIDTH = 12
)
(
    input   ADC_CLK,
    input   [ADC_WIDTH  - 1 : 0] ADC_DATA_IN,
    input   enable,
    output  DONE,
    output  [ADC_WIDTH  - 1 : 0] ADC_16Q48_OUT,
    output REG_WRITE,
    output REG_RST
);

    // reg [FLOAT_WIDTH    - 1 : 0] GAIN_MUL_IN    = 64'h0000_0280_2802_8028;
    reg [FLOAT_WIDTH    - 1 : 0] GAIN_MUL_IN    = 64'h0014_0000_0000_0000;
    // reg [FLOAT_WIDTH    - 1 : 0] ADC_OFFSET = 64'hFFEC_0000_0000_0000;
    // reg [FLOAT_WIDTH    - 1 : 0] ADC_OFFSET = 64'h0000_0000_0000_0000;

    wire RST;
    wire VALID;
    wire in_REG_RST;
    wire [ADC_WIDTH   - 1 : 0] ADC_AVERAGE_OUT;
    // wire [ADC_WIDTH   - 1 : 0] ADC_OFFSET_WIRE;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_MUL_INPUT;
    wire [FLOAT_WIDTH*2 - 1 : 0] ADC_MUL_DATA_OUT;
    // wire [FLOAT_WIDTH   - 1 : 0] ADC_MUL_SPLIT;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_16Q48_OUT;
    
    assign ADC_16Q48_OUT = ADC_MUL_DATA_OUT[112+11:48+11];
    assign REG_RST = in_REG_RST;
    assign REG_WRITE = VALID;

    // twos_to_ADC_offset #(.WIRE_WIDTH(ADC_WIDTH)) ADCO0 (.data_in(ADC_DATA_IN), .data_out(ADC_OFFSET_WIRE));

    ADC_AVERAGE  #(.ADC_WIDTH(ADC_WIDTH), .NUM_SAMPS(1024)) ADC_AVERAGE0 (.DATA_IN(ADC_DATA_IN), .DATA_OUT(ADC_AVERAGE_OUT), .CLK(ADC_CLK), .DONE(DONE), .RST(RST));

    FSM FSM0 (.done(DONE), .enable(enable), .adc_clk(ADC_CLK), .ADC_RST(RST), .REG_RST(in_REG_RST), .REG_WRITE(VALID));
    
    gen_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(FLOAT_WIDTH), .L_PAD_WIDTH(4), .R_PAD_WIDTH(FLOAT_WIDTH-16)) PAD0 (.in(ADC_AVERAGE_OUT), .out(ADC_MUL_INPUT));

    gen_mult #(.DATA_WIDTH(FLOAT_WIDTH)) MULT1 (.a(ADC_MUL_INPUT), .b(GAIN_MUL_IN), .p(ADC_MUL_DATA_OUT));

    // gen_adder #(.IN_WIDTH(FLOAT_WIDTH)) ADD0 (.a(ADC_MUL_SPLIT), .b(ADC_OFFSET), .s(ADC_16Q48_OUT));
endmodule