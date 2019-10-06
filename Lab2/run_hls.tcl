
##############################################
# Project settings

# Create project
open_project	-reset convolution3

# Add source files and test bench
add_files			kernel.cpp
add_files           config.h
add_files           convolve.h
add_files           data.h
add_files           instance.h
add_files           instance_lab2.h
add_files           instance_lab3.h
add_files           kernel.h
add_files           sdk.h
add_files			tempkernel3.h
add_files -tb	    sdk.cpp
add_files -tb	    data.cpp
add_files -tb	    main.cpp
add_files -tb	    convolve.cpp
# Specify the top-level function for synthesis
set_top				convolve_kernel

###########################
# Solution settings

# Create solution1
open_solution -reset solution1

# Specify a Xilinx device and clock period
# - Do not specify a clock uncertainty (margin)
# - Let the  margin to default to 12.5% of clock period
set_part  {xczu3eg-sbva484-1-e}
create_clock -period 10
#set_clock_uncertainty 1.25

# Do not perform any other steps
# - The basic project will be opened in the GUI 
exit

