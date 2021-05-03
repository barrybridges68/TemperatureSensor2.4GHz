#ifndef __RF24__
#define __RF24__
#define HIGH 1
#define LOW 0

// Pin definitions for chip select and chip enabled of the MiRF module
#define CE  P12
#define CSN P11

#define TRUE 1
#define FALSE 0


#define _BV(bit) (1 << (bit)) 

/**
 * Power Amplifier level.
 *
 * For use with setPALevel()
 */
typedef enum { RF24_PA_MIN = 0,RF24_PA_LOW, RF24_PA_HIGH, RF24_PA_MAX, RF24_PA_ERROR } rf24_pa_dbm_e ;

/**
 * Data rate.  How fast data moves through the air.
 *
 * For use with setDataRate()
 */
typedef enum { RF24_1MBPS = 0, RF24_2MBPS, RF24_250KBPS } rf24_datarate_e;

/**
 * CRC Length.  How big (if any) of a CRC is included.
 *
 * For use with setCRCLength()
 */
typedef enum { RF24_CRC_DISABLED = 0, RF24_CRC_8, RF24_CRC_16 } rf24_crclength_e;



uint8_t min( uint8_t a, uint8_t b);
void csn(uint8_t mode);
void ce(uint8_t level);
uint8_t read_registers(uint8_t reg, uint8_t* buf, uint8_t len);
uint8_t read_register(uint8_t reg);
uint8_t write_registers(uint8_t reg, const uint8_t* buf, uint8_t len);
uint8_t write_register(uint8_t reg, uint8_t value);
uint8_t write_payload(const void* buf, uint8_t len);
uint8_t read_payload(void* buf, uint8_t len);
uint8_t flush_rx(void);
uint8_t flush_tx(void);
uint8_t get_status(void);
//void RF24Init( void );
void setChannel(uint8_t channel);
void setPayloadSize(uint8_t size);
uint8_t getPayloadSize(void);
void begin(void);
void startListening(void);
void stopListening(void);
void powerDown(void);
void powerUp(void);
uint8_t write( const void* buf, uint8_t len );
void startWrite( const void* buf, uint8_t len );
uint8_t getDynamicPayloadSize(void);
uint8_t available(void);
uint8_t availablePipe(uint8_t* pipe_num);
uint8_t read( void* buf, uint8_t len );



void whatHappened(uint8_t *tx_ok,uint8_t * tx_fail, uint8_t * rx_ready);
void openWritingPipe(uint8_t * value);
void openReadingPipe(uint8_t child, uint8_t * address);
void toggle_features(void);
void enableDynamicPayloads(void);
void enableAckPayload(void);
void writeAckPayload(uint8_t pipe, const void* buf, uint8_t len);
uint8_t isAckPayloadAvailable(void);
uint8_t isPVariant(void);
void setAutoAck(uint8_t enable);
void setAutoAckPipe( uint8_t pipe, uint8_t enable );
uint8_t testCarrier(void);
uint8_t testRPD(void);
void setPALevel(rf24_pa_dbm_e level);
rf24_pa_dbm_e getPALevel(void);
uint8_t setDataRate(rf24_datarate_e speed);
rf24_datarate_e getDataRate( void );
void setCRCLength(rf24_crclength_e length);
rf24_crclength_e getCRCLength(void);
void disableCRC( void );
void setRetries(uint8_t delay, uint8_t count);




#endif