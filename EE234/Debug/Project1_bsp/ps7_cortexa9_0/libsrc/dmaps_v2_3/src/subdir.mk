################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_g.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_hw.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_selftest.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_sinit.c 

OBJS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_g.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_hw.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_selftest.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_sinit.o 

C_DEPS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_g.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_hw.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_selftest.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/xdmaps_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/%.o: ../Project1_bsp/ps7_cortexa9_0/libsrc/dmaps_v2_3/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


