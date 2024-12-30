################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.c 

OBJS += \
./lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.o 

C_DEPS += \
./lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/widgets/imgbtn/%.o lvgl/examples/widgets/imgbtn/%.su lvgl/examples/widgets/imgbtn/%.cyclo: ../lvgl/examples/widgets/imgbtn/%.c lvgl/examples/widgets/imgbtn/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/examples" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/src" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lcd" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lvgl" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/tsc" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-widgets-2f-imgbtn

clean-lvgl-2f-examples-2f-widgets-2f-imgbtn:
	-$(RM) ./lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.cyclo ./lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.d ./lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.o ./lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.su

.PHONY: clean-lvgl-2f-examples-2f-widgets-2f-imgbtn

