module pulse_DAC
#(parameter DAC_WIDTH=14)
(input P, output [DAC_WIDTH-1:0]DAC_A, output [DAC_WIDTH-1:0]DAC_B);

    localparam [DAC_WIDTH - 1:0]
        DACVALUE1 = 14'b00_0000_0000_0000,
        DACVALUE2 = 14'b10_0000_0000_0000;
	
	reg[DAC_WIDTH-1:0] internalDAC_A=DACVALUE1;
	reg[DAC_WIDTH-1:0] internalDAC_B=DACVALUE1;
	assign DAC_A=internalDAC_A;
	assign DAC_B=internalDAC_B;

	always @(P)
	begin
		if(P)
		begin
			internalDAC_A=DACVALUE2;
			internalDAC_B=DACVALUE1;
		end
		else
		begin
			internalDAC_A=DACVALUE1;
			internalDAC_B=DACVALUE2;
		end	
	end
endmodule
