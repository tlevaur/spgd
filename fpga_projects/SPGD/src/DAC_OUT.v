module DAC_OUT
#(
    parameter FLOAT_WIDTH = 64,
    parameter DAC_WIDTH = 14,
    parameter INT_WIDTH = 16
)
(
    input   [FLOAT_WIDTH  - 1 : 0] IN_VOLTAGE,
    input   [FLOAT_WIDTH  - 1 : 0] DAC_CAL_GAIN,
    input   [FLOAT_WIDTH  - 1 : 0] DAC_CAL_OFFSET,
    output  [DAC_WIDTH  - 1 : 0] DAC_CODE_OUT
);

    reg [FLOAT_WIDTH    - 1 : 0] N_SIXTEEN_K_OVER_TWENTY = {{16'hFCCC}, {((FLOAT_WIDTH-INT_WIDTH)/4){4'hC}}};
    // reg [FLOAT_WIDTH    - 1 : 0] SIXTEEN_K_OVER_TWENTY = 64'h0333_2666_6666_6666;
    // reg [FLOAT_WIDTH    - 1 : 0] EIGHT_k_OVER_TWENTY = 64'0199_9999_9999_9999;
    // reg [FLOAT_WIDTH    - 1 : 0] TEN = 64'h000A_0000_0000_0000;
    // reg [FLOAT_WIDTH    - 1 : 0] N_ONE = 64'hFFFF_0000_0000_0000;
    wire [INT_WIDTH      - 1 : 0] DAC_CODE_OUT_MUL;

    // assign DAC_CODE_OUT = DAC_CODE_OUT_MUL[13:0];

    wire [2*FLOAT_WIDTH - 1: 0] DAC_CAL_MUL_OUT;
    wire [FLOAT_WIDTH : 0] DAC_CAL_SUB_OUT;

    gen_mult #(.DATA_WIDTH(FLOAT_WIDTH)) cal_mult(.a(IN_VOLTAGE), .b(DAC_CAL_GAIN), .p(DAC_CAL_MUL_OUT));
    gen_subber #(.IN_WIDTH(FLOAT_WIDTH)) cal_sub(.a(DAC_CAL_MUL_OUT[FLOAT_WIDTH*2-1-INT_WIDTH:FLOAT_WIDTH-INT_WIDTH]), .b(DAC_CAL_OFFSET), .s(DAC_CAL_SUB_OUT));
    my_mult #(
        .DATA_WIDTH(FLOAT_WIDTH),
        .OUT_WIDTH(DAC_WIDTH),
        .INT_FORMAT(INT_WIDTH-DAC_WIDTH),
        .DEC_FORMAT(FLOAT_WIDTH-INT_WIDTH)
    ) MULT0 (
        .a(DAC_CAL_SUB_OUT[FLOAT_WIDTH - 1:0]),
        .b(N_SIXTEEN_K_OVER_TWENTY),
        .p(DAC_CODE_OUT)
    );



endmodule
