################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../aes_kernel.c 

OBJS += \
./source/aes_kernel.o 

C_DEPS += \
./source/aes_kernel.d 


# Each subdirectory must supply rules for building sources it contributes
source/aes_kernel.o: C:/Users/DanRW/AppData/Roaming/Xilinx/Vivado/AES_Strip/aes_kernel.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/DanRW/AppData/Roaming/Xilinx/Vivado -IB:/Xilinx/Vivado/2018.3/win64/tools/auto_cc/include -IB:/Xilinx/Vivado/2018.3/win64/tools/systemc/include -IB:/Xilinx/Vivado/2018.3/include/etc -IB:/Xilinx/Vivado/2018.3/include/ap_sysc -IB:/Xilinx/Vivado/2018.3/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

