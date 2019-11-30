############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Strip
set_top aes_main
add_files AES_Strip/aes_kernel.c
add_files AES_Strip/aes_kernel.h
add_files -tb AES_Strip/aes_kernel.h
add_files -tb AES_Strip/aes_tb.c
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 5 -name default
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
#source "./AES_Strip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
