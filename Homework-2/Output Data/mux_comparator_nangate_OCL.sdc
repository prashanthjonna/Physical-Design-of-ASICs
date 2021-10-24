# ####################################################################

#  Created by Genus(TM) Synthesis Solution 16.25-s068_1 on Sun Sep 26 12:42:32 +0530 2021

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1.0fF
set_units -time 1.0ps

# Set the current design
current_design mux_comparator

set_load -pin_load 0.0 [get_ports {z[2]}]
set_load -pin_load 0.0 [get_ports {z[1]}]
set_load -pin_load 0.0 [get_ports {z[0]}]
set_max_delay 0 -from [list \
  [get_ports {x[2]}]  \
  [get_ports {x[1]}]  \
  [get_ports {x[0]}]  \
  [get_ports {y[2]}]  \
  [get_ports {y[1]}]  \
  [get_ports {y[0]}] ] -to [list \
  [get_ports {z[2]}]  \
  [get_ports {z[1]}]  \
  [get_ports {z[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_transition 0.1 [get_ports {x[2]}]
set_input_transition 0.1 [get_ports {x[1]}]
set_input_transition 0.1 [get_ports {x[0]}]
set_input_transition 0.1 [get_ports {y[2]}]
set_input_transition 0.1 [get_ports {y[1]}]
set_input_transition 0.1 [get_ports {y[0]}]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells NanGate_15nm_OCL/ANTENNA]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILLTIE]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X1]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X2]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X4]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X8]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X16]
set_dont_use [get_lib_cells NanGate_15nm_OCL/TIEH]
set_dont_use [get_lib_cells NanGate_15nm_OCL/TIEL]
