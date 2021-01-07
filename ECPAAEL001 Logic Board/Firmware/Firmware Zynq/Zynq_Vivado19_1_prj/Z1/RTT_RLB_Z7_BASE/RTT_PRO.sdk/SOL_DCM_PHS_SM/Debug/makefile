################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include Sol_drv/subdir.mk
-include Sm_drv/subdir.mk
-include Phs_Drv/subdir.mk
-include Dcm_drv/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
SOL_DCM_PHS_SM.elf.size \


# All Target
all: pre-build main-build

# Main-build Target
main-build: SOL_DCM_PHS_SM.elf secondary-outputs

# Tool invocations
SOL_DCM_PHS_SM.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 gcc linker'
	arm-none-eabi-gcc -lm -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -Wl,-build-id=none -specs=Xilinx.spec -Wl,-T -Wl,../src/lscript.ld -L../../SOL_DCM_PHS_SM_bsp/ps7_cortexa9_0/lib -o "SOL_DCM_PHS_SM.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

SOL_DCM_PHS_SM.elf.size: SOL_DCM_PHS_SM.elf
	@echo 'Invoking: ARM v7 Print Size'
	arm-none-eabi-size SOL_DCM_PHS_SM.elf  |tee "SOL_DCM_PHS_SM.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) SOL_DCM_PHS_SM.elf
	-@echo ' '

pre-build:
	-a9-linaro-pre-build-step
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
