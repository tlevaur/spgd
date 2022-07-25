// reg [FP_WIDTH    - 1 : 0] GAIN_MUL_IN    = 64'h0000_0280_2802_8_028;
// reg [FP_WIDTH    - 1 : 0] ADC_OFFSET = 64'hFFEC_0000_0000_0000;
// reg [FP_WIDTH    - 1 : 0] DAC_OFFSET = 64'h0014_0000_0000_0000;
// reg [FP_WIDTH    - 1 : 0] DAC_MUL_OFFSET = 64'h0000_0CCC_CCCC_CCCC;
// reg [FP_WIDTH    - 1 : 0] DAC_GAIN_OFFSET = 64'h0066_6000_0000_0000;
// reg [FP_WIDTH    - 1 : 0] SIXTEEN_K_OVER_TWENTY = 64'h0333_2666_6666_6666;
// reg [FP_WIDTH    - 1 : 0] TEN = 64'h000A_0000_0000_0000;
module ADC_DAC_LOOP
#(
    parameter FP_WIDTH = 32,
//    parameter CFG_BLOCK_WIDTH = 64,
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

	localparam NUM_SAMPS = 1024;
	wire enable;
	wire REG_RST;
	wire REG_WRITE;
	wire [FP_WIDTH   - 1 : 0] REG_DATA;
	//wire [FP_WIDTH/2 - 1 : 0] TIMER_OFFSET;
	//wire [FP_WIDTH/2 - 1 : 0] TIME_VALUE;
	wire [FP_WIDTH   - 1 : 0] ADC_16QM_OUT;
	//wire [FP_WIDTH   - 1 : 0] ADC_16Q48_IN;
	wire [FP_WIDTH   - 1 : 0] ADC_CAL_GAIN;
	wire [FP_WIDTH   - 1 : 0] ADC_CAL_OFFSET;

	wire [FP_WIDTH   - 1 : 0] DAC_CAL_GAIN;
	wire [FP_WIDTH   - 1 : 0] DAC_CAL_OFFSET;

	wire [FP_WIDTH   - 1 : 0] ADC_CAL_MUL_DATA_OUT;
	wire [FP_WIDTH       : 0] ADC_CAL_ADD_DATA_OUT;
	wire [DAC_WIDTH     - 1 : 0] DAC_CODE_OUT;

	//assign GP_OUT = {2'b00, DAC_CODE_OUT, REG_DATA[FP_WIDTH-1:FP_WIDTH-16]};
	assign GP_OUT = REG_DATA;
	assign val_0 = 1'b0;
	assign val_1 = 1'b1;

	//assign TIMER_OFFSET = CFG_IN[CFG_BLOCK_WIDTH/2 - 1: 0];
	//assign TIME_VALUE = CFG_IN[CFG_BLOCK_WIDTH - 1: CFG_BLOCK_WIDTH/2];
	//assign ADC_CAL_GAIN = CFG_IN[CFG_BLOCK_WIDTH*2 - 1: CFG_BLOCK_WIDTH+(CFG_BLOCK_WIDTH-FP_WIDTH)];
	//assign ADC_CAL_OFFSET = CFG_IN[CFG_BLOCK_WIDTH*3 - 1: CFG_BLOCK_WIDTH*2+(CFG_BLOCK_WIDTH-FP_WIDTH)];
	assign ADC_CAL_GAIN = CFG_IN[FP_WIDTH -1 : 0];
	assign ADC_CAL_OFFSET = CFG_IN[2*FP_WIDTH -1 : FP_WIDTH];
	assign DAC_CAL_GAIN = CFG_IN[3*FP_WIDTH -1 : 2*FP_WIDTH];
	assign DAC_CAL_OFFSET = CFG_IN[4*FP_WIDTH -1 : 3*FP_WIDTH];


	assign enable = GP_IN[GPIO_WIDTH-1];
	assign DACA_CODE_OUT = GP_IN[DAC_WIDTH - 1: 0];
	assign DACB_CODE_OUT = DAC_CODE_OUT;

	ADC_IN  #(
		.FP_WIDTH(FP_WIDTH),
		.ADC_WIDTH(ADC_WIDTH),
		.NUM_SAMPS(NUM_SAMPS-1)
	) ADC0 (
		.ADC_CLK(ADC_CLK),
		.ADC_DATA_IN(ADC_DATA_IN),
		// .TIMER_OFFSET(TIMER_OFFSET),
		// .TIME_VALUE(TIME_VALUE),
		.enable(enable),
		.DONE(DONE),
		.ADC_16QM_OUT(ADC_16QM_OUT),
		.REG_WRITE(REG_WRITE),
		.REG_RST(REG_RST)
	);

	my_mult #(
		.DATA_WIDTH(FP_WIDTH)
	) MULT1 (
		.a(ADC_16QM_OUT), .b(ADC_CAL_GAIN), .p(ADC_CAL_MUL_DATA_OUT)
	);

	gen_subber #(
		.IN_WIDTH(FP_WIDTH)
	) ADD0 (
		.a(ADC_CAL_MUL_DATA_OUT),
		.b(ADC_CAL_OFFSET),
		.s(ADC_CAL_ADD_DATA_OUT)
	);

	gen_reg #(
		.DATA_WIDTH(FP_WIDTH)
	) REG0 (
		.data_in(ADC_CAL_ADD_DATA_OUT[FP_WIDTH - 1 : 0]),
		.clk(ADC_CLK),
		.wrt(REG_WRITE),
		.rst(REG_RST),
		.data_out(REG_DATA)
	);

	DAC_OUT #(
		.FP_WIDTH(FP_WIDTH),
		.DAC_WIDTH(DAC_WIDTH)
	) DAC0 (
		.IN_VOLTAGE(REG_DATA),
		.DAC_CAL_GAIN(DAC_CAL_GAIN),
		.DAC_CAL_OFFSET(DAC_CAL_OFFSET),
		.DAC_CODE_OUT(DAC_CODE_OUT)
	);
endmodule
