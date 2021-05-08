#ifndef __PACKETS_H__
#define __PACKETS_H__
#include "Common.h"

#define PACKET_START (uint8_t)0x80;
#define PACKET_VERSION (uint8_t)0x04

typedef enum {
	ePacketTypeIdent = 0xAA,
	ePacketTypeTemperature = 0x20,
	ePacketTypeTemperatureHumidity = 0x21,
	ePacketTypeTrigger = 0x22,
} ePacketType;

typedef struct
{
	/* Identity information */
	uint8_t mStart;
	uint8_t mVersion;
	uint8_t mPacketType;
	uint16_t mNodeId;
	uint8_t mBatteryVolts;
	uint32_t mCounter;
} sPacketHeader;

typedef struct
{
	uint16_t mTemperature;
	uint16_t mHumidity;
} sSensorData;


typedef struct
{
	uint8_t mDay;
	uint8_t mMonth;
	uint8_t mYear;
	uint8_t mHour;
	uint8_t mMmin;
	uint8_t mSec;
	uint8_t mVersioHi;
	uint8_t mVersionLo;
} sBuildData;

typedef struct
{
	uint8_t triggerstate;
	
} sTriggerData;

typedef struct
{
	/* Header information */
	sPacketHeader mHeader;
	/* Data */
	sSensorData mSensorData;
	/* Checksum */
	uint8_t mChecksum;
} sDataPacket;

typedef struct
{
	/* Header information */
	sPacketHeader mHeader;
	/* Data */
	sSensorData BuildData;
	/* Checksum */
	uint8_t mChecksum;
} sIdentPacket;


typedef struct
{
	/* Header information */
	sPacketHeader mHeader;
	/* Data */
	sTriggerData mTriggerData;
	/* Checksum */
	uint8_t mChecksum;
} sTriggerPacket;

#endif