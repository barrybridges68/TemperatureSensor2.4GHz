;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.4 #12274 (Linux)
;--------------------------------------------------------
	.module Delay
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _EIPH1
	.globl _EIP1
	.globl _PMD
	.globl _PMEN
	.globl _PDTCNT
	.globl _PDTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR2
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWMCON1
	.globl _PIOCON0
	.globl _PWM3L
	.globl _PWM2L
	.globl _PWM1L
	.globl _PWM0L
	.globl _PWMPL
	.globl _PWMCON0
	.globl _FBD
	.globl _PNP
	.globl _PWM3H
	.globl _PWM2H
	.globl _PWM1H
	.globl _PWM0H
	.globl _PWMPH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _PWM5L
	.globl _TH2
	.globl _PWM4L
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _PIOCON1
	.globl _RH3
	.globl _PWM5H
	.globl _RL3
	.globl _PWM4H
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _PWMINTC
	.globl _IPH
	.globl _P2S
	.globl _P1SR
	.globl _P1M2
	.globl _P1S
	.globl _P1M1
	.globl _P0SR
	.globl _P0M2
	.globl _P0S
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3SR
	.globl _P3M2
	.globl _P3S
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _RWK
	.globl _RCTRIM1
	.globl _RCTRIM0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _BIT_TMP
	.globl _Timer0_Delay100us
	.globl _Timer0_Delay1ms
	.globl _Timer1_Delay10ms
	.globl _Timer2_Delay500us
	.globl _Timer3_Delay100ms
	.globl _Timer3_Delay10us
	.globl _Stimer_10u
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_RCTRIM0	=	0x0084
_RCTRIM1	=	0x0085
_RWK	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_WKCON	=	0x008f
_P1	=	0x0090
_SFRS	=	0x0091
_CAPCON0	=	0x0092
_CAPCON1	=	0x0093
_CAPCON2	=	0x0094
_CKDIV	=	0x0095
_CKSWT	=	0x0096
_CKEN	=	0x0097
_SCON	=	0x0098
_SBUF	=	0x0099
_SBUF_1	=	0x009a
_EIE	=	0x009b
_EIE1	=	0x009c
_CHPCON	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_BODCON0	=	0x00a3
_IAPTRG	=	0x00a4
_IAPUEN	=	0x00a5
_IAPAL	=	0x00a6
_IAPAH	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_WDCON	=	0x00aa
_BODCON1	=	0x00ab
_P3M1	=	0x00ac
_P3S	=	0x00ac
_P3M2	=	0x00ad
_P3SR	=	0x00ad
_IAPFD	=	0x00ae
_IAPCN	=	0x00af
_P3	=	0x00b0
_P0M1	=	0x00b1
_P0S	=	0x00b1
_P0M2	=	0x00b2
_P0SR	=	0x00b2
_P1M1	=	0x00b3
_P1S	=	0x00b3
_P1M2	=	0x00b4
_P1SR	=	0x00b4
_P2S	=	0x00b5
_IPH	=	0x00b7
_PWMINTC	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_SADEN_1	=	0x00ba
_SADDR_1	=	0x00bb
_I2DAT	=	0x00bc
_I2STAT	=	0x00bd
_I2CLK	=	0x00be
_I2TOC	=	0x00bf
_I2CON	=	0x00c0
_I2ADDR	=	0x00c1
_ADCRL	=	0x00c2
_ADCRH	=	0x00c3
_T3CON	=	0x00c4
_PWM4H	=	0x00c4
_RL3	=	0x00c5
_PWM5H	=	0x00c5
_RH3	=	0x00c6
_PIOCON1	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCMP2L	=	0x00ca
_RCMP2H	=	0x00cb
_TL2	=	0x00cc
_PWM4L	=	0x00cc
_TH2	=	0x00cd
_PWM5L	=	0x00cd
_ADCMPL	=	0x00ce
_ADCMPH	=	0x00cf
_PSW	=	0x00d0
_PWMPH	=	0x00d1
_PWM0H	=	0x00d2
_PWM1H	=	0x00d3
_PWM2H	=	0x00d4
_PWM3H	=	0x00d5
_PNP	=	0x00d6
_FBD	=	0x00d7
_PWMCON0	=	0x00d8
_PWMPL	=	0x00d9
_PWM0L	=	0x00da
_PWM1L	=	0x00db
_PWM2L	=	0x00dc
_PWM3L	=	0x00dd
_PIOCON0	=	0x00de
_PWMCON1	=	0x00df
_ACC	=	0x00e0
_ADCCON1	=	0x00e1
_ADCCON2	=	0x00e2
_ADCDLY	=	0x00e3
_C0L	=	0x00e4
_C0H	=	0x00e5
_C1L	=	0x00e6
_C1H	=	0x00e7
_ADCCON0	=	0x00e8
_PICON	=	0x00e9
_PINEN	=	0x00ea
_PIPEN	=	0x00eb
_PIF	=	0x00ec
_C2L	=	0x00ed
_C2H	=	0x00ee
_EIP	=	0x00ef
_B	=	0x00f0
_CAPCON3	=	0x00f1
_CAPCON4	=	0x00f2
_SPCR	=	0x00f3
_SPCR2	=	0x00f3
_SPSR	=	0x00f4
_SPDR	=	0x00f5
_AINDIDS	=	0x00f6
_EIPH	=	0x00f7
_SCON_1	=	0x00f8
_PDTEN	=	0x00f9
_PDTCNT	=	0x00fa
_PMEN	=	0x00fb
_PMD	=	0x00fc
_EIP1	=	0x00fe
_EIPH1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SM0_1	=	0x00ff
_FE_1	=	0x00ff
_SM1_1	=	0x00fe
_SM2_1	=	0x00fd
_REN_1	=	0x00fc
_TB8_1	=	0x00fb
_RB8_1	=	0x00fa
_TI_1	=	0x00f9
_RI_1	=	0x00f8
_ADCF	=	0x00ef
_ADCS	=	0x00ee
_ETGSEL1	=	0x00ed
_ETGSEL0	=	0x00ec
_ADCHS3	=	0x00eb
_ADCHS2	=	0x00ea
_ADCHS1	=	0x00e9
_ADCHS0	=	0x00e8
_PWMRUN	=	0x00df
_LOAD	=	0x00de
_PWMF	=	0x00dd
_CLRPWM	=	0x00dc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF2	=	0x00cf
_TR2	=	0x00ca
_CM_RL2	=	0x00c8
_I2CEN	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_SI	=	0x00c3
_AA	=	0x00c2
_I2CPX	=	0x00c0
_PADC	=	0x00be
_PBOD	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P30	=	0x00b0
_EA	=	0x00af
_EADC	=	0x00ae
_EBOD	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P20	=	0x00a0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P17	=	0x0097
_P16	=	0x0096
_TXD_1	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_SDA	=	0x0094
_P13	=	0x0093
_SCL	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P07	=	0x0087
_RXD	=	0x0087
_P06	=	0x0086
_TXD	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_STADC	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_RXD_1	=	0x0082
_P01	=	0x0081
_MISO	=	0x0081
_P00	=	0x0080
_MOSI	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_BIT_TMP::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_Delay100us'
;------------------------------------------------------------
;u32CNT                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./libs/Delay.c:23: void Timer0_Delay100us(UINT32 u32CNT)
;	-----------------------------------------
;	 function Timer0_Delay100us
;	-----------------------------------------
_Timer0_Delay100us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./libs/Delay.c:25: clr_T0M;      //T0M=0, Timer0 Clock = Fsys/12
	anl	_CKCON,#0xf7
