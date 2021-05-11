;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.4 #12274 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _trigger_packet_send
	.globl _startup_packet_send
	.globl _pin_int07
	.globl _get_device_id
	.globl _make_packet_checksum
	.globl _Stimer_10u
	.globl _read_battery_voltage
	.globl _enableDynamicPayloads
	.globl _openReadingPipe
	.globl _openWritingPipe
	.globl _write
	.globl _powerUp
	.globl _powerDown
	.globl _begin
	.globl _spi_init
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
	.globl _pipeRx
	.globl _pipeTx
	.globl _TriggerPacket
	.globl _IdentPacket
	.globl _flags
	.globl _battery_count
	.globl _wake_count
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
_wake_count::
	.ds 1
_battery_count::
	.ds 1
_flags::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_IdentPacket::
	.ds 19
_TriggerPacket::
	.ds 12
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_pipeTx::
	.ds 5
_pipeRx::
	.ds 5
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_pin_int07
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'pin_int07'
;------------------------------------------------------------
;	main.c:63: void pin_int07(void) __interrupt 0x3B
;	-----------------------------------------
;	 function pin_int07
;	-----------------------------------------
_pin_int07:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	ar0
	push	psw
	mov	psw,#0x00
;	main.c:66: if (PIF & 0x08 )
	mov	a,_PIF
	jnb	acc.3,00102$
;	main.c:68: flags.triggerflag = 1;
	mov	r0,#_flags
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	main.c:69: flags.triggerstate = 1;
	mov	r0,#_flags
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
00102$:
;	main.c:72: PIF = 0x00;
	mov	_PIF,#0x00
;	main.c:74: }
	pop	psw
	pop	ar0
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'startup_packet_send'
;------------------------------------------------------------
;	main.c:132: void startup_packet_send(void)
;	-----------------------------------------
;	 function startup_packet_send
;	-----------------------------------------
_startup_packet_send:
;	main.c:136: IdentPacket.mHeader.mStart = PACKET_START;
	mov	dptr,#_IdentPacket
	mov	a,#0x80
	movx	@dptr,a
;	main.c:137: IdentPacket.mHeader.mVersion = PACKET_VERSION;
	mov	dptr,#(_IdentPacket + 0x0001)
	mov	a,#0x04
	movx	@dptr,a
;	main.c:138: IdentPacket.mHeader.mPacketType = ePacketTypeIdent;
	mov	dptr,#(_IdentPacket + 0x0002)
	mov	a,#0xaa
	movx	@dptr,a
