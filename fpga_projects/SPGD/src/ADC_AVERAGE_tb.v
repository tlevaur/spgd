module ADC_AVERAGE_tb;
localparam NUM_SAMPS = 8192;
localparam H_period=2;
localparam F_period=4;
localparam AVE_period = F_period*1024;

reg ADC_CLK = 1'b0;
reg RST = 1'b0;
reg [11:0] DATA_IN=12'h000;
// reg [47:0] GAIN_MUL_IN=48'h0000_2000_0000;
reg [47:0] GAIN_MUL_IN=48'h0000_0280_2800;
wire [11:0] DATA_OUT;
wire [95:0] MUL_DATA_OUT;
wire [47:0] MUL_A_INPUT;
wire DONE;
wire [47:0] MULT_SPLIT;
wire [11:0] ADC_OFFSET_WIRE;
reg [47:0] ADC_OFFSET=48'hFFEB_FFFF_FFFF;
wire [48:0] ADD_WIRE_OUT;

integer write_data;

assign MULT_SPLIT = MUL_DATA_OUT[80:32];

twos_to_ADC_offset #(.DATA_WIDTH(12)) ADCO0 (.data_in(DATA_IN), .data_out(ADC_OFFSET_WIRE));

ADC_AVERAGE  #(.ADC_WIDTH(12), .NUM_SAMPS(1024)) ADC_AVERAGE0 (.DATA_IN(ADC_OFFSET_WIRE), .DATA_OUT(DATA_OUT), .CLK(ADC_CLK), .DONE(DONE), .RST(RST));

gen_padder #(.IN_WIDTH(12), .OUT_WIDTH(48), .L_PAD_WIDTH(4), .R_PAD_WIDTH(32)) PAD0 (.in(DATA_OUT), .out(MUL_A_INPUT));

gen_mult #(.DATA_WIDTH(48)) MULT0 (.a(MUL_A_INPUT), .b(GAIN_MUL_IN), .p(MUL_DATA_OUT));

gen_adder #(.IN_WIDTH(48)) ADD0 (.a(MULT_SPLIT), .b(ADC_OFFSET), .s(ADD_WIRE_OUT));

always begin
    ADC_CLK = 1'b0;
    #H_period;
    ADC_CLK = 1'b1;
    #H_period;
end
initial
begin
    write_data = $fopen("filter_output.txt","w");
    repeat(NUM_SAMPS) begin
        #AVE_period;
        $fdisplay(write_data, "%x\n", ADD_WIRE_OUT);
        RST = 1'b1;
        DATA_IN = DATA_IN + 1;
        #F_period;
        RST = 1'b0;
    end
    $fclose(write_data);
    $finish;
end
endmodule