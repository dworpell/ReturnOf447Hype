############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Aes_barebones
set_top aes_main
add_files Aes_barebones/aes_kernel.c
add_files Aes_barebones/aes_kernel.h
add_files -tb Aes_barebones/aes_kernel.h
add_files -tb Aes_barebones/aes_tb.c
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./Aes_barebones/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
