/***************************************************************************************************
                                    ExploreEmbedded Copyright Notice    
****************************************************************************************************
 * File:   stdutils.h
 * Version: 15.0
 * Author: ExploreEmbedded
 * Website: http://www.exploreembedded.com/wiki
 * Description: Contains function prototypes for I2c routines.

This code has been developed and tested on ExploreEmbedded boards.  
We strongly believe that the library works on any of development boards for respective controllers. 
Check this link http://www.exploreembedded.com/wiki for awesome tutorials on 8051,PIC,AVR,ARM,Robotics,RTOS,IOT.
ExploreEmbedded invests substantial time and effort developing open source HW and SW tools, to support consider buying the ExploreEmbedded boards.
 
The ExploreEmbedded libraries and examples are licensed under the terms of the new-bsd license(two-clause bsd license).
See also: http://www.opensource.org/licenses/bsd-license.php

EXPLOREEMBEDDED DISCLAIMS ANY KIND OF HARDWARE FAILURE RESULTING OUT OF USAGE OF LIBRARIES, DIRECTLY OR
INDIRECTLY. FILES MAY BE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE. THE REVISION HISTORY CONTAINS THE INFORMATION 
RELATED TO UPDATES.
 

Permission to use, copy, modify, and distribute this software and its documentation for any purpose
and without fee is hereby granted, provided that this copyright notices appear in all copies 
and that both those copyright notices and this permission notice appear in supporting documentation.
***************************************************************************************************/

/***************************************************************************************************
                             Revision History
****************************************************************************************************
15.0: Initial version 
***************************************************************************************************/

#ifndef _I2C_H
#define _I2C_H

#include "N76E003.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "Common.h"
#include "Delay.h"

#define I2C_WRITE 0
#define I2C_READ 1
#define I2C_CLOCK 170
#define regular_I2C_pins 0
#define alternate_I2C_pins 1
#define I2C_GPIO_Init(mode)          \
    do                               \
    {                                \
        if (mode != 0)               \
        {                            \
            alternative_I2C_GPIOs(); \
        }                            \
        else                         \
        {                            \
            regular_I2C_GPIOs();     \
        }                            \
    } while (0)
#define regular_I2C_GPIOs() \
    do                      \
    {                       \
        P13_OpenDrain_Mode; \
        P14_OpenDrain_Mode; \
        clr_I2CPX;          \
    } while (0)
#define alternative_I2C_GPIOs() \
    do                          \
    {                           \
        P02_OpenDrain_Mode;     \
        P16_OpenDrain_Mode;     \
        set_I2CPX;              \
    } while (0)

void Init_I2C(void);

#endif