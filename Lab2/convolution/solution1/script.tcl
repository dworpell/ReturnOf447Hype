############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project convolution
set_top convolve_kernel
add_files config.h
add_files convolve.h
add_files data.h
add_files instance.h
add_files instance_lab2.h
add_files instance_lab3.h
add_files kernel.cpp
add_files kernel.h
add_files sdk.h
add_files tempkernel.h
add_files -tb convolve.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb main.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb data.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb sdk.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 5 -name default
source "./convolution/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
