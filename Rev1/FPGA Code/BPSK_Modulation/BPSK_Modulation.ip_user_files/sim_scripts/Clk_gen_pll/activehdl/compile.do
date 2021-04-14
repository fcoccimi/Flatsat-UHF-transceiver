vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll_clk_wiz.v" \
"../../../../BPSK_Modulation.gen/sources_1/ip/Clk_gen_pll/Clk_gen_pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

