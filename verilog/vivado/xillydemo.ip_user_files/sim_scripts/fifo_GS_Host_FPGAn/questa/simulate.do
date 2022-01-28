onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_GS_Host_FPGAn_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_GS_Host_FPGAn.udo}

run -all

quit -force
