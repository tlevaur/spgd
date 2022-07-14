module DAC_offset_to_twos_tb;
localparam H_period=2;

reg [13:0]DATA_IN=14'h0000;
wire [13:0]DATA_OUT;

DAC_offset_to_twos  #(.WIRE_WIDTH(14)) DACO0 (.data_in(DATA_IN), .data_out(DATA_OUT));

initial
begin
    #H_period;
    DATA_IN = 14'h0000;
    #H_period;
    DATA_IN = 14'h0001;
    #H_period;
    DATA_IN = 14'h1ffe;
    #H_period;
    DATA_IN = 14'h1fff;
    #H_period;
    DATA_IN = 14'h2000;
    #H_period;
    DATA_IN = 14'h3FFe;
    #H_period;
    DATA_IN = 14'h3FFe;
end
endmodule