module ADC_AVERAGE_tb;
localparam NUM_SAMPS = 4096;
localparam H_period=2;
localparam F_period=4;
localparam AVE_period = F_period*1024;
localparam FLOAT_WIDTH = 64;

reg ADC_CLK = 1'b0;
reg RST = 1'b0;
reg [11:0] DATA_IN=12'h000;
reg [1023:0] CFG_IN=1024'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_000A_1000_0000_0000;
wire DONE;

wire [14-1:0] DACA_CODE_WIRE_OUT;
wire [14-1:0] DACB_CODE_WIRE_OUT;
wire [12-1:0] ADC_CODE_WIRE_OUT;

reg [32-1:0] GPIO_REG = 32'h0000_0000;
wire [32-1:0] GPIO_WIRE;
integer write_data;

ADC_DAC_LOOP #(
    .FLOAT_WIDTH(64), 
    .ADC_WIDTH(12), 
    .DAC_WIDTH(14), 
    .GPIO_WIDTH(32)
) ADC_DAC_LOOP0 (
    .CFG_IN(CFG_IN),
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
    write_data = $fopen("filter_output_a.txt","w");
    GPIO_REG = 32'h8000_0000;

    repeat(NUM_SAMPS) begin
        #AVE_period;
        // RST = 1'b1;
        #H_period;
        $fdisplay(write_data, "%x", DACA_CODE_WIRE_OUT);
        #F_period;
        #F_period;
        DATA_IN = DATA_IN + 1;
        #F_period;
    end
    $fclose(write_data);
    $finish;
end
endmodule