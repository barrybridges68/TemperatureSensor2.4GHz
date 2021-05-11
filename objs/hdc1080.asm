;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.4 #12274 (Linux)
;--------------------------------------------------------
	.module hdc1080
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Hdc1080WriteRegister
	.globl _HandleError
	.globl _swap
	.globl _Init_I2C
	.globl _Stimer_10u
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
	.globl _Hdc1080Read_PARM_2
	.globl _Hdc1080WriteRegister_PARM_2
	.globl _Hdc1080Init
	.globl _Hdc1080Read
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
_Hdc1080WriteRegister_PARM_2:
	.ds 2
_Hdc1080Read_PARM_2:
	.ds 3
_Hdc1080Read_buff_65536_57:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/hdc1080.c:9: uint16_t swap(uint16_t num)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
_swap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	./src/hdc1080.c:11: return ((num >> 8) | (num << 8));
	mov	dpl,r7
	mov	dph,r6
;	./src/hdc1080.c:12: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HandleError'
;------------------------------------------------------------
;	./src/hdc1080.c:14: void HandleError(void)
;	-----------------------------------------
;	 function HandleError
;	-----------------------------------------
_HandleError:
;	./src/hdc1080.c:16: while (SI != 0)
00105$:
	jnb	_SI,00108$
;	./src/hdc1080.c:18: if (I2STAT == 0x00)
	mov	a,_I2STAT
	jnz	00102$
;	./src/hdc1080.c:20: STO = 1; // Check bus status if bus error,first send stop
;	assignBit
	setb	_STO
00102$:
;	./src/hdc1080.c:22: SI = 0;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:23: if (SI != 0) // If SI still keep 1
	jnb	_SI,00105$
;	./src/hdc1080.c:25: I2CEN = 0; // please first disable I2C.
;	assignBit
	clr	_I2CEN
;	./src/hdc1080.c:26: I2CEN = 1; // Then enable I2C for clear SI.
;	assignBit
	setb	_I2CEN
;	./src/hdc1080.c:27: SI = 0;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:28: I2CEN = 0; // At last disable I2C for next a new transfer
;	assignBit
	clr	_I2CEN
	sjmp	00105$
00108$:
;	./src/hdc1080.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hdc1080WriteRegister'
;------------------------------------------------------------
;value                     Allocated with name '_Hdc1080WriteRegister_PARM_2'
;address                   Allocated to registers r7 
;temp                      Allocated to registers r6 
;------------------------------------------------------------
;	./src/hdc1080.c:33: void Hdc1080WriteRegister(uint8_t address, uint16_t value)
;	-----------------------------------------
;	 function Hdc1080WriteRegister
;	-----------------------------------------
_Hdc1080WriteRegister:
	mov	r7,dpl
;	./src/hdc1080.c:37: set_STA; /* Send Start bit to I2C Device */
;	assignBit
	setb	_STA
;	./src/hdc1080.c:38: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:39: while (!SI)
00101$:
	jnb	_SI,00101$
;	./src/hdc1080.c:41: if (I2STAT != 0x08) /* 0x08:  A START condition has been transmitted*/
	mov	a,#0x08
	cjne	a,_I2STAT,00212$
	sjmp	00105$
00212$:
;	./src/hdc1080.c:43: HandleError();
;	./src/hdc1080.c:44: return;
	ljmp	_HandleError
00105$:
;	./src/hdc1080.c:48: clr_STA;                    /* Clear STA and Keep SI value in I2CON */
;	assignBit
	clr	_STA
;	./src/hdc1080.c:49: I2DAT = (ADDR | I2C_WRITE); /* Send (SLA+R) to Device */
	mov	_I2DAT,#0x80
;	./src/hdc1080.c:50: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:51: while (!SI)
00106$:
	jnb	_SI,00106$
;	./src/hdc1080.c:53: temp = I2STAT;
	mov	r6,_I2STAT
;	./src/hdc1080.c:54: if (temp != 0x18) /* 0x18: SLA+W has been transmitted; ACK has been received */
	cjne	r6,#0x18,00214$
	sjmp	00110$
00214$:
;	./src/hdc1080.c:56: HandleError();
;	./src/hdc1080.c:57: return;
	ljmp	_HandleError
00110$:
;	./src/hdc1080.c:61: I2DAT = address; /* Send EEPROM's High Byte Address */
	mov	_I2DAT,r7
;	./src/hdc1080.c:62: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:63: while (!SI)
00111$:
	jnb	_SI,00111$
;	./src/hdc1080.c:65: temp = I2STAT;
	mov	r6,_I2STAT
;	./src/hdc1080.c:66: if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
	cjne	r6,#0x28,00216$
	sjmp	00115$
