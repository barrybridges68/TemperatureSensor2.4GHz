#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "spi.h"
#include "nRF24L01.h"
#include "RF24.h"
#include "hdc1080.h"
#include "battery.h"
#include <string.h>
#include "utils.h"
#include "packets.h"
#include "build.h"

// Build Defines
#define RADIO_ENABLE 1
//#define WAKEUP_TIMER 1
//#define SENSOR_ENABLE 1
#define PIN_IRQ 1


// Wake period defines
#define SLEEP_PERIOD_RELOAD 0x70 // Appx 30 sec (was 0x70)
#define WAKE_COUNT 9			 // 5 mins appx
#define BATTERY_SAMPLE_COUNT 12	 // 1 Hours appx
/********************************************************************************************************/
// System clock defines
#define SYS_CLK_EN 0
#define SYS_SEL 2
#define SYS_DIV_EN 0 //0: Fsys=Fosc, 1: Fsys = Fosc/(2*CKDIV)
#define SYS_DIV 1
#define I2C_CLOCK 2

// Module data pipes
__xdata uint8_t pipeTx[5] = {0xc7, 0xc7, 0xc7, 0xc7, 0xc7};
__xdata uint8_t pipeRx[5] = {0xe7, 0xe7, 0xe7, 0xe7, 0xe7};

uint8_t wake_count, battery_count;
#if SENSOR_ENABLE
__xdata sDataPacket SensorPacket;
#endif

__xdata sIdentPacket IdentPacket;

#if PIN_IRQ
__xdata sTriggerPacket TriggerPacket;
#endif


volatile struct {
	unsigned triggerflag :1;
	unsigned triggerstate :1;
} flags;


#if PIN_IRQ
//==============================================
//
//	Interrupt handler INT0
//
//==============================================
void pin_int07(void) __interrupt 0x3B
{
	// Check which pin interrupted.
	if (PIF & 0x08 )
	{
		flags.triggerflag = 1;
		flags.triggerstate = 1;
	}
	 //clear interrupt flag
	PIF = 0x00;
		
}
#endif

#if WAKEUP_TIMER
//==============================================
//
//	Interrupt handler for deeps sleep wakeup
//
//==============================================
void WakeUp_Timer_ISR(void) __interrupt 17
{
	clr_WKTF; //clear interrupt flag
}

//==============================================
//
//	Powerdown and sleep.
//
//==============================================
void powerdown_and_sleep(void)
{
	//clr_TR3;
#if RADIO_ENABLE
	powerDown();
#endif
	clr_SPIEN;

	while (wake_count--)
	{
		ADCCON1 = 0x00; // Turn off the ADC.
		clr_BODEN;		// Disable undervoltage detection.
		set_PD;			// Enter power-down mode.
	}
	wake_count = WAKE_COUNT;

	// Sample battery periodically
	if (!battery_count--)
	{
//		SensorPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;
		battery_count = BATTERY_SAMPLE_COUNT;
	}		

	set_SPIEN;

#if RADIO_ENABLE
	powerUp();
#endif
}
#endif



//==============================================
//
//	Send a powerup packet ot indicate device online.
//
//==============================================

void startup_packet_send(void)
{

	// Initial SensorPacket content
	IdentPacket.mHeader.mStart = PACKET_START;
	IdentPacket.mHeader.mVersion = PACKET_VERSION;
	IdentPacket.mHeader.mPacketType = ePacketTypeIdent;
	IdentPacket.mHeader.mNodeId = get_device_id();
	IdentPacket.mHeader.mCounter =0x00;
	IdentPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
	IdentPacket.BuildData.mDay = BUILD_DAY;
	IdentPacket.BuildData.mMonth = BUILD_MONTH;
	IdentPacket.BuildData.mYear = BUILD_YEAR;
	IdentPacket.BuildData.mHour = BUILD_HOUR;
	IdentPacket.BuildData.mMmin = BUILD_MIN;
	IdentPacket.BuildData.mSec = BUILD_SEC;
	IdentPacket.BuildData.mVersioHi = BUILD_VER_HI;
	IdentPacket.BuildData.mVersionLo = BUILD_VER_LO;
	IdentPacket.mChecksum = make_packet_checksum((uint8_t *)&IdentPacket, sizeof(IdentPacket));
	write((uint8_t *)&IdentPacket, sizeof(IdentPacket));
}


