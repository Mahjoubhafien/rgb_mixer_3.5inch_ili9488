################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/others/imgfont/lv_imgfont.c 

OBJS += \
./lvgl/src/others/imgfont/lv_imgfont.o 

C_DEPS += \
./lvgl/src/others/imgfont/lv_imgfont.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/others/imgfont/%.o lvgl/src/others/imgfont/%.su lvgl/src/others/imgfont/%.cyclo: ../lvgl/src/others/imgfont/%.c lvgl/src/others/imgfont/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/examples" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/src" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lcd" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lvgl" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/tsc" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-others-2f-imgfont

clean-lvgl-2f-src-2f-others-2f-imgfont:
	-$(RM) ./lvgl/src/others/imgfont/lv_imgfont.cyclo ./lvgl/src/others/imgfont/lv_imgfont.d ./lvgl/src/others/imgfont/lv_imgfont.o ./lvgl/src/others/imgfont/lv_imgfont.su

.PHONY: clean-lvgl-2f-src-2f-others-2f-imgfont

