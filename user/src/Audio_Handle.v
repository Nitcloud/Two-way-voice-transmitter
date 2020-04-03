`timescale 1ns / 1ps
module Audio_Handle (
    input         clk_in,
    input         RST,

    input  [11:0] Audio_CH1,
    input  [11:0] Audio_CH2,
    input  [11:0] Move_Fre_SIG,

    output [11:0] Module_SIG,
    output [31:0] Fre_word
);

/***************************************************************************/
wire        [11:0] AM_wave;
AM_Module #(
    .INPUT_WIDTH(12),
    .PHASE_WIDTH(32),
    .OUTPUT_WIDTH(12)
) AM_Module_u (
    .clk_in(clk_in),
    .RST(RST),
    .wave_in(Audio_CH2),
    .module_deep(16'd32768),       //(2^16-1)*percent
    .center_fre(32'd858993),    //(fre*4294967296)/clk_in/1000000  //10K
    .AM_wave(AM_wave)
);
/***************************************************************************/

reg signed [11:0] Audio_SIG_r;
always @(posedge clk_in) begin
	if (RST) begin
		Audio_SIG_r <= 12'd0;
	end
	else begin
		Audio_SIG_r <= $signed(Audio_CH1) + $signed(AM_wave);
	end
end
assign Module_SIG = Audio_SIG_r;

reg signed [31:0] Carry_fre;
always @(posedge clk_in) begin
	if (RST) begin
		Carry_fre <= 32'd0;
	end
	else begin
		Carry_fre <= $signed(Move_Fre_SIG) * $signed(20'd10486);   //5M
	end
end

reg  [31:0] Fre_word_r;
always @(posedge clk_in) begin
	if (RST) begin
		Fre_word_r <= 32'd0;
	end
	else begin
		Fre_word_r <= 32'd416611827 + $signed(Carry_fre);
	end
end
assign Fre_word = Fre_word_r;

endmodule
