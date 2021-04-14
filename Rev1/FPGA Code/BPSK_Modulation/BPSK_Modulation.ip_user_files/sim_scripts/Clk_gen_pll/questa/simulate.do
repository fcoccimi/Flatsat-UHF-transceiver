onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Clk_gen_pll_opt

do {wave.do}

view wave
view structure
view signals

do {Clk_gen_pll.udo}

run -all

quit -force
