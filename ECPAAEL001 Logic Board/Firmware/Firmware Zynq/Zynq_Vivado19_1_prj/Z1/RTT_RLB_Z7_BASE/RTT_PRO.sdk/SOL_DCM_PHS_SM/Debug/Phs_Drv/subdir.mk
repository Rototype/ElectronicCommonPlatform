################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Phs_Drv/phs.c 

OBJS += \
./Phs_Drv/phs.o 

C_DEPS += \
./Phs_Drv/phs.d 


# Each subdirectory must supply rules for building sources it contributes
Phs_Drv/%.o: ../Phs_Drv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Dcm_drv" -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Phs_Drv" -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Sm_drv" -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Sol_drv" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../SOL_DCM_PHS_SM_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


