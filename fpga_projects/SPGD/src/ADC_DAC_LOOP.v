// reg [FLOAT_WIDTH    - 1 : 0] GAIN_MUL_IN    = 64'h0000_0280_2802_8_028;
// reg [FLOAT_WIDTH    - 1 : 0] ADC_OFFSET = 64'hFFEC_0000_0000_0000;
// reg [FLOAT_WIDTH    - 1 : 0] DAC_OFFSET = 64'h0014_0000_0000_0000;
// reg [FLOAT_WIDTH    - 1 : 0] DAC_MUL_OFFSET = 64'h0000_0CCC_CCCC_CCCC;
// reg [FLOAT_WIDTH    - 1 : 0] DAC_GAIN_OFFSET = 64'h0066_6000_0000_0000;
// reg [FLOAT_WIDTH    - 1 : 0] SIXTEEN_K_OVER_TWENTY = 64'h0333_2666_6666_6666;
// reg [FLOAT_WIDTH    - 1 : 0] TEN = 64'h000A_0000_0000_0000;
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
    input   [1024       - 1 : 0] CFG_IN
);

    wire enable;
    wire REG_RST;
    wire REG_WRITE;
    wire [FLOAT_WIDTH   - 1 : 0] REG_DATA;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_16Q48_OUT;
    wire [FLOAT_WIDTH   - 1 : 0] ADC_16Q48_IN;
    wire [DAC_WIDTH     - 1 : 0] DAC_CODE_OUT;

    assign GP_OUT = {2'b00, DAC_CODE_OUT, REG_DATA[63:48]};
    assign val_0 = 1'b0;
	assign val_1 = 1'b1;

    assign ADC_16Q48_IN = CFG_IN[FLOAT_WIDTH - 1: 0];
    assign enable = GP_IN[GPIO_WIDTH-1];
    assign DACA_CODE_OUT = GP_IN[DAC_WIDTH - 1: 0];
    assign DACB_CODE_OUT = DAC_CODE_OUT;

    ADC_IN  #(
        .FLOAT_WIDTH(FLOAT_WIDTH),
        .ADC_WIDTH(ADC_WIDTH)
    ) ADC0 (
        .ADC_CLK(ADC_CLK),
        .ADC_DATA_IN(ADC_DATA_IN), 
        .enable(enable),
        .DONE(DONE),
        .ADC_16Q48_OUT(ADC_16Q48_OUT),
        .REG_WRITE(REG_WRITE),
        .REG_RST(REG_RST)
    );

    gen_reg #(
        .DATA_WIDTH(FLOAT_WIDTH)
    ) REG0 (
        .data_in(ADC_16Q48_OUT),
        .clk(ADC_CLK),
        .wrt(REG_WRITE),
        .rst(REG_RST),
        .data_out(REG_DATA)
    );

    DAC_OUT #(
        .FLOAT_WIDTH(FLOAT_WIDTH),
        .DAC_WIDTH(DAC_WIDTH)
    ) DAC0 (
        .ADC_VOLTAGE(ADC_16Q48_IN),
        .DAC_CODE_OUT(DAC_CODE_OUT)
    );
endmodule