#ifndef __HDC_1080_H__
#define __HDC_1080_H__



#define ADDR 0x80

void Hdc1080Init();
void Hdc1080Read( uint16_t *temperture, uint16_t *humidity );
#endif