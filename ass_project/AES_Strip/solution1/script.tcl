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
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 5 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_schedule -effort medium -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose=0
config_export -format ip_catalog -rtl verilog -vivado_phys_opt place -vivado_report_level 0
config_bind -effort medium
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
source "./AES_Strip/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
