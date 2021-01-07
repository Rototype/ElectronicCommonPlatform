################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dcm_drv/DCM.c 

OBJS += \
./Dcm_drv/DCM.o 

C_DEPS += \
./Dcm_drv/DCM.d 


# Each subdirectory must supply rules for building sources it contributes
Dcm_drv/%.o: ../Dcm_drv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Dcm_drv" -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Phs_Drv" -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Sm_drv" -I"D:\MW\RTT\VVD\ZED\P0\RTT_ZED_SOL_DCM_PHS_SM_T\RTT_PRO.sdk\SOL_DCM_PHS_SM\Sol_drv" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../SOL_DCM_PHS_SM_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


