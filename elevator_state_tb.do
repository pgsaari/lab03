vlib work
vcom elevator_state.vhd floor_control.vhd elevator_state_tb.vhd master_control.vhd
vsim -t ns work.elevator_state_tb
view wave
add wave -radix binary /clk
add wave -radix binary /input_clk

add wave -divider -height 10 Elevator1

add wave -radix unsigned /elevator_state1/current_floor
add wave -radix ascii /elevator_state1/current_state
add wave -group Elevator1 -radix ascii /elevator_state1/next_state
add wave -group Elevator1 -radix binary /elevator_state1/i_direction
add wave -group Elevator1 -radix binary {/total_floor_call_up[9:0]}
add wave -group Elevator1 -radix binary {/total_floor_call_down[9:0]}
add wave -group Elevator1 -radix binary /elevator_state1/floor_call
add wave -group Elevator1 -radix binary /destination_array
add wave -group Elevator1 -radix binary /elevator_state1/destination
add wave -group Elevator1 -radix binary /elevator_state1/floor_stop
add wave -group Elevator1 -radix binary /floor_control1/input_array
add wave -group Elevator1 -radix binary /floor_control1/enable

add wave -divider -height 10 Elevator2

add wave -radix unsigned /elevator_state2/current_floor
add wave -radix ascii /elevator_state2/current_state
add wave -group Elevator2 -radix ascii /elevator_state2/next_state
add wave -group Elevator2 -radix binary /elevator_state2/i_direction
add wave -group Elevator2 -radix binary {/total_floor_call_up[19:10]}
add wave -group Elevator2 -radix binary {/total_floor_call_down[19:10]}
add wave -group Elevator2 -radix binary /elevator_state2/floor_call
add wave -group Elevator2 -radix binary /destination_array
add wave -group Elevator2 -radix binary /elevator_state2/destination
add wave -group Elevator2 -radix binary /elevator_state2/floor_stop
add wave -group Elevator2 -radix binary /floor_control2/input_array
add wave -group Elevator2 -radix binary /floor_control2/enable

add wave -divider -height 10 Inputs

add wave -radix binary /input_array
add wave -radix binary /input_choose_elevator
add wave -radix binary /enable

add wave -group Master -radix binary /M_control/enable_floor_control
add wave -group Master -radix binary /current_floor
add wave -group Master -radix binary /direction
add wave -group Master -radix binary /state_of_machine
add wave -group Master -radix binary /M_control/floor_array_up
add wave -group Master -radix binary /M_control/floor_array_down
add wave -group Master -radix binary /M_control/input/check1
add wave -group Master -radix binary /M_control/input/check2
add wave -group Master -radix binary /M_control/input/check3
add wave -group Master -radix binary /M_control/input/check4
add wave -group Master -radix binary /M_control/input/check5
add wave -group Master -radix binary /M_control/input/individual_floor 

run 1000 ns