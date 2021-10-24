#rm designs/*

# reading the verilog file mux_comparator_8bit.v
read_hdl /home/cad5/Hw-2/mux_comparator_8bit.v

# reading the required .lib file in Cadence RAK 
set_attr library /home/cad5/PDK/Cadence_RAK_18.1_blockImplementation/LIBS/lib/max/slow.lib

elaborate

set_attr syn_generic_effort high
syn_gen

syn_map

# setting the max delays from all inputs to all outputs to be 250 ps
set_max_delay 0.25 -from [all_inputs] -to [all_outputs] 

# setting the load capacitance value of all output pins to be 0.00060 pF
set_load 0.000601595 [all_outputs]      
# z[0] z[1] z[2] z[3] z[4] z[5] z[6] z[7]

# setting the input transition of all input pins to be 100 ps 
set_input_transition 0.1  [all_inputs]  
# x[0] x[1] x[2] x[3] x[4] x[5] x[6] x[7] y[0] y[1] y[2] y[3] y[4] y[5] y[6] y[7]

set_attr syn_opt_effort high
syn_opt

# we will get the critical path and the cells used in the critical path by using report_timing
report_timing > mux_comparator_8bit_RAK_timing_report.txt
