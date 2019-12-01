############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Strip
set_top aes_main
add_files AES_Strip/aes_kernel.c
add_files AES_Strip/aes_kernel.h
add_files -tb AES_Strip/aes_kernel.h -cflags "-Wno-unknown-pragmas"
add_files -tb AES_Strip/aes_tb.c -cflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_bind -effort medium
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
config_export -format ip_catalog -rtl verilog
set_clock_uncertainty 12.5%
#source "./AES_Strip/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
