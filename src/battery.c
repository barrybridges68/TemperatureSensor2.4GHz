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
#include "battery.h"

__xdata float Bandgap_Voltage; //please always use "double" mode for this
__xdata uint32_t Bandgap_Value;
__xdata uint8_t BandgapHigh, BandgapLow;

void READ_BANDGAP()
{
	set_IAPEN;
	IAPAL = 0x0C;
	IAPAH = 0x00;
	IAPCN = READ_UID;
	set_IAPGO;
	BandgapHigh = IAPFD;
	IAPAL = 0x0d;
	IAPAH = 0x00;
	IAPCN = READ_UID;
	set_IAPGO;
	BandgapLow = IAPFD;
	BandgapLow = BandgapLow & 0x0F;
	clr_IAPEN;
	Bandgap_Value = (BandgapHigh << 4) + BandgapLow;
	Bandgap_Voltage = 3072.0 / (4095.0 / Bandgap_Value);
}

void ADC_Bypass(void) // The first three times convert should be bypass
{
	unsigned char ozc;
	for (ozc = 0; ozc < 0x03; ozc++)
	{
		clr_ADCF;
		set_ADCS;
		while (ADCF == 0)
			;
	}
}

uint16_t read_battery_voltage(void)
{
	float bgvalue;
	READ_BANDGAP();
	Enable_ADC_BandGap;
	ADC_Bypass();
	clr_ADCF;
	set_ADCS;
	while (ADCF == 0);
	bgvalue = (ADCRH << 4) + ADCRL;
	return (0Xfff / bgvalue) * Bandgap_Voltage;
}