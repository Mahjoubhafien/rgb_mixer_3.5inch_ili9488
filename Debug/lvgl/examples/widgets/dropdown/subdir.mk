################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/widgets/dropdown/lv_example_dropdown_1.c \
../lvgl/examples/widgets/dropdown/lv_example_dropdown_2.c \
../lvgl/examples/widgets/dropdown/lv_example_dropdown_3.c 

OBJS += \
./lvgl/examples/widgets/dropdown/lv_example_dropdown_1.o \
./lvgl/examples/widgets/dropdown/lv_example_dropdown_2.o \
./lvgl/examples/widgets/dropdown/lv_example_dropdown_3.o 

C_DEPS += \
./lvgl/examples/widgets/dropdown/lv_example_dropdown_1.d \
./lvgl/examples/widgets/dropdown/lv_example_dropdown_2.d \
./lvgl/examples/widgets/dropdown/lv_example_dropdown_3.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/widgets/dropdown/%.o lvgl/examples/widgets/dropdown/%.su lvgl/examples/widgets/dropdown/%.cyclo: ../lvgl/examples/widgets/dropdown/%.c lvgl/examples/widgets/dropdown/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/examples" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/lvgl/src" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lcd" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/lvgl" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch/bsp_f4x/tsc" -I"C:/Users/KURAPIKA/Documents/MCU3/my_work/rgb_mixer_3.5inch" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-widgets-2f-dropdown

clean-lvgl-2f-examples-2f-widgets-2f-dropdown:
	-$(RM) ./lvgl/examples/widgets/dropdown/lv_example_dropdown_1.cyclo ./lvgl/examples/widgets/dropdown/lv_example_dropdown_1.d ./lvgl/examples/widgets/dropdown/lv_example_dropdown_1.o ./lvgl/examples/widgets/dropdown/lv_example_dropdown_1.su ./lvgl/examples/widgets/dropdown/lv_example_dropdown_2.cyclo ./lvgl/examples/widgets/dropdown/lv_example_dropdown_2.d ./lvgl/examples/widgets/dropdown/lv_example_dropdown_2.o ./lvgl/examples/widgets/dropdown/lv_example_dropdown_2.su ./lvgl/examples/widgets/dropdown/lv_example_dropdown_3.cyclo ./lvgl/examples/widgets/dropdown/lv_example_dropdown_3.d ./lvgl/examples/widgets/dropdown/lv_example_dropdown_3.o ./lvgl/examples/widgets/dropdown/lv_example_dropdown_3.su

.PHONY: clean-lvgl-2f-examples-2f-widgets-2f-dropdown

