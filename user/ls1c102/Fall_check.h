#ifndef __FALL_CHECK_H
#define __FALL_CHECK_H

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

int16_t AX, AY, AZ, GX, GY, GZ;			//定义用于存放各个数据的变量
uint16_t temp1,res1,temp2,res2;
//char English_message2[]={"FALL"};                             //心率异常
//char phonenumber1[]={"15392464885"}; 

uint16_t my_sqrt(uint32_t num);
void Fall_check();

#endif