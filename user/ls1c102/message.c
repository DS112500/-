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

char dispbuf[50];

void sim900a_send_English_message(char *English_message,char *phonenumber)
{
    UART_SendString(UART0,"AT\r\n");
    OLED_Show_Str(30,3,"1",16);
    delay_ms(1000);

    UART_SendString(UART0,"ATEO\r\n");
    OLED_Show_Str(30,3,"2",16);
    delay_ms(1000);

    UART_SendString(UART0,"AT+ICCID\r\n");
    OLED_Show_Str(30,3,"3",16);
    delay_ms(1000);

    UART_SendString(UART0,"AT+CGATT?\r\n");
    OLED_Show_Str(30,3,"4",16);
    delay_ms(1000);

    UART_SendString(UART0,"AT+CSMS=1\r\n");
    OLED_Show_Str(30,3,"5",16);
    delay_ms(1000);

    UART_SendString(UART0,"AT+CMGF=1\r\n");
    OLED_Show_Str(30,3,"6",16);
    delay_ms(1000);

    UART_SendString(UART0,"AT+CSMP=17.167.0.0\r\n");
    OLED_Show_Str(30,3,"7",16);
    delay_ms(1000);

    sprintf(dispbuf,"AT+CMGS=\"%s\"\r\n",phonenumber);
    OLED_Show_Str(30,3,"8",16);
    UART_SendString(UART0,dispbuf);
    delay_ms(1000);

    UART_SendString(UART0,English_message);
    OLED_Show_Str(30,3,"9",16);
    delay_ms(1000);

    UART_SendData(UART0,0x1A);
    OLED_Show_Str(30,3,"10",16);
    delay_ms(6000);
} 