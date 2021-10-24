# ####################################################################

#  Created by Genus(TM) Synthesis Solution 16.25-s068_1 on Sun Sep 26 12:42:36 +0530 2021

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design mux_comparator

set_load -pin_load 0.0006 [get_ports {z[2]}]
set_load -pin_load 0.0006 [get_ports {z[1]}]
set_load -pin_load 0.0006 [get_ports {z[0]}]
set_max_delay 0.25 -from [list \
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
set_dont_use [get_lib_cells gpdk045bc/CLKAND2X2]
set_dont_use [get_lib_cells gpdk045bc/CLKAND2X6]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX12]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX16]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX2]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX20]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX4]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX6]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX8]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX1]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX12]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX16]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX2]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX20]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX3]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX4]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX6]
set_dont_use [get_lib_cells gpdk045bc/CLKMX2X12]
set_dont_use [get_lib_cells gpdk045bc/CLKXOR2X1]
set_dont_use [get_lib_cells gpdk045bc/CLKXOR2X4]
set_dont_use [get_lib_cells gpdk045bc/HOLDX1]
set_dont_use [get_lib_cells gpdk045bc/CLKAND2X12]
set_dont_use [get_lib_cells gpdk045bc/CLKAND2X3]
set_dont_use [get_lib_cells gpdk045bc/CLKBUFX3]
set_dont_use [get_lib_cells gpdk045bc/CLKINVX8]
set_dont_use [get_lib_cells gpdk045bc/CLKMX2X6]
set_dont_use [get_lib_cells gpdk045bc/CLKXOR2X2]
set_dont_use [get_lib_cells gpdk045bc/CLKAND2X8]
set_dont_use [get_lib_cells gpdk045bc/CLKMX2X2]
set_dont_use [get_lib_cells gpdk045bc/CLKMX2X3]
set_dont_use [get_lib_cells gpdk045bc/CLKMX2X4]
set_dont_use [get_lib_cells gpdk045bc/CLKXOR2X8]
set_dont_use [get_lib_cells gpdk045bc/CLKMX2X8]
set_dont_use [get_lib_cells gpdk045bc/CLKAND2X4]
