vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../ipstatic" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll_clk_wiz.v" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

