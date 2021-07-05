################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tasks/crc16.c \
../tasks/iic_eeprom.c \
../tasks/protocol.c \
../tasks/task_cpu1.c \
../tasks/task_dcm.c \
../tasks/task_dout.c \
../tasks/task_hwcc.c \
../tasks/task_object.c \
../tasks/task_phs.c \
../tasks/task_sm.c \
../tasks/task_sol.c \
../tasks/task_spi.c \
../tasks/task_xadc.c \
../tasks/xspips_custom.c 

OBJS += \
./tasks/crc16.o \
./tasks/iic_eeprom.o \
./tasks/protocol.o \
./tasks/task_cpu1.o \
./tasks/task_dcm.o \
./tasks/task_dout.o \
./tasks/task_hwcc.o \
./tasks/task_object.o \
./tasks/task_phs.o \
./tasks/task_sm.o \
./tasks/task_sol.o \
./tasks/task_spi.o \
./tasks/task_xadc.o \
./tasks/xspips_custom.o 

C_DEPS += \
./tasks/crc16.d \
./tasks/iic_eeprom.d \
./tasks/protocol.d \
./tasks/task_cpu1.d \
./tasks/task_dcm.d \
./tasks/task_dout.d \
./tasks/task_hwcc.d \
./tasks/task_object.d \
./tasks/task_phs.d \
./tasks/task_sm.d \
./tasks/task_sol.d \
./tasks/task_spi.d \
./tasks/task_xadc.d \
./tasks/xspips_custom.d 


# Each subdirectory must supply rules for building sources it contributes
tasks/%.o: ../tasks/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Dcm_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Phs_Drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Sm_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\Sol_drv" -I"D:\MW\RTT\VVD\Z\Z1\RTT_RLB_Z7_BASE\RTT_PRO.sdk\CPU0_freertos\tasks" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../CPU0_freertos_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


