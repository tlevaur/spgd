module CFG_DATA_HANDLER
#(
    parameter DATA_WIDTH = 128,
    parameter ADC_WIDTH = 12,
    parameter DATA_OUT_WIDTH = 48
)
(
    input [DATA_WIDTH - 1 : 0] CFG_DATA,
    input [ADC_WIDTH - 1: 0] ADC_OFFSET_AVERAGE,
    output [DATA_OUT_WIDTH - 1 :0] DATA_OUT
);
    wire [95:0] MUL_DATA_OUT;
    wire [47:0] MUL_A_INPUT;
    wire [47:0] MULT_SPLIT;

    assign MULT_SPLIT = MUL_DATA_OUT[80:32];

    gen_padder #(.IN_WIDTH(12), .OUT_WIDTH(48), .L_PAD_WIDTH(4), .R_PAD_WIDTH(32)) PAD0 (.in(ADC_OFFSET_AVERAGE), .out(MUL_A_INPUT));

    gen_mult #(.DATA_WIDTH(48)) MULT0 (.a(MUL_A_INPUT), .b(GAIN_MUL_IN), .p(MUL_DATA_OUT));

    gen_adder #(.IN_WIDTH(48)) ADD0 (.a(MULT_SPLIT), .b(ADC_OFFSET), .s(DATA_OUT));
endmodule