;	./libs/Delay.c:26: TMOD |= 0x01; //Timer0 is 16-bit mode
	orl	_TMOD,#0x01
;	./libs/Delay.c:27: set_TR0;      //Start Timer0
;	assignBit
	setb	_TR0
;	./libs/Delay.c:28: while (u32CNT != 0)
00104$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	./libs/Delay.c:30: TL0 = LOBYTE(TIMER_DIV12_VALUE_100us); //Find  define in "Function_define.h" "TIMER VALUE"
	mov	_TL0,#0x7e
;	./libs/Delay.c:31: TH0 = HIBYTE(TIMER_DIV12_VALUE_100us);
	mov	_TH0,#0xff
;	./libs/Delay.c:32: while (TF0 != 1)
00101$:
;	./libs/Delay.c:34: clr_TF0;
;	assignBit
	jbc	_TF0,00127$
	sjmp	00101$
00127$:
;	./libs/Delay.c:35: u32CNT--;
	dec	r4
	cjne	r4,#0xff,00128$
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	sjmp	00104$
00106$:
;	./libs/Delay.c:37: clr_TR0; //Stop Timer0
;	assignBit
	clr	_TR0
;	./libs/Delay.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_Delay1ms'
;------------------------------------------------------------
;u32CNT                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./libs/Delay.c:40: void Timer0_Delay1ms(UINT32 u32CNT)
;	-----------------------------------------
;	 function Timer0_Delay1ms
;	-----------------------------------------
_Timer0_Delay1ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./libs/Delay.c:42: clr_T0M;      //T0M=0, Timer0 Clock = Fsys/12
	anl	_CKCON,#0xf7
