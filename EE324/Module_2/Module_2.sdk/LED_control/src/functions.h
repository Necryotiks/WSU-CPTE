/*
 * functions.h
 *
 *  Created on: Mar 4, 2019
 *      Author: Sergaljerk
 */

#ifndef SRC_FUNCTIONS_H_
#define SRC_FUNCTIONS_H_
#endif /* SRC_FUNCTIONS_H_ */

#include "xil_types.h"

#define LED_BASEADDR ((uint32_t *)0x4BB00000)
void demoLEDS();
void shiftLEDS();
uint32_t readLED();
uint32_t enableLED();
uint32_t toggleLED();

