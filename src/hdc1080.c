#include "N76E003.h"
#include "Common.h"
#include "Delay.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "hdc1080.h"
#include "i2c.h"

uint16_t swap(uint16_t num)
{
    return ((num >> 8) | (num << 8));
}

void HandleError(void)
{
    while (SI != 0)
    {
        if (I2STAT == 0x00)
        {
            STO = 1; // Check bus status if bus error,first send stop
        }
        SI = 0;
        if (SI != 0) // If SI still keep 1
        {
            I2CEN = 0; // please first disable I2C.
            I2CEN = 1; // Then enable I2C for clear SI.
            SI = 0;
            I2CEN = 0; // At last disable I2C for next a new transfer
        }
    }
}

void Hdc1080WriteRegister(uint8_t address, uint16_t value)
{
    uint8_t temp;
    /* Step1 */
    set_STA; /* Send Start bit to I2C Device */
    clr_SI;
    while (!SI)
        ;
    if (I2STAT != 0x08) /* 0x08:  A START condition has been transmitted*/
    {
        HandleError();
        return;
    }

    /* Step2 */
    clr_STA;                    /* Clear STA and Keep SI value in I2CON */
    I2DAT = (ADDR | I2C_WRITE); /* Send (SLA+R) to Device */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x18) /* 0x18: SLA+W has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }

    /* Step3 */
    I2DAT = address; /* Send EEPROM's High Byte Address */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }

    /* Step3 */
    I2DAT = value / 256; /* Send EEPROM's High Byte Address */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }
    /* Step3 */
    I2DAT = address % 256; /* Send EEPROM's High Byte Address */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }

    /* Step9 */
    clr_SI;
    set_STO;
    while (STO)
        ; /* Check STOP signal */
}

void Hdc1080Init(void)
{
    Init_I2C();
    Stimer_10u(100);
    Hdc1080WriteRegister(0x02, 0x1000);
}

void Hdc1080Read(uint16_t *temperature, uint16_t *humidity)
{
    uint8_t temp, u8Count;
    uint8_t buff[4];

    /* Step1 */
    set_STA; /* Send Start bit to I2C Device */
    clr_SI;
    while (!SI)
        ;
    if (I2STAT != 0x08) /* 0x08:  A START condition has been transmitted*/
    {
        HandleError();
        return;
    }

    /* Step2 */
    clr_STA;                    /* Clear STA and Keep SI value in I2CON */
    I2DAT = (ADDR | I2C_WRITE); /* Send (SLA+R) to Device */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x18) /* 0x18: SLA+W has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }

    /* Step3 */
    I2DAT = 0x00; /* Send EEPROM's High Byte Address */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }
    /* Step9 */
    clr_SI;
    set_STO;
    while (STO)
        ; /* Check STOP signal */

    Stimer_10u(8000);

    /* Step1 */
    set_STA; /* Send Start bit to I2C Device */
    clr_SI;
    while (!SI)
        ;
    if (I2STAT != 0x08) /* 0x08:  A START condition has been transmitted*/
    {
        HandleError();
        return;
    }

    /* Step2 */
    clr_STA;                   /* Clear STA and Keep SI value in I2CON */
    I2DAT = (ADDR | I2C_READ); /* Send (SLA+R) to Device */
    clr_SI;
    while (!SI)
        ;
    temp = I2STAT;
    if (temp != 0x40) /* 0x18: SLA+W has been transmitted; ACK has been received */
    {
        HandleError();
        return;
    }
    /* Step7 */ /* Verify I2C EEPROM data */
    for (u8Count = 0; u8Count < 4; u8Count++)
    {
        set_AA; /* Set Assert Acknowledge Control Bit */
        clr_SI;
        while (!SI)
            ;
        if (I2STAT != 0x50) /* 0x50:Data byte has been received; NOT ACK has been returned */
        {
            HandleError();
            return;
        }

        buff[u8Count] = I2DAT;
    }
    /* Step9 */
    clr_SI;
    set_STO;
    while (STO)
        ; /* Check STOP signal */

    *temperature = swap(*(uint16_t *)&buff);

    *humidity = swap(*(uint16_t *)&buff[2]);
}