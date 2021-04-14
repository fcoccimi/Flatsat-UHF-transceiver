vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../ipstatic" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll_clk_wiz.v" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

