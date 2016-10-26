vlib work
vcom elevator_state.vhd elevator_state_tb.vhd
vsim -t ns work.elevator_state_tb
view wave
add wave -radix binary /clk
add wave -radix binary /floor_call_array
add wave -radix binary /destination_array
add wave -radix binary /elevator_state1/door
add wave -radix unsigned /elevator_state1/current_floor
add wave -radix binary /elevator_state1/floor_call
add wave -radix binary /elevator_state1/destination
add wave -radix ascii /elevator_state1/current_state
add wave -radix ascii /elevator_state1/next_state
run 1000 ns