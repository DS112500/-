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
#include "ls1x_string.h"
#define DATA_LEN    300

uint8_t m;

// 自定义字符串查找函数（返回位置指针）
char* my_strstr(char* str, const char* sub_str) {
    if (!str || !sub_str) return 0;
    
    char* start = str;
    while (*start) {
        char* p = start;
        const char* q = sub_str;
        while (*p && *q && *p == *q) {
            p++;
            q++;
        }
        if (!*q) return start; // 找到完整子串
        start++;
    }
    return 0; // 未找到
}

// 自定义字符查找函数
char* my_strchr(const char* s, char c) {
    if (!s) return 0;
    while (*s && *s != c) s++;
    return (*s == c) ? (char*)s : 0;
}

// 处理定位数据
void processLocationData() 
{
    char location[71] = {0};  // 70字节数据 + 1字节结束符
    char lat_str[15] = {0};   // 纬度字符串缓冲区
    char lng_str[15] = {0};   // 经度字符串缓冲区
    
    // 接收70字节数据
    for (int m = 0; m < 70; m++) {
        location[m] = UART_ReceiveData(UART2);
    }
    location[70] = '\0'; // 确保字符串结束

    // 查找"+CIPGSMLOC:"起始位置
    char* prefix = my_strstr(location, "+CIPGSMLOC:");
    if (prefix) {
        // 查找第一个逗号（状态码后）
        char* comma1 = my_strchr(prefix, ',');
        if (comma1) {
            // 查找第二个逗号（纬度后）
            char* comma2 = my_strchr(comma1 + 1, ',');
            if (comma2) {
                // 提取纬度（手动复制）
                char* src = comma1 + 1;
                char* dest = lat_str;
                while (src < comma2 && *src && dest < lat_str + sizeof(lat_str) - 1) {
                    *dest++ = *src++;
                }
                *dest = '\0'; // 结束字符串
                
                // 提取经度（手动复制）
                src = comma2 + 1;
                dest = lng_str;
                while (*src && ((*src >= '0' && *src <= '9') || *src == '.' || *src == '-') && 
                       dest < lng_str + sizeof(lng_str) - 1) {
                    *dest++ = *src++;
                }
                *dest = '\0'; // 结束字符串
                
                // 使用sprintf格式化输出（不使用任何字符串操作函数）
                char output[60];
                sprintf(output, "La: %s\r\nLo: %s\r\n", lat_str, lng_str);
                
                // 发送格式化后的数据（手动发送）
                char* p = output;
                while (*p) {
                    UART_SendData(UART0, *p);
                    p++;
                }
                return; // 成功解析并输出后返回
            }
        }
    }
    
    // 如果解析失败，发送原始数据
    for (int m = 0; m < 70; m++) {
        UART_SendData(UART0, location[m]);
    }
}



void M780E_send_location_message(void)
{
    UART_SendString(UART2,"AT\r\n");
    OLED_Show_Str(30,3,"1",16);
    delay_ms(1000);

    UART_SendString(UART2,"ATEO\r\n");
    OLED_Show_Str(30,3,"2",16);
    delay_ms(1000);

    UART_SendString(UART2,"AT+ICCID\r\n");
    OLED_Show_Str(30,3,"3",16);
    delay_ms(1000);

    UART_SendString(UART2,"AT+CGATT?\r\n");
    OLED_Show_Str(30,3,"4",16);
    delay_ms(1000);

    //AT+SAPBR=3,1,"CONTYPE","GPRS"\r
    UART_SendString(UART2,"AT+SAPBR=3,1,");
    UART_SendData(UART2,'"');
    UART_SendString(UART2,"CONTYPE");
    UART_SendData(UART2,'"');
    UART_SendString(UART2,","); 
    UART_SendData(UART2,'"');
    UART_SendString(UART2,"GPRS");
    UART_SendData(UART2,'"');
    UART_SendString(UART2,"\r\n");
    OLED_Show_Str(30,3,"5",16);
    delay_ms(1000);

    //AT+SAPBR=3,1,"APN",""\r
    UART_SendString(UART2,"AT+SAPBR=3,1,");
    UART_SendData(UART2,'"');
    UART_SendString(UART2,"APN");
    UART_SendData(UART2,'"');
    UART_SendString(UART2,","); 
    UART_SendData(UART2,'"');
    UART_SendData(UART2,'"');
    UART_SendString(UART2,"\r\n");
    OLED_Show_Str(30,3,"6",16);
    delay_ms(1000);

    UART_SendString(UART2,"AT+SAPBR=1,1\r\n");
    OLED_Show_Str(30,3,"7",16);
    delay_ms(1000);

    UART_SendString(UART2,"AT+SAPBR=2,1\r\n");
    OLED_Show_Str(30,3,"8",16);
    delay_ms(1000);

    UART_SendString(UART2,"AT+CIPGSMLOC=1,1\r\n");
    OLED_Show_Str(30,3,"9",16);
   
 //   UART_SendString(UART2,"AT+SCAN=1\r\n");
    processLocationData();
    
} 
