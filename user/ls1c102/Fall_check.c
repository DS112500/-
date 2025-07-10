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
#include "message.h"
#include "mpu6050.h"
#include "oled.h"

int16_t AX, AY, AZ, GX, GY, GZ;			//定义用于存放各个数据的变量
uint16_t temp1,res1,temp2,res2;
int fallflag;
#define      Fall       GPIO_PIN_4

uint16_t my_sqrt(uint32_t num) {
    if (num == 0) return 0;
    uint32_t guess = num;
    uint32_t prev;
    do {
        prev = guess;
        guess = (guess + num / guess) >> 1; // 等价于 (guess + num/guess)/2
    } while (guess < prev);                 // 当猜测值不再减小时停止
    return (uint16_t)prev;
}

void Fall_check()
{
        MPU6050_GetData(&AX, &AY, &AZ, &GX, &GY, &GZ);		//获取MPU6050的数据
        temp1 = my_sqrt((uint32_t)(AX*AX+AY*AY+AZ*AZ));
        res1 = temp1;
       // OLED_ShowInt32Num(70,1,temp1,5,16);
        temp2 = my_sqrt((uint32_t)(GX*GX+GY*GY+GZ*GZ));
        res2 = temp2;
     //   OLED_ShowInt32Num(70,3,temp2,5,16);
        
        MPU6050_GetData(&AX, &AY, &AZ, &GX, &GY, &GZ);		//获取MPU6050的数据
        temp1 = my_sqrt((uint32_t)(AX*AX+AY*AY+AZ*AZ));
        temp2 = my_sqrt((uint32_t)(GX*GX+GY*GY+GZ*GZ));       // middle1 = res1-temp1;
        
       // OLED_ShowInt32Num(1, 1, res1-temp1 , 5 , 16);		//1列，4行
       // OLED_ShowInt32Num(1, 3, res2-temp2 , 5 , 16);		//1列，4行

        if((res1-temp1 > 1000 || res1-temp1<-1000) && (res2-temp2 > 1000 || res2-temp2<-1000) )
        {
            UART_SendString(UART0,"FALL");
            fallflag = 1;
             OLED_ShowString(0,0,"Fall",16);
            
        }
        if(fallflag == 1)
        {
            UART_SendString(UART1, "1");
            delay_s(1);
            fallflag = 0;
        }
       
}
        