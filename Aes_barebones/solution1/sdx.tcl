# ==============================================================
# File generated on Mon Dec 02 01:13:06 -0500 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../aes_tb.c -cflags { -Wno-unknown-pragmas}
add_files -tb ../aes_kernel.h -cflags { -Wno-unknown-pragmas}
add_files Aes_barebones/aes_kernel.h
add_files Aes_barebones/aes_kernel.c
set_part xczu3eg-sbva484-1-e
create_clock -name default -period 10
