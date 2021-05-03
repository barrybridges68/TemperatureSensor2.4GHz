
#ifndef __N76003_H__
#define __N76003_H__
/*--------------------------------------------------------------------------
N76E003.H

Header file for Nuvoton N76E003
--------------------------------------------------------------------------*/

#define FOSC_160000

#define sfr __sfr
#define at __at
#define sbit __sbit

sfr at 0x80 P0;
sfr at 0x81 SP;
sfr at 0x82 DPL;
sfr at 0x83 DPH;
sfr at 0x84 RCTRIM0;
sfr at 0x85 RCTRIM1;
sfr at 0x86 RWK;
sfr at 0x87 PCON;

sfr at 0x88 TCON;
sfr at 0x89 TMOD;
sfr at 0x8A TL0;
sfr at 0x8B TL1;
sfr at 0x8C TH0;
sfr at 0x8D TH1;
sfr at 0x8E CKCON;
sfr at 0x8F WKCON;

sfr at 0x90 P1;
sfr at 0x91 SFRS; //TA Protection
sfr at 0x92 CAPCON0;
sfr at 0x93 CAPCON1;
sfr at 0x94 CAPCON2;
sfr at 0x95 CKDIV;
sfr at 0x96 CKSWT; //TA Protection
sfr at 0x97 CKEN;  //TA Protection

sfr at 0x98 SCON;
sfr at 0x99 SBUF;
sfr at 0x9A SBUF_1;
sfr at 0x9B EIE;
sfr at 0x9C EIE1;
sfr at 0x9F CHPCON; //TA Protection

sfr at 0xA0 P2;
sfr at 0xA2 AUXR1;
sfr at 0xA3 BODCON0; //TA Protection
sfr at 0xA4 IAPTRG;	 //TA Protection
sfr at 0xA5 IAPUEN;	 //TA Protection
sfr at 0xA6 IAPAL;
sfr at 0xA7 IAPAH;

sfr at 0xA8 IE;
sfr at 0xA9 SADDR;
sfr at 0xAA WDCON;	 //TA Protection
sfr at 0xAB BODCON1; //TA Protection
sfr at 0xAC P3M1;
sfr at 0xAC P3S; //Page1
sfr at 0xAD P3M2;
sfr at 0xAD P3SR; //Page1
sfr at 0xAE IAPFD;
sfr at 0xAF IAPCN;

sfr at 0xB0 P3;
sfr at 0xB1 P0M1;
sfr at 0xB1 P0S; //Page1
sfr at 0xB2 P0M2;
sfr at 0xB2 P0SR; //Page1
sfr at 0xB3 P1M1;
sfr at 0xB3 P1S; //Page1
sfr at 0xB4 P1M2;
sfr at 0xB4 P1SR; //Page1
sfr at 0xB5 P2S;
sfr at 0xB7 IPH;
sfr at 0xB7 PWMINTC; //Page1

sfr at 0xB8 IP;
sfr at 0xB9 SADEN;
sfr at 0xBA SADEN_1;
sfr at 0xBB SADDR_1;
sfr at 0xBC I2DAT;
sfr at 0xBD I2STAT;
sfr at 0xBE I2CLK;
sfr at 0xBF I2TOC;

sfr at 0xC0 I2CON;
sfr at 0xC1 I2ADDR;
sfr at 0xC2 ADCRL;
sfr at 0xC3 ADCRH;
sfr at 0xC4 T3CON;
sfr at 0xC4 PWM4H; //Page1
sfr at 0xC5 RL3;
sfr at 0xC5 PWM5H; //Page1
sfr at 0xC6 RH3;
sfr at 0xC6 PIOCON1; //Page1
sfr at 0xC7 TA;

sfr at 0xC8 T2CON;
sfr at 0xC9 T2MOD;
sfr at 0xCA RCMP2L;
sfr at 0xCB RCMP2H;
sfr at 0xCC TL2;
sfr at 0xCC PWM4L; //Page1
sfr at 0xCD TH2;
sfr at 0xCD PWM5L; //Page1
sfr at 0xCE ADCMPL;
sfr at 0xCF ADCMPH;

