################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/main.c \
../src/platform.c 

OBJS += \
./src/main.o \
./src/platform.o 

C_DEPS += \
./src/main.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Dcm_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Phs_Drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Sm_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Sol_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\tasks" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../CPU0_freertos_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


