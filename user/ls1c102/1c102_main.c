#include "ls1x.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "ls1x_clock.h"
#include "UserGpio.h"
#include "Config.h"
#include "ls1x_uart.h"
#include "iic.h"
#include "oled.h"
#include "stdbool.h"
#include "Max30102_Work.h"
#include "mpu6050.h"
#include "message.h"
#include "location.h"
#include "Fall_check.h"
#include "key.h"

void gpio_init();

int main(int arg, char *args[])
{
    SystemClockInit();                          // 时钟等系统配置
    GPIOInit();                                 // io配置
    OLED_Init();                                // OLED初始化
    EnableInt();                                // 开总中断
    MPU6050_Init();	
    timer_init(1000);
    Max30102chushi();

    Uart0_init(115200);
    Uart2_init(9600);
    Uart1_init(115200);

    while (1)
    {     
        M780E_send_location_message();
        Max30102chushi();
        Max30102_Work();
        
    }
    return 0;
}