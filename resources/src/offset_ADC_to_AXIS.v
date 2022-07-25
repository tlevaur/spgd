// offset_ADC_to_AXIS
// This module takes two inputs, one for each channel of the ADC.
// Each channel is to be a 12-bit uint which counts the number of
// voltage steps away from -10.0 Volts.
// This module outputs two master AXI_Stream channels for the 
// floating point Xilinx IP blocks.
module offset_ADC_to_AXIS
#(
	parameter ADC_WIDTH = 12,
	parameter AXIS_TDATA_WIDTH = 32
)
(
	(* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000" *)
	input [ADC_WIDTH - 1:0] offset_adc_a,
	input [ADC_WIDTH - 1:0] offset_adc_b,
	output m_axis_a_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_a_tdata,
	output m_axis_b_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_b_tdata
);
	localparam PAD_WIDTH = AXIS_TDATA_WIDTH - ADC_WIDTH;
	wire zero_pad = {PAD_WIDTH{1'b0}};
	//wire [AXIS_TDATA_WIDTH - 1:0] 

	wire [ADC_WIDTH - 1:0] off_a_out;
	wire [ADC_WIDTH - 1:0] off_b_out;

	twos_to_ADC_offset #(.DATA_WIDTH(12)) twos_0(.data_in(offset_adc_a), .data_out(off_a_out));
	twos_to_ADC_offset #(.DATA_WIDTH(12)) twos_1(.data_in(offset_adc_b), .data_out(off_b_out));

	assign m_axis_a_tvalid = 1'b1;
	assign m_axis_b_tvalid = 1'b1;

	assign m_axis_a_tdata = {zero_pad, off_a_out};
	assign m_axis_b_tdata = {zero_pad, off_b_out};
endmodule

