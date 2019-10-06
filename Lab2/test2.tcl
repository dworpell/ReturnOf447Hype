#open project so we are actually modifying the project
open_project convolution2

#open a solution named solution3. It is created if it doesn't exist and is reset if it does
open_solution -reset solution3
#Set the part number for this solution
set_part xczu3eg-sbva484-1-e
#Specify the clock we are aiming to meet (Defaulted to 10ns)
create_clock

#Set a directive for pipelining loop i_section in function convolve_kernel
set_directive_loop_flatten "convolve_kernel/convolve_kernel_label0"
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufi
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufo
set_directive_array_reshape -type complete -dim 1 "convolve_kernel" bufw
set_directive_pipeline "convolve_kernel/i_section"

csynth_design
#Done
exit