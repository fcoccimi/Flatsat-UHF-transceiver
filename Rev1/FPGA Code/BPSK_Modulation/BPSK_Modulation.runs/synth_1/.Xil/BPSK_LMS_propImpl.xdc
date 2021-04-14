set_property SRC_FILE_INFO {cfile:c:/Users/franc/Documents/GitHub/ELEC-490/BPSK_Modulation/BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll.xdc rfile:../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll.xdc id:1 order:EARLY scoped_inst:Clk_gen_pll/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/digilent-xdc-master/Arty-A7-35-Master.xdc rfile:../../../../../../../../../digilent-xdc-master/Arty-A7-35-Master.xdc id:2} [current_design]
current_instance Clk_gen_pll/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports mclk]] 0.1
current_instance
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk];
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports clkout];
set_property src_info {type:XDC file:2 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports {out[0]}];
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A11 IOSTANDARD LVCMOS33} [get_ports {out[1]}];
set_property src_info {type:XDC file:2 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D12 IOSTANDARD LVCMOS33} [get_ports {out[2]}];
set_property src_info {type:XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D13 IOSTANDARD LVCMOS33} [get_ports {out[3]}];
set_property src_info {type:XDC file:2 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {out[4]}];
set_property src_info {type:XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {out[5]}];
set_property src_info {type:XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports {out[6]}];
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports U_RX];
set_property src_info {type:XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { test }]; #IO_L11N_T1_SRCC_15 Sch=jb_n[1]
set_property src_info {type:XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports {out[7]}];
set_property src_info {type:XDC file:2 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports {out[8]}];
set_property src_info {type:XDC file:2 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {out[9]}];
set_property src_info {type:XDC file:2 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {out[10]}];
set_property src_info {type:XDC file:2 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {out[11]}];
set_property src_info {type:XDC file:2 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports tx_iq_sel];