;	./libs/Delay.c:43: TMOD |= 0x01; //Timer0 is 16-bit mode
	orl	_TMOD,#0x01
;	./libs/Delay.c:44: set_TR0;      //Start Timer0
;	assignBit
	setb	_TR0
;	./libs/Delay.c:45: while (u32CNT != 0)
00104$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	./libs/Delay.c:47: TL0 = LOBYTE(TIMER_DIV12_VALUE_1ms); //Find  define in "Function_define.h" "TIMER VALUE"
	mov	_TL0,#0xca
;	./libs/Delay.c:48: TH0 = HIBYTE(TIMER_DIV12_VALUE_1ms);
	mov	_TH0,#0xfa
;	./libs/Delay.c:49: while (TF0 != 1)
00101$:
;	./libs/Delay.c:51: clr_TF0;
;	assignBit
	jbc	_TF0,00127$
	sjmp	00101$
00127$:
;	./libs/Delay.c:52: u32CNT--;
	dec	r4
	cjne	r4,#0xff,00128$
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	sjmp	00104$
00106$:
;	./libs/Delay.c:54: clr_TR0; //Stop Timer0
;	assignBit
	clr	_TR0
;	./libs/Delay.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1_Delay10ms'
;------------------------------------------------------------
;u32CNT                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./libs/Delay.c:58: void Timer1_Delay10ms(UINT32 u32CNT)
;	-----------------------------------------
;	 function Timer1_Delay10ms
;	-----------------------------------------
_Timer1_Delay10ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./libs/Delay.c:60: clr_T1M;      //T1M=0, Timer1 Clock = Fsys/12
	anl	_CKCON,#0xef
;	./libs/Delay.c:61: TMOD |= 0x10; //Timer1 is 16-bit mode
	orl	_TMOD,#0x10
;	./libs/Delay.c:62: set_TR1;      //Start Timer1
;	assignBit
	setb	_TR1
;	./libs/Delay.c:63: while (u32CNT != 0)
00104$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	./libs/Delay.c:65: TL1 = LOBYTE(TIMER_DIV12_VALUE_10ms); //Find  define in "Function_define.h" "TIMER VALUE"
	mov	_TL1,#0xea
;	./libs/Delay.c:66: TH1 = HIBYTE(TIMER_DIV12_VALUE_10ms);
	mov	_TH1,#0xcb
;	./libs/Delay.c:67: while (TF1 != 1)
00101$:
;	./libs/Delay.c:69: clr_TF1;
;	assignBit
	jbc	_TF1,00127$
	sjmp	00101$
00127$:
;	./libs/Delay.c:70: u32CNT--;
	dec	r4
	cjne	r4,#0xff,00128$
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	sjmp	00104$
00106$:
;	./libs/Delay.c:72: clr_TR1; //Stop Timer1
;	assignBit
	clr	_TR1
;	./libs/Delay.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2_Delay500us'
;------------------------------------------------------------
;u32CNT                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./libs/Delay.c:75: void Timer2_Delay500us(UINT32 u32CNT)
;	-----------------------------------------
;	 function Timer2_Delay500us
;	-----------------------------------------
_Timer2_Delay500us:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./libs/Delay.c:77: clr_T2DIV2; //Timer2 Clock = Fsys/4
	anl	_T2MOD,#0xbf
;	./libs/Delay.c:78: clr_T2DIV1;
	anl	_T2MOD,#0xdf
;	./libs/Delay.c:79: set_T2DIV0;
	orl	_T2MOD,#0x10
;	./libs/Delay.c:80: set_TR2; //Start Timer2
;	assignBit
	setb	_TR2
;	./libs/Delay.c:81: while (u32CNT != 0)
00104$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	./libs/Delay.c:83: TL2 = LOBYTE(TIMER_DIV4_VALUE_500us); //Find  define in "Function_define.h" "TIMER VALUE"
	mov	_TL2,#0x30
;	./libs/Delay.c:84: TH2 = HIBYTE(TIMER_DIV4_VALUE_500us);
	mov	_TH2,#0xf8
;	./libs/Delay.c:85: while (TF2 != 1)
00101$:
;	./libs/Delay.c:87: clr_TF2;
;	assignBit
	jbc	_TF2,00127$
	sjmp	00101$
00127$:
;	./libs/Delay.c:88: u32CNT--;
	dec	r4
	cjne	r4,#0xff,00128$
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
	cjne	r6,#0xff,00128$
	dec	r7
00128$:
	sjmp	00104$
00106$:
;	./libs/Delay.c:90: clr_TR2; //Stop Timer2
;	assignBit
	clr	_TR2
