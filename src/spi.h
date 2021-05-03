/*----------------------------------------------------------------------*
 * tinySPI.h - Arduino hardware SPI master library for ATtiny44/84,     *
 * and ATtiny45/85.                                                     *
 *                                                                      *
 * Jack Christensen 24Oct2013                                           *
 *                                                                      *
 * CC BY-SA:                                                            *
 * This work is licensed under the Creative Commons Attribution-        *
 * ShareAlike 3.0 Unported License. To view a copy of this license,     *
 * visit http://creativecommons.org/licenses/by-sa/3.0/ or send a       *
 * letter to Creative Commons, 171 Second Street, Suite 300,            *
 * San Francisco, California, 94105, USA.                               *
 *----------------------------------------------------------------------*/

#ifndef __SPI_H__
#define __SPI_H__
#include "N76E003.h"
#include "Common.h"
#define SPI_CLOCK       0
#define SS_PIN          P15




void spi_init(void);
void spi_setDataMode(uint8_t spiDataMode);
uint8_t spi_transfer(uint8_t spiData);
void spi_read_data(uint8_t * datain, uint8_t len);
void spi_write_data(uint8_t * dataout, uint8_t len);



#endif