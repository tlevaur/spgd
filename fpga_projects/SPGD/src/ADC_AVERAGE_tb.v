module ADC_AVERAGE_tb;
localparam NUM_SAMPS = 8192;
localparam H_period=2;
localparam F_period=4;
localparam AVE_period = F_period*1024;
localparam FLOAT_WIDTH = 64;

reg ADC_CLK = 1'b0;
reg RST = 1'b0;
reg [11:0] DATA_IN=12'hC00;

wire DONE;

wire [14-1:0] DACA_CODE_WIRE_OUT;
wire [14-1:0] DACB_CODE_WIRE_OUT;

reg [32-1:0] GPIO_REG = 32'h0000_0000;
wire [32-1:0] GPIO_WIRE;

ADC_DAC_LOOP #(.FLOAT_WIDTH(64), .ADC_WIDTH(12), .DAC_WIDTH(14), .GPIO_WIDTH(32)) ADC_DAC_LOOP0 (
    .ADC_DATA_IN(DATA_IN),
    .ADC_CLK(ADC_CLK),
    .GP_IN(GPIO_REG),
    .GP_OUT(GPIO_WIRE),
    .DONE(DONE),
    .DACA_CODE_OUT(DACA_CODE_WIRE_OUT),
    .DACB_CODE_OUT(DACB_CODE_WIRE_OUT)
);

always begin
    ADC_CLK = 1'b0;
    #H_period;
    ADC_CLK = 1'b1;
    #H_period;
end
initial
begin
    // write_data = $fopen("filter_output.txt","w");
    repeat(1) begin
        #AVE_period;
        // $fdisplay(write_data, "%x\n", ADD_WIRE_OUT);
        // RST = 1'b1;
        // DATA_IN = DATA_IN + 1;
        #F_period;
        // RST = 1'b0;
    end
    // $fclose(write_data);
    // $finish;
end
endmodule