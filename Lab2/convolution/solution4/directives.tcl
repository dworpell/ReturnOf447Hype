############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "convolve_kernel/to_b_section"
set_directive_array_partition -type complete -dim 2 "convolve_kernel" bufw
set_directive_unroll "convolve_kernel/i_section"
