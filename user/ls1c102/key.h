#ifndef __KEY_H
#define __KEY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x.h"


#define KEY1_PIN    GPIO_PIN_22

void KEY_init(void);
void KEY_Check(void);


#ifdef __cplusplus
}
#endif

#endif // __KEY_H
