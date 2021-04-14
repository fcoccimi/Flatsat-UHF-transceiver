onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Clk_gen_pll -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Clk_gen_pll xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Clk_gen_pll.udo}

run -all

endsim

quit -force
