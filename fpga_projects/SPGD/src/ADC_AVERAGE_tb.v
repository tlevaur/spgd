module ADC_AVERAGE_tb;
localparam H_period=2;
localparam F_period=4;

reg ADC_CLK = 1'b0;
reg RST = 1'b0;
reg [11:0] DATA_IN=12'h0000;
// reg [47:0] GAIN_MUL_IN=48'h0000_2000_0000;
reg [47:0] GAIN_MUL_IN=48'h0000_0280_2800;
wire [11:0] DATA_OUT;
wire [95:0] MUL_DATA_OUT;
wire [47:0] MUL_A_INPUT;
wire DONE;
wire [47:0] MULT_SPLIT;
wire [11:0] ADC_OFFSET; 

assign MULT_SPLIT = MUL_DATA_OUT[80:32];

ADC_AVERAGE  #(.ADC_WIDTH(12), .NUM_SAMPS(1024)) ADC_AVERAGE0 (.DATA_IN(DATA_IN), .DATA_OUT(DATA_OUT), .CLK(ADC_CLK), .DONE(DONE), .RST(RST));
twos_to_ADC_offset #(.DATA_WIDTH(12)) ADCO0 (.data_in(DATA_OUT), .data_out(ADC_OFFSET));

gen_padder #(.IN_WIDTH(12), .OUT_WIDTH(48), .L_PAD_WIDTH(4), .R_PAD_WIDTH(32)) PAD0 (.in(ADC_OFFSET), .out(MUL_A_INPUT));

gen_mult #(.DATA_WIDTH(48)) MULT0 (.a(MUL_A_INPUT), .b(GAIN_MUL_IN), .p(MUL_DATA_OUT));


always begin
    ADC_CLK = 1'b0;
    #H_period;
    ADC_CLK = 1'b1;
    #H_period;
end
initial
begin
    #H_period;
    repeat(1) begin
        DATA_IN = 12'h7FF;
        #F_period;
    end
    // repeat(512) begin
    //     DATA_IN = 12'h800;
    //     #F_period;
    // end

end
endmodule