00216$:
;	./src/hdc1080.c:68: HandleError();
;	./src/hdc1080.c:69: return;
	ljmp	_HandleError
00115$:
;	./src/hdc1080.c:73: I2DAT = value / 256; /* Send EEPROM's High Byte Address */
	mov	r5,(_Hdc1080WriteRegister_PARM_2 + 1)
	mov	_I2DAT,r5
;	./src/hdc1080.c:74: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:75: while (!SI)
00116$:
	jnb	_SI,00116$
;	./src/hdc1080.c:77: temp = I2STAT;
	mov	r6,_I2STAT
;	./src/hdc1080.c:78: if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
	cjne	r6,#0x28,00218$
	sjmp	00120$
00218$:
;	./src/hdc1080.c:80: HandleError();
;	./src/hdc1080.c:81: return;
	ljmp	_HandleError
00120$:
;	./src/hdc1080.c:84: I2DAT = address % 256; /* Send EEPROM's High Byte Address */
	mov	_I2DAT,r7
;	./src/hdc1080.c:85: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:86: while (!SI)
00121$:
	jnb	_SI,00121$
;	./src/hdc1080.c:88: temp = I2STAT;
	mov	r7,_I2STAT
;	./src/hdc1080.c:89: if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
	cjne	r7,#0x28,00220$
	sjmp	00125$
00220$:
;	./src/hdc1080.c:91: HandleError();
;	./src/hdc1080.c:92: return;
	ljmp	_HandleError
00125$:
;	./src/hdc1080.c:96: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:97: set_STO;
;	assignBit
	setb	_STO
;	./src/hdc1080.c:98: while (STO)
00126$:
	jb	_STO,00126$
;	./src/hdc1080.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hdc1080Init'
;------------------------------------------------------------
;	./src/hdc1080.c:102: void Hdc1080Init(void)
;	-----------------------------------------
;	 function Hdc1080Init
;	-----------------------------------------
_Hdc1080Init:
;	./src/hdc1080.c:104: Init_I2C();
	lcall	_Init_I2C
;	./src/hdc1080.c:105: Stimer_10u(100);
	mov	dptr,#0x0064
	lcall	_Stimer_10u
;	./src/hdc1080.c:106: Hdc1080WriteRegister(0x02, 0x1000);
	mov	_Hdc1080WriteRegister_PARM_2,#0x00
	mov	(_Hdc1080WriteRegister_PARM_2 + 1),#0x10
	mov	dpl,#0x02
;	./src/hdc1080.c:107: }
	ljmp	_Hdc1080WriteRegister
;------------------------------------------------------------
;Allocation info for local variables in function 'Hdc1080Read'
;------------------------------------------------------------
;humidity                  Allocated with name '_Hdc1080Read_PARM_2'
;temperature               Allocated to registers r5 r6 r7 
;temp                      Allocated to registers r4 
;u8Count                   Allocated to registers r4 
;buff                      Allocated with name '_Hdc1080Read_buff_65536_57'
;------------------------------------------------------------
;	./src/hdc1080.c:109: void Hdc1080Read(uint16_t *temperature, uint16_t *humidity)
;	-----------------------------------------
;	 function Hdc1080Read
;	-----------------------------------------
_Hdc1080Read:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/hdc1080.c:115: set_STA; /* Send Start bit to I2C Device */
;	assignBit
	setb	_STA
;	./src/hdc1080.c:116: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:117: while (!SI)
00101$:
	jnb	_SI,00101$
;	./src/hdc1080.c:119: if (I2STAT != 0x08) /* 0x08:  A START condition has been transmitted*/
	mov	a,#0x08
	cjne	a,_I2STAT,00263$
	sjmp	00105$
00263$:
;	./src/hdc1080.c:121: HandleError();
;	./src/hdc1080.c:122: return;
	ljmp	_HandleError
00105$:
;	./src/hdc1080.c:126: clr_STA;                    /* Clear STA and Keep SI value in I2CON */
;	assignBit
	clr	_STA
;	./src/hdc1080.c:127: I2DAT = (ADDR | I2C_WRITE); /* Send (SLA+R) to Device */
	mov	_I2DAT,#0x80
;	./src/hdc1080.c:128: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:129: while (!SI)
00106$:
	jnb	_SI,00106$
;	./src/hdc1080.c:131: temp = I2STAT;
	mov	r4,_I2STAT
;	./src/hdc1080.c:132: if (temp != 0x18) /* 0x18: SLA+W has been transmitted; ACK has been received */
	cjne	r4,#0x18,00265$
	sjmp	00110$
00265$:
;	./src/hdc1080.c:134: HandleError();
;	./src/hdc1080.c:135: return;
	ljmp	_HandleError
00110$:
;	./src/hdc1080.c:139: I2DAT = 0x00; /* Send EEPROM's High Byte Address */
	mov	_I2DAT,#0x00
