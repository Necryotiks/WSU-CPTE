

/*
/*
 * myfunctions.c
 *
 *  Created on: Nov 10, 2018
 *      Author: Sergaljerk
 */



#include "myfunctions.h"
uint32_t * interruptProcessorTargets= (uint32_t*)0xF8F01800;
uint32_t * interruptPriorityMask =  (uint32_t*)0xF8F00104;
uint32_t * cpuInterfaceControl = (uint32_t*)0xF8F00100;
uint32_t * distributorControlReg = (uint32_t*)0xF8F01000;
uint32_t * interruptSetEnable =  (uint32_t*)0xF8F01100;
uint32_t * interruptClearEnable =  (uint32_t*) 0xF8F01180;
uint32_t * interruptPriorityReg = (uint32_t*) 0xF8F01400;
uint32_t * interruptConfigReg = (uint32_t*) 0xF8F01C00;

uint32_t * GPIOInterruptDisableBank0 = (uint32_t *) 0xE000A214 ;
uint32_t * GPIOInterruptEnableBank1 = (uint32_t *) 0xE000A250;
uint32_t * GPIOInterruptDisableBank1 = (uint32_t *) 0xE000A254;
uint32_t * GPIOInterruptStatusBank1 = (uint32_t *) 0xE000A258;
uint32_t * GPIOInterruptTypeBank1 = (uint32_t *) 0xE000A25C;
uint32_t * GPIOInterruptPolarityBank1 = (uint32_t *) 0xE000A260;
uint32_t * GPIOInterruptAnyBank1 = (uint32_t *) 0xE000A264;

uint32_t * interruptAcknowledgeReg = (uint32_t *)0xF8F0010C;
uint32_t * endofInterruptReg = (uint32_t *) 0xF8F00110;
uint32_t * GPIOMaskData0 = (uint32_t *) 0xE000A004;

uint32_t * BTN_Address = (uint32_t *)0x4BB02004;

uint32_t * PIN_16 = (uint32_t *)0xF8000740;
uint32_t * PIN_17 = (uint32_t *)0xF8000744;
uint32_t * PIN_18 = (uint32_t *)0xF8000748;
uint32_t * PIN_50 = (uint32_t *)0xF80007C8; //BTN_4
uint32_t * PIN_51 = (uint32_t *)0xF80007CC; //BTN_5
uint32_t * GPIODirectionModeB0 = (uint32_t *)0xE000A204;
uint32_t * GPIOOutputEnableB0 = (uint32_t *)0xE000A208;
uint32_t * GPIODirectionModeB1 = (uint32_t *)0xE000A244;

uint32_t * SVD = (uint32_t *)0x4BB03000;
#define GT_COUNTER0_ADDRESS 0xF8F00200
#define GT_COUNTER1_ADDRESS 0xF8F00204
#define GT_CONTROL_ADDRESS 0xF8F00208
#define GT_INTSTAT_ADDRESS  0xF8F0020C
#define GT_COMP0_ADDRESS    0xF8F00210
#define GT_COMP1_ADDRESS 0xF8F00214
#define GT_AUTOINC_ADDRESS 0xF8F00218

uint8_t D1 =0;
uint8_t D2 =0;
uint8_t D3 =0;
uint8_t D4 =0;
int START = 0;

uint8_t buffer[32];

#define UART1_CON_Addr 0xE0001000
#define UART1_Mode_Addr 0xE0001004
#define UART1_INT_EN_Addr 0xE0001008
#define UART1_INT_DIS_Addr 0xE000100C
#define UART1_INT_MASK_Addr 0xE0001010
//Connect to Serial Port
#define UART1_ISR_Addr 0xE0001014
#define UART1_Buad_Gen_Addr 0xE0001018
#define UART1_RT_Addr 0xE000101C
#define UART1_RFIFO_LEV_Addr0xE0001020
#define UART1_Modem_CNT_Addr 0xE0001024
#define UART1_Modem_Stat_Addr 0xE0001028
#define UART1_C_Stat_Addr 0xE000102C
#define UART1_FIFO_Addr 0xE0001030
#define UART1_Baud_DIV_Addr 0xE0001034
#define UART1_FCD_Addr 0xE0001038
#define UART1_TFIFO_LEV_Addr 0xE0001044

