/*
 * myAXIfunctions.c
 *
 *  Created on: Oct 21, 2018
 *      Author: Sergaljerk
 */

#include "xil_types.h"
#include "myAXIfunctions.h"
uint32_t * LED =  (uint32_t*)0x4BB00000;
uint32_t getLEDStatus()
{
	uint32_t v_Val = 0;
	v_Val = LED[1] & 0xF; //get get status
	return v_Val;
}
void controlLEDS(int a_LEDCount)
{

}
void shiftLEDS()
{
	int i = 0;

	  //Enable LEDS
	    LED[0] = 0x0F;
	    int v_Count = 0x0;
	    // Infinite loop
	    while (1) {

	    	LED[1] = v_Count;
	        // Delay
	      for(i = 0; i < 100000000; i = i +1);
	      v_Count += 0x01;
	      if(v_Count > 0xF)
	      {
	    	  v_Count = 0x0;
	      }
	    }
}
void demoLEDS()
{
	int i = 0;
	 //Enable LEDS
	 LED[0] = 0x00;
	 LED[0] = 0x0F;
	 int v_Flip = 0xF; //Doesn't like it when i write hex directly;
	 while (1)
	 {
	    LED[1] = v_Flip;
	    // Delay
	    for(i = 0; i < 10000000; i = i +1);
	    v_Flip = ~v_Flip;
	  }
}
