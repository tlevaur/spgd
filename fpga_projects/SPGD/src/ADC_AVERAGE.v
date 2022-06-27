module ADC_AVERAGE
#(
    parameter ADC_WIDTH = 12,
    parameter NUM_SAMPS = 1024
)
(
    input CLK,
    input RST,
    input [ADC_WIDTH - 1 : 0] DATA_IN,
    output DONE,
    output [ADC_WIDTH : 0] DATA_OUT
);

reg [ 24-1 : 0] SUM = 24'h0;
// reg [ 13-1 : 0] internal_DATA_OUT = 13'h0;
wire internal_done;
wire [24-2 : 0] ADDER_IN;
gen_counter COUNT0 (.wait_val(NUM_SAMPS -1), .clk(CLK), .en(!RST), .f(internal_done));

assign ADDER_IN = {{12{DATA_IN[ADC_WIDTH-1]}}, DATA_IN} ;

always @(posedge CLK)
if (RST == 1'b1) begin
    SUM   <= 24'h0 ;
    // internal_DATA_OUT <= 13'h0;
end else begin
    if (!internal_done) begin // start
        SUM   <= $signed(SUM) + $signed(ADDER_IN);
    end
    // internal_DATA_OUT = SUM[13-1 : 0];
end

assign DONE = internal_done;
assign DATA_OUT = SUM[13+10:10];

endmodule