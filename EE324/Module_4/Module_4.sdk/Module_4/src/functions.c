/*
 * functions.c
 *
 *  Created on: Mar 10, 2019
 *      Author: root
 */


#include "functions.h"

void testPWM()
{
	*LED_PWM_BASEADDR = 0xF;
	*(LED_PWM_BASEADDR + 1) = 0x3FF;
	*(LED_PWM_BASEADDR + 2) = 0x100;//0x080;
	*(LED_PWM_BASEADDR + 3) = 0x100;//0x100;
	*(LED_PWM_BASEADDR + 4) = 0x3FF;
	*(LED_PWM_BASEADDR + 5) = 0xFFFFFFF;
	//*(LED_PWM_BASEADDR + 6) = 0x1;
	//*(LED_PWM_BASEADDR + 7) = 0x1;
	//*(LED_PWM_BASEADDR + 8) = 0x1;
}
