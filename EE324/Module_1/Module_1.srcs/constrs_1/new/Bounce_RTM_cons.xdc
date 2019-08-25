set_property PACKAGE_PIN K14 [get_ports {o_Cathodes_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[0]}]
set_property PACKAGE_PIN H15 [get_ports {o_Cathodes_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[1]}]
set_property PACKAGE_PIN J18 [get_ports {o_Cathodes_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[2]}]
set_property PACKAGE_PIN J15 [get_ports {o_Cathodes_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[3]}]
set_property PACKAGE_PIN M17 [get_ports {o_Cathodes_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[4]}]
set_property PACKAGE_PIN J16 [get_ports {o_Cathodes_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Cathodes_0[6]}]
set_property PACKAGE_PIN K19 [get_ports {o_Anodes_0[0]}]
set_property PACKAGE_PIN H17 [get_ports {o_Anodes_0[1]}]
set_property PACKAGE_PIN M18 [get_ports {o_Anodes_0[2]}]
set_property PACKAGE_PIN L16 [get_ports {o_Anodes_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_Anodes_0[0]}]
set_property PACKAGE_PIN W13 [get_ports i_RST]
set_property IOSTANDARD LVCMOS33 [get_ports i_RST]
set_property IOSTANDARD LVCMOS33 [get_ports i_CLK]
set_property PACKAGE_PIN W14 [get_ports i_Signal]
set_property IOSTANDARD LVCMOS33 [get_ports i_Signal]
set_property PACKAGE_PIN H18 [get_ports {o_Cathodes_0[6]}]

create_clock -period 10.000 -name i_CLK -waveform {0.000 5.000} -add [get_ports i_CLK]
set_input_delay -clock [get_clocks i_CLK] -min -add_delay 5.000 [get_ports i_RST]
set_input_delay -clock [get_clocks i_CLK] -max -add_delay 10.000 [get_ports i_RST]
set_input_delay -clock [get_clocks i_CLK] -min -add_delay 5.000 [get_ports i_Signal]
set_input_delay -clock [get_clocks i_CLK] -max -add_delay 10.000 [get_ports i_Signal]
set_property PACKAGE_PIN H16 [get_ports i_CLK]



