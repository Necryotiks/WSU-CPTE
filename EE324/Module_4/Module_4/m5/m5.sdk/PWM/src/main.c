/*
 * main.c
 *
 *  Created on: Oct 31, 2019
 *      Author: root
 */


#include "PWM_CONTROLLER.h"

int main(void)
{
	while(1)
	{
		//enablePWM(0xF);
		//SET PWM Window
		*(PWM_ADDR) = 0x0111111F;
		*(PWM_ADDR + 1) = 100;
		*(PWM_ADDR + 2) = 100;
		*(PWM_ADDR + 3) = 100;
		*(PWM_ADDR + 4) = 100;

		//SET DC VALUE
		*(PWM_ADDR + 5) = 100;
		*(PWM_ADDR + 6) = 10;
		*(PWM_ADDR + 7) = 10;
		*(PWM_ADDR + 8) = 100;

	}
}