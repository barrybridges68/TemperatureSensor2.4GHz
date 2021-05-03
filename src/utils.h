#ifndef __UTILS_H__
#define __UTILS_H__

#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"


uint8_t make_packet_checksum(uint8_t *packet, uint8_t length);
uint16_t crc16(char *addr, uint8_t num, uint32_t crc);
uint16_t get_device_id(void);
void print_byte( uint8_t value );
#endif