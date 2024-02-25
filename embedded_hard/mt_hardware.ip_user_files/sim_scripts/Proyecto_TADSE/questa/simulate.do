onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "D:/ProgramFiles/Xilinx/Vivado/2016.4/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib Proyecto_TADSE_opt

do {wave.do}

view wave
view structure
view signals

do {Proyecto_TADSE.udo}

run -all

quit -force
