#open project so we are actually modifying the project
open_project convolution

#open a solution named solution3. It is created if it doesn't exist and is reset if it does
open_solution -reset solution3
#Set the part number for this solution
set_part xczu3eg-sbva484-1-e
#Specify the clock we are aiming to meet (Defaulted to 10ns)
create_clock -period 10
set_directive_pipeline "convolve_kernel/i_section"

csynth_design
#Done
exit
