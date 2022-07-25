module ADC_FSM
(
    input adc_clk, 
    output REG_RST, 
    output REG_WRITE, 
    output ADC_RST, 
    input done, 
    input enable
);
//  REG_WRITE is MSB, REG_RST is first/midddle bit and ADC_RST is LSB bit
localparam [2:0]
	stopped = 3'b011,
	waiting = 3'b000,
	reg_write = 3'b100,
	sADC_RST = 3'b001;
     
localparam
    ON = 1'b1,
    OFF = 1'b0;


     reg [2:0] state = stopped;

     assign REG_WRITE = state[2];
     assign REG_RST = state[1];
     assign ADC_RST = state[0];

	always @(posedge adc_clk, posedge done )
	begin
	if (~enable) begin
		state = stopped;
	end
	else
	begin
		case( state )
		stopped:
		begin
			if(enable) begin
				state = waiting;
			end
		end
		waiting:
		begin
			if( done ) begin
				state = reg_write;
			end
			else begin
				state = waiting;
			end
		end
		reg_write:
		begin
			state = sADC_RST;
		end
		sADC_RST:
		begin
			state = waiting;
		end

		default:
		begin
			state = stopped;
		end
		endcase
		end
	end


endmodule
