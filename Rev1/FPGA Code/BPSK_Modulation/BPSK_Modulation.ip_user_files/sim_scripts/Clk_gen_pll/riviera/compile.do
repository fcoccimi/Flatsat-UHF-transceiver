vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll_clk_wiz.v" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

