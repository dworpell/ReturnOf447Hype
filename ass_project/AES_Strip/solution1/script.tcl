############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Strip
add_files AES_Strip/aes_kernel.c
add_files AES_Strip/aes_kernel.h
add_files -tb AES_Strip/aes_kernel.h
add_files -tb AES_Strip/aes_tb.c
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./AES_Strip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
