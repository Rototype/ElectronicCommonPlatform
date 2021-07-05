################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/i2c_access.c \
../src/iic_phyreset.c \
../src/main.c \
../src/platform.c \
../src/platform_zynq.c \
../src/sfp.c \
../src/si5324.c \
../src/tcp_perf_client.c \
../src/tcp_perf_server.c \
../src/xscugic_custom.c \
../src/xscugic_hw_custom.c 

OBJS += \
./src/i2c_access.o \
./src/iic_phyreset.o \
./src/main.o \
./src/platform.o \
./src/platform_zynq.o \
./src/sfp.o \
./src/si5324.o \
./src/tcp_perf_client.o \
./src/tcp_perf_server.o \
./src/xscugic_custom.o \
./src/xscugic_hw_custom.o 

C_DEPS += \
./src/i2c_access.d \
./src/iic_phyreset.d \
./src/main.d \
./src/platform.d \
./src/platform_zynq.d \
./src/sfp.d \
./src/si5324.d \
./src/tcp_perf_client.d \
./src/tcp_perf_server.d \
./src/xscugic_custom.d \
./src/xscugic_hw_custom.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../CPU1_inverter_bsp/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


