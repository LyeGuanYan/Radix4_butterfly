###############################################################################
# Created by write_sdc
# Sat Nov  4 11:58:16 2023
###############################################################################
current_design R4_butter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 
set_clock_uncertainty 0.2500 clk
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {Xio[3]}]
set_load -pin_load 0.1900 [get_ports {Xio[2]}]
set_load -pin_load 0.1900 [get_ports {Xio[1]}]
set_load -pin_load 0.1900 [get_ports {Xio[0]}]
set_load -pin_load 0.1900 [get_ports {Xro[3]}]
set_load -pin_load 0.1900 [get_ports {Xro[2]}]
set_load -pin_load 0.1900 [get_ports {Xro[1]}]
set_load -pin_load 0.1900 [get_ports {Xro[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 1.0000 [current_design]
set_max_fanout 20.0000 [current_design]
