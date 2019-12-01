############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Test_Dma
set_top aes_main2
add_files Test_Dma/Youdumbbitch.c
add_files Test_Dma/aes_dma.c
add_files Test_Dma/temp.h
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e} -tool vivado
create_clock -period 10 -name default
#source "./Test_Dma/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
