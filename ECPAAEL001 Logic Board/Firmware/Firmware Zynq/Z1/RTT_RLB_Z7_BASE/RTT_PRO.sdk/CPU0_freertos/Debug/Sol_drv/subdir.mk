################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sol_drv/solenoide.c 

OBJS += \
./Sol_drv/solenoide.o 

C_DEPS += \
./Sol_drv/solenoide.d 


# Each subdirectory must supply rules for building sources it contributes
Sol_drv/%.o: ../Sol_drv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Dcm_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Phs_Drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Sm_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Sol_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\tasks" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../CPU0_freertos_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


