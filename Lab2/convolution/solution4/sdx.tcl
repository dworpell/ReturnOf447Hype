# ==============================================================
# File generated on Sun Oct 06 17:59:58 -0400 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../sdk.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../data.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../main.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../convolve.cpp -cflags { -Wno-unknown-pragmas}
add_files tempkernel.h
add_files sdk.h
add_files kernel.h
add_files kernel.cpp
add_files instance_lab3.h
add_files instance_lab2.h
add_files instance.h
add_files data.h
add_files convolve.h
add_files config.h
set_part xczu3eg-sbva484-1-e
create_clock -name default -period 8
set_directive_pipeline convolve_kernel/to_b_section 
set_directive_unroll convolve_kernel/i_section 
set_directive_array_partition convolve_kernel 
set_directive_array_partition convolve_kernel 
