
# Set the reference directory to where the script is
set origin_dir [file dirname [info script]]

# Project name
set project_name "ws2812_pynq"

# Creates project files
create_project $project_name $origin_dir/$project_name -part xc7z020clg400-1 -force

# Set the board as pynq-z2
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]

# Add the source and constraint files
add_files -norecurse $origin_dir/src/vhdl/ws2812.vhd
add_files -fileset constrs_1 -norecurse $origin_dir/src/constr/pin_constraints.xdc

update_compile_order -fileset sources_1

# Build the block diagram
source "src/bd/design_1.tcl"

update_compile_order -fileset sources_1

# Make the HDL wrapper
make_wrapper -files [get_files $design_name.bd] -top -import

update_compile_order -fileset sources_1
