#rm designs/*

# reading the sel_sense.v verilog file 
read_hdl /home/cad5/Hw-2/sel_sense.v

# setting the .lib file to be used
set_attr library /home/cad5/PDK/sky130_fd_sc_ms/Liberty/sky130_fd_sc_ms__ss_150C_1v60.lib

elaborate
set_attr syn_generic_effort high
syn_gen

# setting the don't use condition on the xor and xnor gates obtained after using the grep commands  
set_dont_use sky130_fd_sc_ms__xor2_1 sky130_fd_sc_ms__xor2_2 sky130_fd_sc_ms__xor2_4 sky130_fd_sc_ms__xnor2_1 sky130_fd_sc_ms__xnor2_2 sky130_fd_sc_ms__xor2_4

syn_map

# setting the max delay from input pins A, S to output pin B to be 50 ps
set_max_delay 0.05 -from A -to B
set_max_delay 0.05 -from S -to B

# setting the load capacitance of output pin B to 0.00297 pF
set_load 0.0029700000 B

set_attr syn_opt_effort high
syn_opt

# writing the obtained verilog file into sel_sense_output_ms_d.v file
write_hdl > sel_sense_output_ms_d.v
