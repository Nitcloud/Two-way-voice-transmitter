set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN N11 [get_ports sys_clk]
create_clock -period 20.000 [get_ports sys_clk]
set_input_jitter [get_clocks -of_objects [get_ports sys_clk]] 0.200
set_property PHASESHIFT_MODE WAVEFORM [get_cells -hierarchical *adv*]


set_property IOSTANDARD LVCMOS33 [get_ports AD9926_clk_1]
set_property IOSTANDARD LVCMOS33 [get_ports AD9926_clk_2]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_2[0]}]


set_property PACKAGE_PIN N13 [get_ports AD9926_clk_1]
set_property PACKAGE_PIN R12 [get_ports AD9926_clk_2]
set_property PACKAGE_PIN M16 [get_ports {AD9926_data_1[11]}]
set_property PACKAGE_PIN N16 [get_ports {AD9926_data_1[10]}]
set_property PACKAGE_PIN N14 [get_ports {AD9926_data_1[9]}]
set_property PACKAGE_PIN P15 [get_ports {AD9926_data_1[7]}]
set_property PACKAGE_PIN R15 [get_ports {AD9926_data_1[5]}]
set_property PACKAGE_PIN T14 [get_ports {AD9926_data_1[3]}]
set_property PACKAGE_PIN P16 [get_ports {AD9926_data_1[8]}]
set_property PACKAGE_PIN R16 [get_ports {AD9926_data_1[6]}]
set_property PACKAGE_PIN T15 [get_ports {AD9926_data_1[4]}]
set_property PACKAGE_PIN P14 [get_ports {AD9926_data_1[2]}]
set_property PACKAGE_PIN M12 [get_ports {AD9926_data_1[1]}]
set_property PACKAGE_PIN R13 [get_ports {AD9926_data_1[0]}]
set_property PACKAGE_PIN T13 [get_ports {AD9926_data_2[11]}]
set_property PACKAGE_PIN P13 [get_ports {AD9926_data_2[10]}]
set_property PACKAGE_PIN T12 [get_ports {AD9926_data_2[9]}]
set_property PACKAGE_PIN K13 [get_ports {AD9926_data_2[8]}]
set_property PACKAGE_PIN N12 [get_ports {AD9926_data_2[7]}]
set_property PACKAGE_PIN P11 [get_ports {AD9926_data_2[6]}]
set_property PACKAGE_PIN K12 [get_ports {AD9926_data_2[5]}]
set_property PACKAGE_PIN P9 [get_ports {AD9926_data_2[4]}]
set_property PACKAGE_PIN P10 [get_ports {AD9926_data_2[3]}]
set_property PACKAGE_PIN R11 [get_ports {AD9926_data_2[2]}]
set_property PACKAGE_PIN N9 [get_ports {AD9926_data_2[1]}]
set_property PACKAGE_PIN T10 [get_ports {AD9926_data_2[0]}]


set_property IOSTANDARD LVCMOS33 [get_ports FM_OUT]
set_property PACKAGE_PIN B7 [get_ports FM_OUT]


set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AD9926_data_3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports AD9926_clk_3]
set_property PACKAGE_PIN T9 [get_ports AD9926_clk_3]
set_property PACKAGE_PIN R10 [get_ports {AD9926_data_3[11]}]
set_property PACKAGE_PIN T8 [get_ports {AD9926_data_3[10]}]
set_property PACKAGE_PIN R8 [get_ports {AD9926_data_3[9]}]
set_property PACKAGE_PIN T7 [get_ports {AD9926_data_3[8]}]
set_property PACKAGE_PIN R7 [get_ports {AD9926_data_3[7]}]
set_property PACKAGE_PIN T5 [get_ports {AD9926_data_3[6]}]
set_property PACKAGE_PIN R6 [get_ports {AD9926_data_3[5]}]
set_property PACKAGE_PIN M6 [get_ports {AD9926_data_3[4]}]
set_property PACKAGE_PIN R5 [get_ports {AD9926_data_3[3]}]
set_property PACKAGE_PIN N6 [get_ports {AD9926_data_3[2]}]
set_property PACKAGE_PIN P6 [get_ports {AD9926_data_3[1]}]
set_property PACKAGE_PIN L5 [get_ports {AD9926_data_3[0]}]


