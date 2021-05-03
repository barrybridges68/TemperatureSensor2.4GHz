#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "nRF24L01.h"
#include "utils.h"
#define poly 0x1021

uint8_t hexTab[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', };

void print_byte( uint8_t value )
{

	Send_Data_To_UART0( hexTab[(value >> 4)& 0xF] );
	Send_Data_To_UART0( hexTab[value & 0xF] );
	Send_Data_To_UART0(' ');
}

uint8_t UID_byte(uint8_t Addr)
{
	uint8_t temp;
	set_IAPEN;
	IAPAL = Addr;
	IAPAH = 0x00;
	IAPCN = READ_UID;
	set_IAPGO;
	temp = IAPFD;
	clr_IAPEN;
	return temp;
}

uint8_t make_packet_checksum(uint8_t *packet, uint8_t length)
{
	uint8_t chksum = 0;
	uint8_t *ptr = (uint8_t *)packet;
	uint8_t count;

	for (count = 0; count < length - 1; count++)
	{
		chksum += *ptr++;
	}
	return ~chksum;
}
uint16_t get_device_id(void)
{
	uint8_t uuid, i;
	uint16_t crc = 0x00;

	for (i = 0; i < 0x0b; i++)
	{
		uuid = UID_byte(i);
		print_byte(uuid);
		crc = crc16(&uuid, 1, crc);
	}
	return crc;
}

uint16_t crc16(char *addr, uint8_t num, uint32_t crc)
{
	uint16_t i;

	for (; num > 0; num--) /* Step through bytes in memory */
	{
		crc = crc ^ (*addr++ << 8); /* Fetch byte from memory, XOR into CRC top byte*/
		for (i = 0; i < 8; i++)		/* Prepare to rotate 8 bits */
		{
			crc = crc << 1;					 /* rotate */
			if (crc & 0x10000)				 /* bit 15 was set (now bit 16)... */
				crc = (crc ^ poly) & 0xFFFF; /* XOR with XMODEM polynomic */
											 /* and ensure CRC remains 16-bit value */
		}									 /* Loop for 8 bits */
	}										 /* Loop until num=0 */
	return (crc);							 /* Return updated CRC */
}