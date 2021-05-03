
//***********************************************************************************************************
//  Website: http://www.nuvoton.com
//  E-Mail : MicroC-8bit@nuvoton.com
//  Date   : Jan/21/2017
//***********************************************************************************************************
#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "utils.h"

// Build Defines
#define RADIO_ENABLE 1
#define WAKEUP_TIMER 1
#define SENSOR_ENABLE 1
// Wake period defines
#define SLEEP_PERIOD_RELOAD 0x70 // Appx 30 sec (was 0x69)
#define WAKE_COUNT 30			 // 15 mins - 30 * 30 sec
#define BATTERY_SAMPLE_COUNT 4   // 1 Hours - 4 * 30 mins

/********************************************************************************************************/
// System clock defines
#define SYS_CLK_EN 0
#define SYS_SEL 2
#define SYS_DIV_EN 0 //0: Fsys=Fosc, 1: Fsys = Fosc/(2*CKDIV)
#define SYS_DIV 1

//	Main function loop
//
//==============================================

void main(void)
{
	// clr_BODEN;				   // Kill brown out
	// ADCCON1 = 0x00;			   // turn off the ADC
	// Set_All_GPIO_Quasi_Mode;   // Set port drivers
	// InitialUART0_Timer3(9600); // Uart setup
	// Send_Data_To_UART0('*');
	while (1)
	{
		//Send_Data_To_UART0('*');
	}
	/* =================== */
}
