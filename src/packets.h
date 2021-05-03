#ifndef __PACKETS_H__
#define __PACKETS_H__

#define PACKET_START (uint8_t)0x80;
#define PACKET_VERSION (uint8_t)0x03

typedef enum {
	ePacketTypeIdent = 0xAA,
	ePacketTypeRegistration = 0xAE,
	ePacketTypeTemperature = 0x20,
	ePacketTypeTemperatureHumidity = 0x21,
	ePacketTypeTemperatureLight = 0x22,
	ePacketTypeTemperatureHumidityLight = 0x23,
	ePacketTypeTrigger = 0x24,
	//ePacketTypeTriggerInactive = 0x25,
	ePacketTypePir = 0x26,
	ePacketTypeTemperatureHumidityHdc1080 = 0x26,
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
	uint16_t temperature;
	uint16_t humidity;
} sSensorData;

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
	sTriggerData mTriggerData;
	/* Checksum */
	uint8_t mChecksum;
} sTriggerPacket;

#endif