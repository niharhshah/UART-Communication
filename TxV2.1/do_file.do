vcom proclock.vhd Counter.vhd TxV2.vhd Testbench.vhd
vsim demo
add wave *
add wave -position insertpoint  \
sim:/demo/dut/present \
sim:/demo/dut/nxt
add wave -position insertpoint  \
sim:/demo/dut/probhai/inclk \
sim:/demo/dut/probhai/latch \
sim:/demo/dut/probhai/prescaler \
sim:/demo/dut/probhai/clk \
sim:/demo/dut/probhai/presv \
sim:/demo/dut/probhai/internalclk \
sim:/demo/dut/probhai/count \
sim:/demo/dut/probhai/latchedPre

run 100 ms