vlib work
vcom elevator_state.vhd floor_control.vhd elevator_state_tb.vhd
vsim -t ns work.elevator_state_tb
view wave
add wave -radix binary /clk
add wave -radix binary /input_clk
add wave -radix binary /floor_call_array_up
add wave -radix binary /floor_call_array_down
add wave -radix binary /destination_array
add wave -radix binary /elevator_state1/door
add wave -radix unsigned /elevator_state1/current_floor
add wave -radix binary /elevator_state1/floor_call
add wave -radix binary /elevator_state1/floor_stop
add wave -radix binary /elevator_state1/i_direction
add wave -radix binary /elevator_state1/destination
add wave -radix ascii /elevator_state1/current_state
add wave -radix ascii /elevator_state1/next_state
add wave -radix binary /input_array
add wave -radix binary /enable
add wave -radix binary /floor_control1/which_array
add wave -radix binary /floor_control1/which_direction
add wave -radix unsigned /floor_control1/which_floor
add wave -radix binary /elevator_state1/in_idle
run 1000 ns