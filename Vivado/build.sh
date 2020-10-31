#!/bin/sh

# Make sure you run this in the folder you wish to have your project in.

# Insert the path where the vivado binary is located.
VIVADO_PATH="/media/aleksi/HDDLnx/XilinxInstall/Vivado/2020.1/bin"
$VIVADO_PATH/vivado -mode gui -source build.tcl 
