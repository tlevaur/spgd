module ADC_AVERAGE
#(
    parameter ADC_WIDTH = 12,
    parameter NUM_SAMPS = 1024,
    parameter FLOAT_WIDTH = 64
)
(
    input CLK,
    input RST,
    // input [FLOAT_WIDTH/2  - 1 : 0] TIMER_OFFSET,
    // input [FLOAT_WIDTH/2  - 1 : 0] TIME_VALUE,
    input  [ADC_WIDTH - 1 : 0] DATA_IN,
    output DONE,
    output [ADC_WIDTH - 1 : 0] DATA_OUT
);

reg [ 64-1 : 0] SUM = {64{1'b0}};
wire internal_done;
wire internal_done_monitor;
wire [64-2 : 0] ADDER_IN;
gen_counter COUNT0 (.wait_val(NUM_SAMPS), .clk(CLK), .en(!RST), .f(internal_done));
gen_counter COUNT1 (.wait_val(NUM_SAMPS+2), .clk(CLK), .en(!RST), .f(internal_done_monitor));

reg  [ ADC_WIDTH : 0] VALID_SUM = {ADC_WIDTH{1'b0}};

assign ADDER_IN = {{12{DATA_IN[ADC_WIDTH-1]}}, DATA_IN} ;

always @(posedge CLK)
if (RST == 1'b1) begin
    SUM   = {FLOAT_WIDTH{1'b0}};
end 
else
begin
    if (!internal_done) begin // start
        SUM   = $signed(SUM) + $signed(ADDER_IN);
    end
    else
    begin
        VALID_SUM = SUM[13+11:11];
    end
end

assign DONE = internal_done_monitor;
assign DATA_OUT = VALID_SUM[ADC_WIDTH - 1:0];
endmodule