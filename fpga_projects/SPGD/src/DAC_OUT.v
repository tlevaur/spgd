module DAC_OUT
#(
    parameter FP_WIDTH = 64,
    parameter DAC_WIDTH = 14,
    parameter INT_WIDTH = 16
)
(
    input   [FP_WIDTH  - 1 : 0] IN_VOLTAGE,
    input   [FP_WIDTH  - 1 : 0] DAC_CAL_GAIN,
    input   [FP_WIDTH  - 1 : 0] DAC_CAL_OFFSET,
    output  [DAC_WIDTH  - 1 : 0] DAC_CODE_OUT
);

    reg [FP_WIDTH    - 1 : 0] N_SIXTEEN_K_OVER_TWENTY = {{16'hFCCC}, {((FP_WIDTH-INT_WIDTH)/4){4'hC}}};
    // reg [FP_WIDTH    - 1 : 0] SIXTEEN_K_OVER_TWENTY = 64'h0333_2666_6666_6666;
    // reg [FP_WIDTH    - 1 : 0] EIGHT_k_OVER_TWENTY = 64'0199_9999_9999_9999;
    // reg [FP_WIDTH    - 1 : 0] TEN = 64'h000A_0000_0000_0000;
    // reg [FP_WIDTH    - 1 : 0] N_ONE = 64'hFFFF_0000_0000_0000;
    wire [INT_WIDTH      - 1 : 0] DAC_CODE_OUT_MUL;

    // assign DAC_CODE_OUT = DAC_CODE_OUT_MUL[13:0];

    wire [2*FP_WIDTH - 1: 0] DAC_CAL_MUL_OUT;
    wire [FP_WIDTH : 0] DAC_CAL_SUB_OUT;

    gen_mult #(.DATA_WIDTH(FP_WIDTH)) cal_mult(.a(IN_VOLTAGE), .b(DAC_CAL_GAIN), .p(DAC_CAL_MUL_OUT));
    gen_subber #(.IN_WIDTH(FP_WIDTH)) cal_sub(.a(DAC_CAL_MUL_OUT[FP_WIDTH*2-1-INT_WIDTH:FP_WIDTH-INT_WIDTH]), .b(DAC_CAL_OFFSET), .s(DAC_CAL_SUB_OUT));
    my_mult #(
        .DATA_WIDTH(FP_WIDTH),
        .OUT_WIDTH(DAC_WIDTH),
        .INT_FORMAT(INT_WIDTH-DAC_WIDTH),
        .DEC_FORMAT(FP_WIDTH-INT_WIDTH)
    ) MULT0 (
        .a(DAC_CAL_SUB_OUT[FP_WIDTH - 1:0]),
        .b(N_SIXTEEN_K_OVER_TWENTY),
        .p(DAC_CODE_OUT)
    );



endmodule
