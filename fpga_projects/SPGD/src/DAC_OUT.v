module DAC_OUT
#(
    parameter FLOAT_WIDTH = 64,
    parameter DAC_WIDTH = 14
)
(
    input   [FLOAT_WIDTH  - 1 : 0] ADC_VOLTAGE,
    output  [DAC_WIDTH  - 1 : 0] DAC_CODE_OUT
);

    reg [FLOAT_WIDTH    - 1 : 0] N_SIXTEEN_K_OVER_TWENTY = 64'hFCCC_CCCC_CCCC_CCCC;
    // reg [FLOAT_WIDTH    - 1 : 0] SIXTEEN_K_OVER_TWENTY = 64'h0333_2666_6666_6666;
    // reg [FLOAT_WIDTH    - 1 : 0] EIGHT_k_OVER_TWENTY = 64'0199_9999_9999_9999;
    // reg [FLOAT_WIDTH    - 1 : 0] TEN = 64'h000A_0000_0000_0000;
    // reg [FLOAT_WIDTH    - 1 : 0] N_ONE = 64'hFFFF_0000_0000_0000;

    my_mult #(
        .DATA_WIDTH(FLOAT_WIDTH),
        .OUT_WIDTH(DAC_WIDTH),
        .INT_FORMAT(16-DAC_WIDTH),
        .DEC_FORMAT(FLOAT_WIDTH-16)
    ) MULT0 (
        .a(ADC_VOLTAGE),
        .b(N_SIXTEEN_K_OVER_TWENTY),
        .p(DAC_CODE_OUT)
    );

    // DAC_offset_to_twos #(.WIRE_WIDTH(DAC_WIDTH)) DAC0 (.data_in(DAC_CODE_WIRE_OUT[62 : 48]), .data_out(DAC_CODE));
endmodule