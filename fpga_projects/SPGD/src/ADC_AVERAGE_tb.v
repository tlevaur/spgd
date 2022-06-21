module ADC_AVERAGE_tb;
localparam H_period=2;
localparam F_period=4;

reg ADC_CLK = 1'b0;
reg RST = 1'b0;
reg [11:0] DATA_IN=12'h0000;
wire [11:0] DATA_OUT;
wire DONE;

ADC_AVERAGE  #(.ADC_WIDTH(12), .NUM_SAMPS(1024)) ADC_AVERAGE0 (.DATA_IN(DATA_IN), .DATA_OUT(DATA_OUT), .CLK(ADC_CLK), .DONE(DONE), .RST(RST));
always begin
    ADC_CLK = 1'b0;
    #H_period;
    ADC_CLK = 1'b1;
    #H_period;
end
initial
begin
    #H_period;
    repeat(512) begin
        DATA_IN = 12'h7FF;
        #F_period;
    end
    repeat(512) begin
        DATA_IN = 12'h800;
        #F_period;
    end

end
endmodule