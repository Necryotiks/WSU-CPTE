/*
 * functions.c
 *
 *  Created on: Mar 4, 2019
 *      Author: Sergaljerk
 */

#include "functions.h"

void demoLEDS()
{
	int i = 0;
	*LED_BASEADDR = 0x00; //LEDS ARE OFF
	while(1)
	{
		*LED_BASEADDR = ~(*LED_BASEADDR); //FLIP VALUE

		for(i = 0; i <10000000; i++)
		{
			;
		}
	}
}

void shiftLEDS()
{
	int i = 0;
	int count = 1;
	*LED_BASEADDR = count;
	while(1)
	{

		for(i = 0; i <10000000; i++)
		{
			;
		}

		count = count << 1;
		if(count == 16)
		{
			count = count >> 2;
			*LED_BASEADDR = count;
			while(1)
			{


				for(i = 0; i <10000000; i++)
				{
					;
				}
				count = count >> 1;
				if(count == 1)
				{
					*LED_BASEADDR = count;
					break;
				}
				else
				{
					*LED_BASEADDR = count;
				}
			}

		}
		else
		{
			*LED_BASEADDR = count;
		}
	}
}
