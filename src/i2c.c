#include "N76E003.h"
#include "SFR_Macro.h"
#include "Function_define.h"
#include "Common.h"
#include "Delay.h"
#include "i2c.h"

void Init_I2C(void)
{
    I2C_GPIO_Init(regular_I2C_pins);
    /* Set I2C clock rate */
    I2CLK = I2C_CLOCK;
    /* Enable I2C */
    set_I2CEN;
}

//========================================================================================================
