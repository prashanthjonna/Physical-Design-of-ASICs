#rm designs/*

# reading the sel_sense.v verilog file 
read_hdl /home/cad5/Hw-2/sel_sense.v

# setting the .lib file to be used
set_attr library /home/cad5/PDK/sky130_fd_sc_hs/Liberty/sky130_fd_sc_hs__ss_150C_1v60.lib

elaborate
set_attr syn_generic_effort high
syn_gen
syn_map

# setting the max delay from input pins A, S to output pin B to be 50 ps
set_max_delay 0.05 -from A -to B
set_max_delay 0.05 -from S -to B

# for the value of S = 0
set_case_analysis 0 S

# seting the value of input's transition to 40 ps
set_input_transition 0.04 A

# the load capacitance of output pin B is incremented in values of 0.02 from 0.005 to 0.1
# started with 0.02 as it was easier for the file naming and representation 

foreach in collection itr [list 0.005 0.02 0.04 0.06 0.08 0.1] {
set_load $itr -pin_load B

set_attr syn_opt_effort high
syn_opt

report_timing -from A -to B > /home/cad5/Hw-2/hs_S0_data/$itr+_hs_s0_report.txt
}


# for the value of S = 1

set_case_analysis 1 S

# the load capacitance of output pin B is incremented in values of 0.02 from 0.005 to 0.1
# started with 0.02 as it was easier for the file naming and representation 

foreach in collection itr [list 0.005 0.02 0.04 0.06 0.08 0.1] {
set_load $itr -pin_load B

set_attr syn_opt_effort high
syn_opt

report_timing -from A -to B > /home/cad5/Hw-2/hs_S1_data/$itr+_hs_s1_report.txt
}


