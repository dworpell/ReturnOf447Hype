# ==============================================================
# File generated on Wed Nov 27 00:32:48 -0500 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../aes_kernel.h -cflags { -Wno-unknown-pragmas}
add_files -tb ../aes_tb.c -cflags { -Wno-unknown-pragmas}
add_files AES_Strip/aes_kernel.c
add_files AES_Strip/aes_kernel.h
set_part xczu3eg-sbva484-1-e
create_clock -name default -period 10
set_clock_uncertainty 12.5% default
config_bind -effort=medium
config_sdx -optimization_level=none
config_sdx -target=none
config_schedule -effort=medium
config_schedule -relax_ii_for_timing=0
config_export -format=ip_catalog
config_export -rtl=verilog
