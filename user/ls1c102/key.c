#include "key.h"
#include "ls1x_gpio.h"
#include "ls1x_uart.h"

uint8_t flag33;

void KEY_init(void)
{
    gpio_set_direction(KEY1_PIN, GPIO_Mode_In); // 设置按键1的GPIO为输入
}

void KEY_Check(void)
{
    if (!gpio_get_pin(KEY1_PIN))// 读取按键状态
    { 
        UART_SendString(UART0,"Help");
    }

}
