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

#include "spi.h"
#include "N76E003.h"
#include "Common.h"
#include "SFR_Macro.h"
#include "Function_define.h"

void spi_init(void)
{
#if SPI_CLOCK == 0
        clr_SPR1;
        clr_SPR0;
#elif SPI_CLOCK == 1
        clr_SPR1;
        set_SPR0;
#elif SPI_CLOCK == 2
        set_SPR1;
        clr_SPR0;
#elif SPI_CLOCK == 3
        set_SPR1;
        set_SPR0;
#endif

        /* /SS General purpose I/O ( No Mode Fault ) */
        set_DISMODF;
        clr_SSOE;

        /* SPI in Master mode */
        set_MSTR;

        /* MSB first */
        clr_LSBFE;

        clr_CPOL;
        clr_CPHA;

        /* Enable SPI function */
        set_SPIEN;
}

void spi_setDataMode(uint8_t spiDataMode)
{
        spiDataMode = 0;

        return;
}

// Write data using SPI
void spi_write_data(uint8_t *dataout, uint8_t len)
{
        uint8_t i;
        for (i = 0; i < len; i++)
        {
                spi_transfer(dataout[i]);
        }
}

uint8_t spi_transfer(uint8_t spiData)
{
        uint8_t result;
        SPDR = spiData;
        while ((SPSR & 0x80) == 0x00)
                ;
        result = SPDR;
        clr_SPIF;
        return result;
}

// Read data using SPI
void spi_read_data(uint8_t *datain, uint8_t len)
{
        uint8_t i;
        for (i = 0; i < len; i++)
        {
                datain[i] = spi_transfer(0x00);
        }
}
