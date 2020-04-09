module testbench();


parameter MAIN_FRE   = 500; //unit MHz
parameter FRE_OUT_0  = 50;
reg                   clk_main  = 0;
reg                   clk_0     = 0;
reg                   sys_rst_n = 0;

always begin
    #(500/MAIN_FRE) clk_main = ~clk_main;
end
always begin
    #(500/FRE_OUT_0) clk_0 = ~clk_0;
end
always begin
    #50 sys_rst_n = 1;
end

// DDS_Gen Outputs
wire  [11:0]  wave_out_sin_a;
DDS_Gen #(
    .OUTPUT_WIDTH ( 12 ),
    .PHASE_WIDTH  ( 32 ))
 u1_DDS_Gen (
    .clk_in                  ( clk_0      ),
    .Fre_word                ( 32'd292058 ),
    .Pha_word                ( 0          ),

    .wave_out_sin            ( wave_out_sin_a )
);

wire  [11:0]  wave_out_sin_b;
DDS_Gen #(
    .OUTPUT_WIDTH ( 12 ),
    .PHASE_WIDTH  ( 32 ))
 u2_DDS_Gen (
    .clk_in                  ( clk_0      ),
    .Fre_word                ( 32'd85899  ),
    .Pha_word                ( 0          ),

    .wave_out_sin            ( wave_out_sin_b   )
);


wire        [11:0] Module_SIG;
wire        [31:0] Fre_word;
Audio_Handle Audio_Handle_u(
    .clk_in(clk_0),
    .RST(~sys_rst_n),

    .Audio_CH1(wave_out_sin_a),
    .Audio_CH2(wave_out_sin_b),
    .Move_Fre_SIG(0),

    .Module_SIG(Module_SIG),
    .Fre_word(Fre_word)
);

wire        [11:0] FM_wave;
FM_Modulate #(
    .INPUT_WIDTH(12),
    .PHASE_WIDTH(32),
    .OUTPUT_WIDTH(12)
) FM_Modulate_u (
    .clk_in(clk_main),
    .RST(~sys_rst_n),
    .wave_in(Module_SIG),
    .move_fre(32'd105),          //(fre*1048576)/clk_in/1000000  //50k
    .center_fre(Fre_word),       //48.5m
    .FM_wave(FM_wave)
);


endmodule  //TOP