;	main.c:139: IdentPacket.mHeader.mNodeId = get_device_id();
	lcall	_get_device_id
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(_IdentPacket + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:140: IdentPacket.mHeader.mCounter =0x00;
	mov	dptr,#(_IdentPacket + 0x0006)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:141: IdentPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
	lcall	_read_battery_voltage
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	dptr,#(_IdentPacket + 0x0005)
	mov	a,r6
	movx	@dptr,a
;	main.c:142: IdentPacket.BuildData.mDay = BUILD_DAY;
	mov	dptr,#(_IdentPacket + 0x000a)
	mov	a,#0x0b
	movx	@dptr,a
;	main.c:143: IdentPacket.BuildData.mMonth = BUILD_MONTH;
	mov	dptr,#(_IdentPacket + 0x000b)
	mov	a,#0x05
	movx	@dptr,a
;	main.c:144: IdentPacket.BuildData.mYear = BUILD_YEAR;
	mov	dptr,#(_IdentPacket + 0x000c)
	mov	a,#0x15
	movx	@dptr,a
;	main.c:145: IdentPacket.BuildData.mHour = BUILD_HOUR;
	mov	dptr,#(_IdentPacket + 0x000d)
	mov	a,#0x10
	movx	@dptr,a
;	main.c:146: IdentPacket.BuildData.mMmin = BUILD_MIN;
	mov	dptr,#(_IdentPacket + 0x000e)
	mov	a,#0x34
	movx	@dptr,a
;	main.c:147: IdentPacket.BuildData.mSec = BUILD_SEC;
	mov	dptr,#(_IdentPacket + 0x000f)
	mov	a,#0x0f
	movx	@dptr,a
;	main.c:148: IdentPacket.BuildData.mVersioHi = BUILD_VER_HI;
	mov	dptr,#(_IdentPacket + 0x0010)
	mov	a,#0x02
	movx	@dptr,a
;	main.c:149: IdentPacket.BuildData.mVersionLo = BUILD_VER_LO;
	mov	dptr,#(_IdentPacket + 0x0011)
	mov	a,#0x0d
	movx	@dptr,a
;	main.c:150: IdentPacket.mChecksum = make_packet_checksum((uint8_t *)&IdentPacket, sizeof(IdentPacket));
	mov	_make_packet_checksum_PARM_2,#0x13
	mov	dptr,#_IdentPacket
	mov	b,#0x00
	lcall	_make_packet_checksum
	mov	r7,dpl
	mov	dptr,#(_IdentPacket + 0x0012)
	mov	a,r7
	movx	@dptr,a
;	main.c:151: write((uint8_t *)&IdentPacket, sizeof(IdentPacket));
	mov	_write_PARM_2,#0x13
	mov	dptr,#_IdentPacket
	mov	b,#0x00
;	main.c:152: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'trigger_packet_send'
;------------------------------------------------------------
;	main.c:171: void trigger_packet_send(void)
;	-----------------------------------------
;	 function trigger_packet_send
;	-----------------------------------------
_trigger_packet_send:
;	main.c:173: TriggerPacket.mHeader.mCounter += 1;
	mov	dptr,#(_TriggerPacket + 0x0006)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
	mov	dptr,#(_TriggerPacket + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:174: TriggerPacket.mTriggerData.triggerstate = P13;// (uint8_t) flags.triggerstate;
	mov	c,_P13
	clr	a
	rlc	a
	mov	dptr,#(_TriggerPacket + 0x000a)
	movx	@dptr,a
;	main.c:175: TriggerPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
	lcall	_read_battery_voltage
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	dptr,#(_TriggerPacket + 0x0005)
	mov	a,r6
	movx	@dptr,a
;	main.c:176: TriggerPacket.mChecksum = make_packet_checksum((uint8_t *)&TriggerPacket, sizeof(TriggerPacket));
	mov	_make_packet_checksum_PARM_2,#0x0c
	mov	dptr,#_TriggerPacket
	mov	b,#0x00
	lcall	_make_packet_checksum
	mov	r7,dpl
	mov	dptr,#(_TriggerPacket + 0x000b)
	mov	a,r7
	movx	@dptr,a
;	main.c:177: write((uint8_t *)&TriggerPacket, sizeof(TriggerPacket));
	mov	_write_PARM_2,#0x0c
	mov	dptr,#_TriggerPacket
	mov	b,#0x00
;	main.c:178: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:187: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:189: clr_BODEN;				 // Kill brown out
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	anl	_BODCON0,#0x7f
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	main.c:190: ADCCON1 = 0x00;			 // turn off the ADC
	mov	_ADCCON1,#0x00
;	main.c:191: Set_All_GPIO_Quasi_Mode; // Set port drivers
	mov	_P0M1,#0x00
	mov	_P0M2,#0x00
	mov	_P1M1,#0x00
	mov	_P1M2,#0x00
	mov	_P3M1,#0x00
	mov	_P3M2,#0x00
;	main.c:197: P13_Input_Mode;		// Input mode.
	orl	_P1M1,#0x08
	anl	_P1M2,#0xf7
;	main.c:199: PICON |= 0x21;		// Edge triggered.
	orl	_PICON,#0x21
;	main.c:200: set_PINEN3;			// Neg edge detection.
	orl	_PINEN,#0x08
;	main.c:201: set_PIPEN3;			// Pos edge detection.
	orl	_PIPEN,#0x08
;	main.c:205: set_EPI;
	orl	_EIE,#0x02
;	main.c:221: EA = 1;					   // Enable irq's
;	assignBit
	setb	_EA
;	main.c:228: spi_init();
	lcall	_spi_init
;	main.c:232: begin();
	lcall	_begin
;	main.c:233: enableDynamicPayloads();
	lcall	_enableDynamicPayloads
;	main.c:234: openWritingPipe(pipeTx);
	mov	dptr,#_pipeTx
	mov	b,#0x00
	lcall	_openWritingPipe
;	main.c:235: openReadingPipe(1, pipeRx);
	mov	_openReadingPipe_PARM_2,#_pipeRx
	mov	(_openReadingPipe_PARM_2 + 1),#(_pipeRx >> 8)
	mov	(_openReadingPipe_PARM_2 + 2),#0x00
	mov	dpl,#0x01
	lcall	_openReadingPipe
;	main.c:236: powerUp();
	lcall	_powerUp
;	main.c:238: Stimer_10u(10);
	mov	dptr,#0x000a
	lcall	_Stimer_10u
;	main.c:239: startup_packet_send();
	lcall	_startup_packet_send
;	main.c:244: TriggerPacket.mHeader.mStart = PACKET_START;
	mov	dptr,#_TriggerPacket
	mov	a,#0x80
	movx	@dptr,a
;	main.c:245: TriggerPacket.mHeader.mVersion = PACKET_VERSION;
	mov	dptr,#(_TriggerPacket + 0x0001)
	mov	a,#0x04
	movx	@dptr,a
;	main.c:246: TriggerPacket.mHeader.mPacketType = ePacketTypeTrigger;
	mov	dptr,#(_TriggerPacket + 0x0002)
	mov	a,#0x22
	movx	@dptr,a
;	main.c:247: TriggerPacket.mHeader.mNodeId = get_device_id();
	lcall	_get_device_id
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(_TriggerPacket + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:248: TriggerPacket.mHeader.mCounter = 0;
	mov	dptr,#(_TriggerPacket + 0x0006)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:249: TriggerPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
	lcall	_read_battery_voltage
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(_TriggerPacket + 0x0005)
	mov	a,r6
	movx	@dptr,a
;	main.c:265: while (1)
00102$:
;	main.c:275: powerDown();
	lcall	_powerDown
;	main.c:277: clr_SPIEN;
	anl	_SPCR,#0xbf
;	main.c:279: ADCCON1 = 0x00; // Turn off the ADC.
	mov	_ADCCON1,#0x00
;	main.c:280: clr_BODEN;		// Disable undervoltage detection.
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	anl	_BODCON0,#0x7f
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	main.c:281: PIF = 0x00;
	mov	_PIF,#0x00
;	main.c:282: set_PD;			// Enter power-down mode.
	orl	_PCON,#0x02
;	main.c:283: set_SPIEN;
	orl	_SPCR,#0x40
;	main.c:285: powerUp();
	lcall	_powerUp
;	main.c:289: trigger_packet_send();
	lcall	_trigger_packet_send
;	main.c:294: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__pipeTx:
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
	.db #0xc7	; 199
__xinit__pipeRx:
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.area CABS    (ABS,CODE)
