################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps.c \
../P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_g.c \
../P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_intr.c \
../P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_selftest.c \
../P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_sinit.c 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps.o \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_g.o \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_intr.o \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_selftest.o \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_sinit.o 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps.d \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_g.d \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_intr.d \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_selftest.d \
./P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/xadcps_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/xadcps_v2_2/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


