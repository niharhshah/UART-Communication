do Rx_run_msim_rtl_vhdl.do
restart -f
force -freeze sim:/modulerx/clk 1 0, 0 {10000 ps} -r {20 ns}
force -freeze sim:/modulerx/Rx 1 0
run
run
force -freeze sim:/modulerx/Rx 0 0
run
run
force -freeze sim:/modulerx/Rx 1 0
run
force -freeze sim:/modulerx/Rx 0 0
run
run
run
run
force -freeze sim:/modulerx/Rx 1 0
run
force -freeze sim:/modulerx/Rx 0 0
run
force -freeze sim:/modulerx/Rx 1 0
run 1ms