//==============================================
//
//	Fill the reqiured contents and send.
//
//==============================================
#if SENSOR_ENABLE
void sensor_packet_send(void)
{
	SensorPacket.mHeader.mCounter += 1;
	Hdc1080Read(&SensorPacket.mSensorData.mTemperature, &SensorPacket.mSensorData.mHumidity);
	SensorPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
	SensorPacket.mChecksum = make_packet_checksum((uint8_t *)&SensorPacket, sizeof(SensorPacket));
	write((uint8_t *)&SensorPacket, sizeof(SensorPacket));
}
#endif
#if PIN_IRQ
void trigger_packet_send(void)
{
	TriggerPacket.mHeader.mCounter += 1;
	TriggerPacket.mTriggerData.triggerstate = P13;// (uint8_t) flags.triggerstate;
	TriggerPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
	TriggerPacket.mChecksum = make_packet_checksum((uint8_t *)&TriggerPacket, sizeof(TriggerPacket));
	write((uint8_t *)&TriggerPacket, sizeof(TriggerPacket));
}
#endif

//==============================================
//
//	Main function loop
//
//==============================================

void main(void)
{
	clr_BODEN;				 // Kill brown out
	ADCCON1 = 0x00;			 // turn off the ADC
	Set_All_GPIO_Quasi_Mode; // Set port drivers

#if PIN_IRQ
	//-----------------------------------------------------
	//	Intialise the external irq pin P07
	//-----------------------------------------------------
	P13_Input_Mode;		// Input mode.
	//P07 =1;
	PICON |= 0x21;		// Edge triggered.
	set_PINEN3;			// Neg edge detection.
	set_PIPEN3;			// Pos edge detection.
	 	// Enable Port 0 irq.	
	//Enable_BIT3_LowLevel_Trig;
	//Enable_BIT3_HighLevel_Trig;
	set_EPI;

#endif

#if WAKEUP_TIMER
	wake_count = WAKE_COUNT;
	battery_count = BATTERY_SAMPLE_COUNT;
	//-----------------------------------------------------
	//	WKT initial
	//-----------------------------------------------------
	WKCON = 0x07;			   //timer base 10k, Pre-scale = 1/2048
	RWK = SLEEP_PERIOD_RELOAD; // Roughly 30's
	set_EWKT;				   // enable WKT interrupt
	set_WKTR;				   // Wake-up timer run
#endif

	EA = 1;					   // Enable irq's

#if SENSOR_ENABLE
	// Initialise the sensor
	Stimer_10u(1000);
	Hdc1080Init();
#endif
	spi_init();

#if RADIO_ENABLE
	/* Initialise the radio */
	begin();
	enableDynamicPayloads();
	openWritingPipe(pipeTx);
	openReadingPipe(1, pipeRx);
	powerUp();

	Stimer_10u(10);
	startup_packet_send();


#if PIN_IRQ	
	// Initial TriggerPacket content
	TriggerPacket.mHeader.mStart = PACKET_START;
	TriggerPacket.mHeader.mVersion = PACKET_VERSION;
	TriggerPacket.mHeader.mPacketType = ePacketTypeTrigger;
	TriggerPacket.mHeader.mNodeId = get_device_id();
	TriggerPacket.mHeader.mCounter = 0;
	TriggerPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	

#endif
#if SENSOR_ENABLE
	// Initial SensorPacket content
	SensorPacket.mHeader.mStart = PACKET_START;
	SensorPacket.mHeader.mVersion = PACKET_VERSION;
	SensorPacket.mHeader.mPacketType = ePacketTypeTemperatureHumidity;
	SensorPacket.mHeader.mNodeId = get_device_id();
	SensorPacket.mHeader.mCounter = 0;
	SensorPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
#endif

#endif

	/* Main process loop */
	while (1)
	{
#if SENSOR_ENABLE
		sensor_packet_send();
		powerdown_and_sleep();
#endif


#if PIN_IRQ
	#if RADIO_ENABLE
		powerDown();
	#endif
		clr_SPIEN;

		ADCCON1 = 0x00; // Turn off the ADC.
		clr_BODEN;		// Disable undervoltage detection.
		PIF = 0x00;
		set_PD;			// Enter power-down mode.
		set_SPIEN;
	#if RADIO_ENABLE
		powerUp();
	#endif

	#if PIN_IRQ
		trigger_packet_send();
	#endif
#endif
	}
	/* =================== */
}
