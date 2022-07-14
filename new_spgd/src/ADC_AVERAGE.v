module ADC_AVERAGE
#(
    parameter ADC_WIDTH = 12,
    parameter NUM_SAMPS = 1024
)
(
    input CLK,
    input EN,
    input  [ADC_WIDTH - 1 : 0] DATA_IN,
    output DONE,
    output [ADC_WIDTH - 1 : 0] DATA_OUT
);

reg [ 24-1 : 0] SUM = 24'h000000;
// reg [ 13-1 : 0] internal_DATA_OUT = 13'h0;
wire internal_done;
wire internal_done_monitor;
wire [24-2 : 0] ADDER_IN;
gen_counter COUNT0 (.wait_val(NUM_SAMPS), .clk(CLK), .en(EN), .f(internal_done));
gen_counter COUNT1 (.wait_val(NUM_SAMPS+1), .clk(CLK), .en(EN), .f(internal_done_monitor));

reg  [ ADC_WIDTH : 0] VALID_SUM = {ADC_WIDTH{1'b0}};

assign ADDER_IN = {{12{DATA_IN[ADC_WIDTH-1]}}, DATA_IN} ;

always @(posedge CLK)
if (EN == 1'b0) begin
    SUM   = 24'h000000;
end 
else
begin
    if (!internal_done) begin // start
        SUM   = $signed(SUM) + $signed(ADDER_IN);
    end
    else
    begin
        VALID_SUM = SUM[13+10:10];
    end
end

assign DONE = internal_done_monitor;
assign DATA_OUT = VALID_SUM[ADC_WIDTH - 1:0];
endmodule