sfr at 0xD0 PSW;
sfr at 0xD1 PWMPH;
sfr at 0xD2 PWM0H;
sfr at 0xD3 PWM1H;
sfr at 0xD4 PWM2H;
sfr at 0xD5 PWM3H;
sfr at 0xD6 PNP;
sfr at 0xD7 FBD;

sfr at 0xD8 PWMCON0;
sfr at 0xD9 PWMPL;
sfr at 0xDA PWM0L;
sfr at 0xDB PWM1L;
sfr at 0xDC PWM2L;
sfr at 0xDD PWM3L;
sfr at 0xDE PIOCON0;
sfr at 0xDF PWMCON1;

sfr at 0xE0 ACC;
sfr at 0xE1 ADCCON1;
sfr at 0xE2 ADCCON2;
sfr at 0xE3 ADCDLY;
sfr at 0xE4 C0L;
sfr at 0xE5 C0H;
sfr at 0xE6 C1L;
sfr at 0xE7 C1H;

sfr at 0xE8 ADCCON0;
sfr at 0xE9 PICON;
sfr at 0xEA PINEN;
sfr at 0xEB PIPEN;
sfr at 0xEC PIF;
sfr at 0xED C2L;
sfr at 0xEE C2H;
sfr at 0xEF EIP;

sfr at 0xF0 B;
sfr at 0xF1 CAPCON3;
sfr at 0xF2 CAPCON4;
sfr at 0xF3 SPCR;
sfr at 0xF3 SPCR2; //Page1
sfr at 0xF4 SPSR;
sfr at 0xF5 SPDR;
sfr at 0xF6 AINDIDS;
sfr at 0xF7 EIPH;

sfr at 0xF8 SCON_1;
sfr at 0xF9 PDTEN;	//TA Protection
sfr at 0xFA PDTCNT; //TA Protection
sfr at 0xFB PMEN;
sfr at 0xFC PMD;
sfr at 0xFE EIP1;
sfr at 0xFF EIPH1;

/*  BIT Registers  */

