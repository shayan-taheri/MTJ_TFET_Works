#######################################################################
####                   Script for Synthesis                        #### 
#######################################################################

# Root Directory = test_dir

# Run the following script in the "work" directory.

# Open Synopsys Design Compiler = dc_shell

# Command: source ../scripts/dc_scripts.tcl > dc_run.txt

# *** Before Running, Change These Variables Based on Your Design ***
set Clock_Name clk
set Top_Name aes_16

# Set the Link and Target Library
set link_library {* ../models/saed32rvt_tt1p05v25c.db}

set target_library {../models/saed32rvt_tt1p05v25c.db}

# rtl = Directory of RTL(s)
analyze -library WORK -format verilog {../rtl/aes_16.v}

# Write the Top Design RTL File
read_file -format verilog {../rtl/aes_16.v}

############### Design Constraints ###############

set PERIOD  5
set INPUT_DELAY  1
set OUTPUT_DELAY  1
set CLOCK_LATENCY 0.2
set MIN_IO_DELAY 1.0
set MAX_TRANSITION 0.5

## CLOCK BASICS (IMPORTANT: The design clock name should be written in here.)
create_clock -name "$Clock_Name" -period $PERIOD [get_ports $Clock_Name]
set_clock_latency $CLOCK_LATENCY [get_clocks $Clock_Name]
set_clock_uncertainty 0.3 [get_clocks $Clock_Name]
set_clock_transition 0.5 [get_clocks $Clock_Name]


## GROUPING
group_path  -name CLOCK\
            -to $Clock_Name\
            -weight 1

## IN/OUT
set INPUTPORTS [remove_from_collection [all_inputs] [get_ports $Clock_Name]]
set OUTPUTPORTS [all_outputs]
  
set_input_delay -clock "$Clock_Name" -max $INPUT_DELAY $INPUTPORTS
set_output_delay -clock "$Clock_Name" -max $OUTPUT_DELAY $OUTPUTPORTS
set_input_delay -clock "$Clock_Name" -min $MIN_IO_DELAY $INPUTPORTS
set_output_delay -clock "$Clock_Name" -min $MIN_IO_DELAY $OUTPUTPORTS
set max_cap [expr [load_of saed32rvt_tt1p05v25c/INVX1_RVT/A] * 6]

##################################################

link

# Write the Name of Top Design Module
set_fix_multiple_port_nets -all -buffer_constants [get_designs $Top_Name]

change_names -rules verilog -hierarchy

set_fix_hold [all_clocks]

compile -exact_map -map_effort medium -ungroup_all

# Check Design
check_design > ../output/check_design.txt
check_timing > ../output/check_timing.txt

# Create Unique Instances
uniquify

# Export netlist for post-synthesis simulation
write -f verilog -h -out ../output/netlist.v
write -f ddc -h -out ../output/design.ddc
write_sdc ../output/design.sdc

# Generate Reports
report_area > ../output/area_report.txt
report_timing > ../output/timing_report.txt
report_power > ../output/power_report.txt
report_constraint -all_violators > ../output/violator_report.txt
report_register -level_sensitive > ../output/latch_report.txt

exit
