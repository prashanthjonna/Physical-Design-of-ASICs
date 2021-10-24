#rm designs/*

# reading the verilog file mux_comparator.v
read_hdl /home/cad5/Hw-2/mux_comparator.v

# reading the required .lib file in Nangate 15nm OCL 
set_attr library /home/cad5/PDK/NanGate_15nm_OCL_v0.1_2014_06_Apache.A/front_end/timing_power_noise/NLDM/NanGate_15nm_OCL_slow_conditional_nldm.lib

elaborate
set_attr syn_generic_effort high
syn_gen
syn_map

# setting the max delays from all inputs to all outputs to be 250 ps
set_max_delay 0.25 -from [all_inputs] -to [all_outputs]

# setting the load capacitance value of all output pins to be 0.00084 pF
set_load 0.000839939 z[0] z[1] z[2]

# setting the input transition of all input pins to be 100 ps 
set_input_transition 0.1 x[0] x[1] x[2] y[0] y[1] y[2]

set_attr syn_opt_effort high
syn_opt

# writing the obtained verilog file in mux_comparator_nangate_OCL.v
write_hdl > mux_comparator_nangate_OCL.v

# writing the sdc specs into mux_comparator_nangate_OCL.sdc
write_sdc > mux_comparator_nangate_OCL.sdc  


# we get the critical path and the cells used in the critical path by using report_timing (by default)
report_timing

# we output all the timing reports of various paths possible from input pins to output pins into mux_comparator_OCL_timing_report.txt file, we can later compare to find out the min_delay path and obtain the cells used in that path
 
report_timing -from x[0] -to z[0] > mux_comparator_OCL_timing_report.txt
report_timing -from x[0] -to z[1] >> mux_comparator_OCL_timing_report.txt
report_timing -from x[0] -to z[2] >> mux_comparator_OCL_timing_report.txt

report_timing -from x[1] -to z[0] >> mux_comparator_OCL_timing_report.txt
report_timing -from x[1] -to z[1] >> mux_comparator_OCL_timing_report.txt
report_timing -from x[1] -to z[2] >> mux_comparator_OCL_timing_report.txt

report_timing -from x[2] -to z[0] >> mux_comparator_OCL_timing_report.txt
report_timing -from x[2] -to z[1] >> mux_comparator_OCL_timing_report.txt
report_timing -from x[2] -to z[2] >> mux_comparator_OCL_timing_report.txt

report_timing -from y[0] -to z[0] >> mux_comparator_OCL_timing_report.txt
report_timing -from y[0] -to z[1] >> mux_comparator_OCL_timing_report.txt
report_timing -from y[0] -to z[2] >> mux_comparator_OCL_timing_report.txt

report_timing -from y[1] -to z[0] >> mux_comparator_OCL_timing_report.txt
report_timing -from y[1] -to z[1] >> mux_comparator_OCL_timing_report.txt
report_timing -from y[1] -to z[2] >> mux_comparator_OCL_timing_report.txt

report_timing -from y[2] -to z[0] >> mux_comparator_OCL_timing_report.txt
report_timing -from y[2] -to z[1] >> mux_comparator_OCL_timing_report.txt
report_timing -from y[2] -to z[2] >> mux_comparator_OCL_timing_report.txt