int count=0;
void activateLEDS()
{
	uint32_t* ledBaseAddress = (uint32_t*)0x4BB00000;
	ledBaseAddress[0] = 0x00000000; //enable the LEDs
	ledBaseAddress[1] = 0x00000000; //Turn on the LEDs
	while((BTN_Address[0] & (uint32_t)1) != 1)
	{
		//wait until button is pushed.
	}
	ledBaseAddress[0] = 0x0000000F; //enable the LEDs
	ledBaseAddress[1] = 0x0000000F; //Turn on the LEDs

}

void disableInterrupts()
{
	uint32_t bitsToEnable = 0xDF; // 1101_1111
	uint32_t readCPSR = 0;
	uint32_t clearByte = 0xFF;

	__asm__ __volatile__("MRS %0,CPSR\n" : "=r" (readCPSR));
	__asm__ __volatile__("MSR CPSR, %0\n" :: "r"((readCPSR & (~clearByte))|bitsToEnable));
}
void enableInterrupts()
{
	uint32_t bitsToEnable = 0x5F; // 1101_1111
	uint32_t readCPSR = 0;
	uint32_t clearByte = 0xFF;

	__asm__ __volatile__("MRS %0,CPSR\n" : "=r" (readCPSR));
	__asm__ __volatile__("MSR CPSR, %0\n" :: "r"((readCPSR & (~clearByte))|bitsToEnable));
}
void GICConfigure()
{

	interruptProcessorTargets[13] = 0x00000000; //Resets processor target
	interruptClearEnable[1] = 0x00100000; //enables interrupt forwarding to CPU interface.
	distributorControlReg[0] = 0x0; //Enable secure interrupt control
	interruptPriorityReg[13] = 0x000000A0; //Set priority level of interrupt 52
	interruptProcessorTargets[13] = 0x00000001; //CPU 0 will handle the interrupt.
	interruptConfigReg[3] =  0x00000100;
	interruptSetEnable[1] =  0x00100000;
	interruptPriorityMask[0] = 0xFF;
	cpuInterfaceControl[0] = 0x3;
	distributorControlReg[0] = 0x1;

}

void initializeGPIOInterrupts()
{


	GPIOInterruptDisableBank0[0] = 0xFFFFFFFF; //reset
	GPIOInterruptDisableBank1[0] = 0xFFFFFFFF;
	GPIOInterruptStatusBank1[0] = 0xFFFFFFFF;
	GPIOInterruptTypeBank1[0] =  0x0C0000; //set interrupt type
	GPIOInterruptPolarityBank1[0] =  0x0C0000; //set positive event
	GPIOInterruptAnyBank1[0] =  0x000000; //no override
	GPIOInterruptEnableBank1[0] = 0x0C0000;

	configureIO();
}

void IRQHandler(void * data)
{
	//uint32_t * interruptAcknowledgeReg = (uint32_t *)0xF8F0010C;
	//uint32_t * endofInterruptReg = (uint32_t *) 0xF8F00110;
	//uint32_t * GPIOMaskData0 = (uint32_t *) 0xE000A004;

	//uint32_t GPIO_Interrupt = GPIOInterruptStatusBank1[0]; //check if interrupt happened
	uint32_t interruptID = interruptAcknowledgeReg[0]; //Get interrupt ID
	//uint32_t buttonEvent = 0xC0000 & GPIO_Interrupt; //check if button event occurs.

	if(interruptID == 52)
	{
		uint32_t GPIO_Interrupt = GPIOInterruptStatusBank1[0]; //check if interrupt happened
		uint32_t buttonEvent = 0xC0000 & GPIO_Interrupt; //check if button event occurs.
		GPIO_IRQ(buttonEvent);

	}
	GPIOInterruptStatusBank1[0] = 0xFFFFFF; //reset interrupt status.
	endofInterruptReg[0] = interruptID; //clear interrupt.

}
void configureIO()
{
	*((uint32_t*) 0xF8000000+0x8/4) = 0x0000DF0D;//???

PIN_16[0]=0x00001600;//SET IO Type and enable pullup pin
PIN_17[0]=0x00001600;
PIN_18[0]=0x00001600;
PIN_50[0]=0x00000600;//SET IO Type to LVCMOS33
PIN_51[0]=0x00000600;
GPIODirectionModeB0[0] = 0x00070000;
GPIOOutputEnableB0[0] = 0x00070000;
GPIODirectionModeB1[0] = 0x00000000;


}

