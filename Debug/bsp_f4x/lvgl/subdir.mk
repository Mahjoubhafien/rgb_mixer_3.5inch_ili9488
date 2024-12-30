################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp_f4x/lvgl/tft.c \
../bsp_f4x/lvgl/touchpad.c 

OBJS += \
./bsp_f4x/lvgl/tft.o \
./bsp_f4x/lvgl/touchpad.o 

C_DEPS += \
./bsp_f4x/lvgl/tft.d \
./bsp_f4x/lvgl/touchpad.d 


# Each subdirectory must supply rules for building sources it contributes
bsp_f4x/lvgl/%.o bsp_f4x/lvgl/%.su bsp_f4x/lvgl/%.cyclo: ../bsp_f4x/lvgl/%.c bsp_f4x/lvgl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/examples" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/src" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lcd" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lvgl" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/tsc" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-bsp_f4x-2f-lvgl

clean-bsp_f4x-2f-lvgl:
	-$(RM) ./bsp_f4x/lvgl/tft.cyclo ./bsp_f4x/lvgl/tft.d ./bsp_f4x/lvgl/tft.o ./bsp_f4x/lvgl/tft.su ./bsp_f4x/lvgl/touchpad.cyclo ./bsp_f4x/lvgl/touchpad.d ./bsp_f4x/lvgl/touchpad.o ./bsp_f4x/lvgl/touchpad.su

.PHONY: clean-bsp_f4x-2f-lvgl