;	./src/hdc1080.c:140: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:141: while (!SI)
00111$:
	jnb	_SI,00111$
;	./src/hdc1080.c:143: temp = I2STAT;
	mov	r4,_I2STAT
;	./src/hdc1080.c:144: if (temp != 0x28) /* 0x28:  Data byte in S1DAT has been transmitted; ACK has been received */
	cjne	r4,#0x28,00267$
	sjmp	00115$
00267$:
;	./src/hdc1080.c:146: HandleError();
;	./src/hdc1080.c:147: return;
	ljmp	_HandleError
00115$:
;	./src/hdc1080.c:150: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:151: set_STO;
;	assignBit
	setb	_STO
;	./src/hdc1080.c:152: while (STO)
00116$:
	jb	_STO,00116$
;	./src/hdc1080.c:155: Stimer_10u(8000);
	mov	dptr,#0x1f40
	push	ar7
	push	ar6
	push	ar5
	lcall	_Stimer_10u
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/hdc1080.c:158: set_STA; /* Send Start bit to I2C Device */
;	assignBit
	setb	_STA
;	./src/hdc1080.c:159: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:160: while (!SI)
00119$:
	jnb	_SI,00119$
;	./src/hdc1080.c:162: if (I2STAT != 0x08) /* 0x08:  A START condition has been transmitted*/
	mov	a,#0x08
	cjne	a,_I2STAT,00270$
	sjmp	00123$
00270$:
;	./src/hdc1080.c:164: HandleError();
;	./src/hdc1080.c:165: return;
	ljmp	_HandleError
00123$:
;	./src/hdc1080.c:169: clr_STA;                   /* Clear STA and Keep SI value in I2CON */
;	assignBit
	clr	_STA
;	./src/hdc1080.c:170: I2DAT = (ADDR | I2C_READ); /* Send (SLA+R) to Device */
	mov	_I2DAT,#0x81
;	./src/hdc1080.c:171: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:172: while (!SI)
00124$:
	jnb	_SI,00124$
;	./src/hdc1080.c:174: temp = I2STAT;
	mov	r4,_I2STAT
;	./src/hdc1080.c:175: if (temp != 0x40) /* 0x18: SLA+W has been transmitted; ACK has been received */
	cjne	r4,#0x40,00272$
	sjmp	00162$
00272$:
;	./src/hdc1080.c:177: HandleError();
;	./src/hdc1080.c:178: return;
	ljmp	_HandleError
;	./src/hdc1080.c:181: for (u8Count = 0; u8Count < 4; u8Count++)
00162$:
	mov	r4,#0x00
00138$:
;	./src/hdc1080.c:183: set_AA; /* Set Assert Acknowledge Control Bit */
;	assignBit
	setb	_AA
;	./src/hdc1080.c:184: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:185: while (!SI)
00129$:
	jnb	_SI,00129$
;	./src/hdc1080.c:187: if (I2STAT != 0x50) /* 0x50:Data byte has been received; NOT ACK has been returned */
	mov	a,#0x50
	cjne	a,_I2STAT,00274$
	sjmp	00133$
00274$:
;	./src/hdc1080.c:189: HandleError();
;	./src/hdc1080.c:190: return;
	ljmp	_HandleError
00133$:
;	./src/hdc1080.c:193: buff[u8Count] = I2DAT;
	mov	a,r4
	add	a,#_Hdc1080Read_buff_65536_57
	mov	r0,a
	mov	@r0,_I2DAT
;	./src/hdc1080.c:181: for (u8Count = 0; u8Count < 4; u8Count++)
	inc	r4
	cjne	r4,#0x04,00275$
00275$:
	jc	00138$
;	./src/hdc1080.c:196: clr_SI;
;	assignBit
	clr	_SI
;	./src/hdc1080.c:197: set_STO;
;	assignBit
	setb	_STO
;	./src/hdc1080.c:198: while (STO)
00135$:
	jb	_STO,00135$
;	./src/hdc1080.c:201: *temperature = swap(*(uint16_t *)&buff);
	mov	dpl,(_Hdc1080Read_buff_65536_57 + 0)
	mov	dph,(_Hdc1080Read_buff_65536_57 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_swap
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	./src/hdc1080.c:203: *humidity = swap(*(uint16_t *)&buff[2]);
	mov	r5,_Hdc1080Read_PARM_2
	mov	r6,(_Hdc1080Read_PARM_2 + 1)
	mov	r7,(_Hdc1080Read_PARM_2 + 2)
	mov	dpl,((_Hdc1080Read_buff_65536_57 + 0x0002) + 0)
	mov	dph,((_Hdc1080Read_buff_65536_57 + 0x0002) + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_swap
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	./src/hdc1080.c:204: }
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