void initializeSVD()
{
	SVD[0] = 0x0;
	SVD[5] = 0x02; // set decimal point
	SVD[0] = 0x1;
	SVD[1] = 0x0;
	SVD[2] = 0x0;
	SVD[3] = 0x0;
	SVD[4] = 0x0;
}

void initGlobalTimer()
{
	*((uint32_t*) GT_CONTROL_ADDRESS) = 0x0000;
	// Turn off the timer and disable the interrupt.
	*((uint32_t*) GT_COUNTER0_ADDRESS) = 0x00000000;
	// Set the Counter to zero
	*((uint32_t*) GT_COUNTER1_ADDRESS) = 0x00000000;
	*((uint32_t*) GT_INTSTAT_ADDRESS) = 0x00000001;
	// set the interrupt to be cleared.
	*((uint32_t*) GT_COMP0_ADDRESS) = 3333333;
	// set the comparator to 1 second under prescale of 1.
	*((uint32_t*) GT_COMP1_ADDRESS) = 0x00000000;
	*((uint32_t*) GT_CONTROL_ADDRESS) = 0x0100;
	// the prescale of the global timer is 1
}

void initGTInterrupts()
{
	*((uint32_t*) GT_INTSTAT_ADDRESS) = 0x1;
}

void configureGT()
{

	interruptProcessorTargets[7] = 0x00000000; //Resets processor target
	interruptClearEnable[0] = 0x08000000; //enables interrupt forwarding to CPU interface.
	distributorControlReg[0] = 0x0; //Enable secure interrupt control
	interruptPriorityReg[7] = 0x90000000; //Set priority level of interrupt 27
	interruptProcessorTargets[7] = 0x01000000; //CPU 0 will handle the interrupt.
	interruptConfigReg[1] =  0x7DC00000;
	interruptSetEnable[0] =  0x08000000;
	interruptPriorityMask[0] = 0xFF;
	cpuInterfaceControl[0] = 0x3;
	distributorControlReg[0] = 0x1;
}

void SendChar(uint8_t C)
{
	*((uint32_t*) UART1_FIFO_Addr) = C;
}
void StoreChar(uint8_t C)
{
		buffer[count] = C;
		count = count + 1;

}

void GPIO_IRQ(uint32_t button)
{
	uint32_t BTN5=0x80000;
	uint32_t BTN4=0x40000;
	if(button == BTN5)
	{
		if(buffer != NULL)
		{
			uint8_t C = '\n';
			SendChar(C);
			C = '>';
			SendChar(C);
			C = '>';
			SendChar(C);
			//*((uint32_t*) UART1_FIFO_Addr) = buffer[0];
			for(int i = 0; i < count-1; i++)//count -1 to ignore carridge return.
			{
				SendChar(buffer[i]); //write buffer to FIFO
			}
			count = 0;
		}
	}
	else if(button == BTN4)
	{

		uint8_t C = '\n';
		SendChar(C);
		C = '>';
		SendChar(C);
		C = '>';
		SendChar(C);
		C = 'T';
		SendChar(C);
		C = 'E';
		SendChar(C);
		C = 'S';
		SendChar(C);
		C = 'T';
		SendChar(C);

	}
	GPIOInterruptStatusBank1[0] = 0xFFFFFF;
	for(int i = 0; i < 1000000; i = i + 1)
		{
			;
		}
}

void initUART1()
{

	*((uint32_t*) UART1_CON_Addr)  = 0x0000000;
	// disable transmitter and receiver
	*((uint32_t*) UART1_Buad_Gen_Addr) = 0x7C;
	// Baud Gen
	*((uint32_t*) UART1_Baud_DIV_Addr) = 0x6;  // Baud Divider
	*((uint32_t*) UART1_CON_Addr)  = 0x0000117; // enable transmitter and receiver
	// Normal mode, single stop bit, no parity 8 bits data
	*((uint32_t*) UART1_Mode_Addr) = 0x0000030;
	*((uint32_t*) UART1_INT_DIS_Addr) = 0x000FFFF; // Disable interrupt
	*((uint32_t*) UART1_RT_Addr) = 0xFF;
	//RecieverTime out
}
void sendREADY()
{
	uint8_t C = '>';
	SendChar(C);
	C = '>';
	SendChar(C);
	C = 'R';
	SendChar(C);
	C = 'E';
	SendChar(C);
	C = 'A';
	SendChar(C);
	C = 'D';
	SendChar(C);
	C = 'Y';
	SendChar(C);
}



