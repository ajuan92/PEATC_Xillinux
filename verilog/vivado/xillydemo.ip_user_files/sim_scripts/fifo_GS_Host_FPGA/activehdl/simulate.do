onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fifo_GS_Host_FPGA -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_GS_Host_FPGA xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_GS_Host_FPGA.udo}

run -all

endsim

quit -force