;	./libs/Delay.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3_Delay100ms'
;------------------------------------------------------------
;u32CNT                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./libs/Delay.c:93: void Timer3_Delay100ms(UINT32 u32CNT)
;	-----------------------------------------
;	 function Timer3_Delay100ms
;	-----------------------------------------
_Timer3_Delay100ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./libs/Delay.c:95: T3CON = 0x07; //Timer3 Clock = Fsys/128
	mov	_T3CON,#0x07
;	./libs/Delay.c:96: set_TR3;      //Trigger Timer3
	orl	_T3CON,#0x08
;	./libs/Delay.c:97: while (u32CNT != 0)
00104$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	./libs/Delay.c:99: RL3 = LOBYTE(TIMER_DIV128_VALUE_100ms); //Find  define in "Function_define.h" "TIMER VALUE"
	mov	_RL3,#0x2c
;	./libs/Delay.c:100: RH3 = HIBYTE(TIMER_DIV128_VALUE_100ms);
	mov	_RH3,#0xcf
;	./libs/Delay.c:101: while ((T3CON & SET_BIT4) != SET_BIT4)
00101$:
	mov	r2,_T3CON
	anl	ar2,#0x10
	mov	r3,#0x00
	cjne	r2,#0x10,00101$
	cjne	r3,#0x00,00101$
;	./libs/Delay.c:103: clr_TF3;
	anl	_T3CON,#0xef
;	./libs/Delay.c:104: u32CNT--;
	dec	r4
	cjne	r4,#0xff,00129$
	dec	r5
	cjne	r5,#0xff,00129$
	dec	r6
	cjne	r6,#0xff,00129$
	dec	r7
00129$:
	sjmp	00104$
00106$:
;	./libs/Delay.c:106: clr_TR3; //Stop Timer3
	anl	_T3CON,#0xf7
;	./libs/Delay.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3_Delay10us'
;------------------------------------------------------------
;u32CNT                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./libs/Delay.c:109: void Timer3_Delay10us(UINT32 u32CNT)
;	-----------------------------------------
;	 function Timer3_Delay10us
;	-----------------------------------------
_Timer3_Delay10us:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./libs/Delay.c:111: T3CON = 0x07; //Timer3 Clock = Fsys/128
	mov	_T3CON,#0x07
;	./libs/Delay.c:112: set_TR3;      //Trigger Timer3
	orl	_T3CON,#0x08
;	./libs/Delay.c:113: while (u32CNT != 0)
00104$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00106$
;	./libs/Delay.c:115: RL3 = LOBYTE(TIMER_DIV4_VALUE_10us); //Find  define in "Function_define.h" "TIMER VALUE"
	mov	_RL3,#0xd8
;	./libs/Delay.c:116: RH3 = HIBYTE(TIMER_DIV4_VALUE_10us);
	mov	_RH3,#0xff
;	./libs/Delay.c:117: while ((T3CON & SET_BIT4) != SET_BIT4)
00101$:
	mov	r2,_T3CON
	anl	ar2,#0x10
	mov	r3,#0x00
	cjne	r2,#0x10,00101$
	cjne	r3,#0x00,00101$
;	./libs/Delay.c:119: clr_TF3;
	anl	_T3CON,#0xef
;	./libs/Delay.c:120: u32CNT--;
	dec	r4
	cjne	r4,#0xff,00129$
	dec	r5
	cjne	r5,#0xff,00129$
	dec	r6
	cjne	r6,#0xff,00129$
	dec	r7
00129$:
	sjmp	00104$
00106$:
;	./libs/Delay.c:122: clr_TR3; //Stop Timer3
	anl	_T3CON,#0xf7
;	./libs/Delay.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Stimer_10u'
;------------------------------------------------------------
;count                     Allocated to registers 
;counth                    Allocated to registers r5 
;------------------------------------------------------------
;	./libs/Delay.c:124: void Stimer_10u(uint16_t count)
;	-----------------------------------------
;	 function Stimer_10u
;	-----------------------------------------
_Stimer_10u:
	mov	r6,dpl
	mov	r7,dph
;	./libs/Delay.c:127: while (count--)
00104$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00126$
	dec	r7
00126$:
	mov	a,r4
	orl	a,r5
	jz	00107$
;	./libs/Delay.c:130: while (counth--)
	mov	r5,#0x06
00101$:
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jz	00104$
;	./libs/Delay.c:132: __asm NOP __endasm;
	NOP	
;	./libs/Delay.c:133: __asm NOP __endasm;
	NOP	
;	./libs/Delay.c:134: __asm NOP __endasm;
	NOP	
;	./libs/Delay.c:135: __asm NOP __endasm;
	NOP	
;	./libs/Delay.c:136: __asm NOP __endasm;
	NOP	
	sjmp	00101$
00107$:
;	./libs/Delay.c:139: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
