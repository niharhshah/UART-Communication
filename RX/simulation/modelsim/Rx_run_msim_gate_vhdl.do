transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Rx.vho}

vcom -93 -work work {D:/Semester2/UART/UART/RX/Testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Rx_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  demo

add wave *
view structure
view signals
run -all
