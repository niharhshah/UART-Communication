transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Tx.vho}

vcom -93 -work work {/home/nihar/Projects/UART/TxV2.1/Testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=Tx_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  demo

add wave *
view structure
view signals
run 5 ms
