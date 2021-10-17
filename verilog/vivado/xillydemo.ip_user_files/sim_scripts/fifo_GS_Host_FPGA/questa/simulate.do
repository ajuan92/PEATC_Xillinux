onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_GS_Host_FPGA_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_GS_Host_FPGA.udo}

run -all

quit -force