sbit at(0xF8 + 7) SM0_1;   // SCON_1
sbit at(0xF8 + 7) FE_1;	   // SCON_1
sbit at(0xF8 + 6) SM1_1;   // SCON_1
sbit at(0xF8 + 5) SM2_1;   // SCON_1
sbit at(0xF8 + 4) REN_1;   // SCON_1
sbit at(0xF8 + 3) TB8_1;   // SCON_1
sbit at(0xF8 + 2) RB8_1;   // SCON_1
sbit at(0xF8 + 1) TI_1;	   // SCON_1
sbit at(0xF8 + 0) RI_1;	   // SCON_1
sbit at(0xE8 + 7) ADCF;	   // ADCCON0
sbit at(0xE8 + 6) ADCS;	   // ADCCON0
sbit at(0xE8 + 5) ETGSEL1; // ADCCON0
sbit at(0xE8 + 4) ETGSEL0; // ADCCON0
sbit at(0xE8 + 3) ADCHS3;  // ADCCON0
sbit at(0xE8 + 2) ADCHS2;  // ADCCON0
sbit at(0xE8 + 1) ADCHS1;  // ADCCON0
sbit at(0xE8 + 0) ADCHS0;  // ADCCON0
sbit at(0xD8 + 7) PWMRUN;  // PWMCON0
sbit at(0xD8 + 6) LOAD;	   // PWMCON0
sbit at(0xD8 + 5) PWMF;	   // PWMCON0
sbit at(0xD8 + 4) CLRPWM;  // PWMCON0
sbit at(0xD0 + 7) CY;	   // PSW
sbit at(0xD0 + 6) AC;	   // PSW
sbit at(0xD0 + 5) F0;	   // PSW
sbit at(0xD0 + 4) RS1;	   // PSW
sbit at(0xD0 + 3) RS0;	   // PSW
sbit at(0xD0 + 2) OV;	   // PSW
sbit at(0xD0 + 0) P;	   // PSW
sbit at(0xC8 + 7) TF2;	   // T2CON
sbit at(0xC8 + 2) TR2;	   // T2CON
sbit at(0xC8 + 0) CM_RL2;  // T2CON
sbit at(0xC0 + 6) I2CEN;   // I2CON
sbit at(0xC0 + 5) STA;	   // I2CON
sbit at(0xC0 + 4) STO;	   // I2CON
sbit at(0xC0 + 3) SI;	   // I2CON
sbit at(0xC0 + 2) AA;	   // I2CON
sbit at(0xC0 + 0) I2CPX;   // I2CON
sbit at(0xB8 + 6) PADC;	   // IP
sbit at(0xB8 + 5) PBOD;	   // IP
sbit at(0xB8 + 4) PS;	   // IP
sbit at(0xB8 + 3) PT1;	   // IP
sbit at(0xB8 + 2) PX1;	   // IP
sbit at(0xB8 + 1) PT0;	   // IP
sbit at(0xB8 + 0) PX0;	   // IP
sbit at(0xB0 + 0) P30;	   // P3
sbit at(0xA8 + 7) EA;	   // IE
sbit at(0xA8 + 6) EADC;	   // IE
sbit at(0xA8 + 5) EBOD;	   // IE
sbit at(0xA8 + 4) ES;	   // IE
sbit at(0xA8 + 3) ET1;	   // IE
sbit at(0xA8 + 2) EX1;	   // IE
sbit at(0xA8 + 1) ET0;	   // IE
sbit at(0xA8 + 0) EX0;	   // IE
sbit at(0xA0 + 0) P20;	   // P2
sbit at(0x98 + 7) SM0;	   // SCON
sbit at(0x98 + 7) FE;	   // SCON
sbit at(0x98 + 6) SM1;	   // SCON
sbit at(0x98 + 5) SM2;	   // SCON
sbit at(0x98 + 4) REN;	   // SCON
sbit at(0x98 + 3) TB8;	   // SCON
sbit at(0x98 + 2) RB8;	   // SCON
sbit at(0x98 + 1) TI;	   // SCON
sbit at(0x98 + 0) RI;	   // SCON
sbit at(0x90 + 7) P17;	   // P1
sbit at(0x90 + 6) P16;	   // P1
sbit at(0x90 + 6) TXD_1;   // P1
sbit at(0x90 + 5) P15;	   // P1
sbit at(0x90 + 4) P14;	   // P1
sbit at(0x90 + 4) SDA;	   // P1
sbit at(0x90 + 3) P13;	   // P1
sbit at(0x90 + 3) SCL;	   // P1
sbit at(0x90 + 2) P12;	   // P1
sbit at(0x90 + 1) P11;	   // P1
sbit at(0x90 + 0) P10;	   // P1
sbit at(0x88 + 7) TF1;	   // TCON
sbit at(0x88 + 6) TR1;	   // TCON
sbit at(0x88 + 5) TF0;	   // TCON
sbit at(0x88 + 4) TR0;	   // TCON
sbit at(0x88 + 3) IE1;	   // TCON
sbit at(0x88 + 2) IT1;	   // TCON
sbit at(0x88 + 1) IE0;	   // TCON
sbit at(0x88 + 0) IT0;	   // TCON
sbit at(0x80 + 7) P07;	   // P0
sbit at(0x80 + 7) RXD;	   // P0
sbit at(0x80 + 6) P06;	   // P0
sbit at(0x80 + 6) TXD;	   // P0
sbit at(0x80 + 5) P05;	   // P0
sbit at(0x80 + 4) P04;	   // P0
sbit at(0x80 + 4) STADC;   // P0
sbit at(0x80 + 3) P03;	   // P0
sbit at(0x80 + 2) P02;	   // P0
sbit at(0x80 + 2) RXD_1;   // P0
sbit at(0x80 + 1) P01;	   // P0
sbit at(0x80 + 1) MISO;	   // P0
sbit at(0x80 + 0) P00;	   // P0
sbit at(0x80 + 0) MOSI;	   // P0

#endif