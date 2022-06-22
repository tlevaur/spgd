module twos_to_ADC_offset_tb;
localparam H_period=2;

reg [11:0]DATA_IN=14'h0000;
wire [11:0]DATA_OUT;

twos_to_ADC_offset  #(.WIRE_WIDTH(12)) ADCO0 (.data_in(DATA_IN), .data_out(DATA_OUT));

initial
begin   
    #H_period;
    DATA_IN = 14'h0ca3;
    #H_period;
    DATA_IN = 14'h0fff;
    #H_period;
    DATA_IN = 14'h0000;
    #H_period;
    DATA_IN = 14'h0001;
    #H_period;
    DATA_IN = 14'h07ff;
    #H_period;
    DATA_IN = 14'h0a10;
end
endmodule