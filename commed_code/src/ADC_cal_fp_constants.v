// ADC_cal_fp_constants.v
// This module outputs the hardcoded floating point values
// needed to calibrate the ADC_offset.
module ADC_cal_fp_constants
#(
	parameter AXIS_TDATA_WIDTH = 32
)
(
	output m_axis_a_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_a_tdata,
	output m_axis_b_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_b_tdata,
	output m_axis_c_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_c_tdata,
	output m_axis_d_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_d_tdata,
	output m_axis_e_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_e_tdata,
	output m_axis_f_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_f_tdata,
	output m_axis_g_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_g_tdata,
	output m_axis_h_tvalid,
	output [AXIS_TDATA_WIDTH - 1:0] m_axis_h_tdata
);
	reg [AXIS_TDATA_WIDTH - 1:0] IN1_CalGain = 32'h3F8D6F6B;
	reg [AXIS_TDATA_WIDTH - 1:0] IN1_CalOffset = 32'h43559F3B;
	reg [AXIS_TDATA_WIDTH - 1:0] IN2_CalGain = 32'h3F8EC89A;
	reg [AXIS_TDATA_WIDTH - 1:0] IN2_CalOffset = 32'h436A8BF0;
	reg [AXIS_TDATA_WIDTH - 1:0] ideal_gain = 32'h3C200A01;
	reg [AXIS_TDATA_WIDTH - 1:0] ideal_offset = 32'hC1A00000;


	assign m_axis_a_tvalid = 1'b1;
	assign m_axis_b_tvalid = 1'b1;
	assign m_axis_c_tvalid = 1'b1;
	assign m_axis_d_tvalid = 1'b1;
	assign m_axis_e_tvalid = 1'b1;
	assign m_axis_f_tvalid = 1'b1;
	assign m_axis_g_tvalid = 1'b1;
	assign m_axis_h_tvalid = 1'b1;

	assign m_axis_a_tdata = IN1_CalGain;
	assign m_axis_b_tdata = IN1_CalOffset;
	assign m_axis_c_tdata = IN2_CalGain;
	assign m_axis_d_tdata = IN2_CalOffset;
	assign m_axis_e_tdata = ideal_gain;
	assign m_axis_f_tdata = ideal_offset;
	assign m_axis_g_tdata = ideal_gain;
	assign m_axis_h_tdata = ideal_offset;
endmodule
