;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.4 #12274 (Linux)
;--------------------------------------------------------
	.module RF24
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _min_PARM_2
	.globl _spi_transfer
	.globl ___memcpy
	.globl _Timer3_Delay10us
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
	.globl _setRetries_PARM_2
	.globl _setAutoAckPipe_PARM_2
	.globl _writeAckPayload_PARM_3
	.globl _writeAckPayload_PARM_2
	.globl _openReadingPipe_PARM_2
	.globl _whatHappened_PARM_3
	.globl _whatHappened_PARM_2
	.globl _read_PARM_2
	.globl _startWrite_PARM_2
	.globl _write_PARM_2
	.globl _read_payload_PARM_2
	.globl _write_payload_PARM_2
	.globl _write_register_PARM_2
	.globl _write_registers_PARM_3
	.globl _write_registers_PARM_2
	.globl _read_registers_PARM_3
	.globl _read_registers_PARM_2
	.globl _pipe0_reading_address
	.globl _ack_payload_length
	.globl _dynamic_payloads_enabled
	.globl _ack_payload_available
	.globl _payload_size
	.globl _p_variant
	.globl _wide_band
	.globl _min
	.globl _csn
	.globl _ce
	.globl _read_registers
	.globl _read_register
	.globl _write_registers
	.globl _write_register
	.globl _write_payload
	.globl _read_payload
	.globl _flush_rx
	.globl _flush_tx
	.globl _get_status
	.globl _setChannel
	.globl _setPayloadSize
	.globl _getPayloadSize
	.globl _begin
	.globl _startListening
	.globl _stopListening
	.globl _powerDown
	.globl _powerUp
	.globl _write
	.globl _startWrite
	.globl _getDynamicPayloadSize
	.globl _available
	.globl _availablePipe
	.globl _read
	.globl _whatHappened
	.globl _openWritingPipe
	.globl _openReadingPipe
	.globl _toggle_features
	.globl _enableDynamicPayloads
	.globl _enableAckPayload
	.globl _writeAckPayload
	.globl _isAckPayloadAvailable
	.globl _isPVariant
	.globl _setAutoAck
	.globl _setAutoAckPipe
	.globl _testCarrier
	.globl _testRPD
	.globl _setPALevel
	.globl _getPALevel
	.globl _setDataRate
	.globl _getDataRate
	.globl _setCRCLength
	.globl _getCRCLength
	.globl _disableCRC
	.globl _setRetries
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
_wide_band::
	.ds 1
_p_variant::
	.ds 1
_payload_size::
	.ds 1
_ack_payload_available::
	.ds 1
_dynamic_payloads_enabled::
	.ds 1
_ack_payload_length::
	.ds 1
_pipe0_reading_address::
	.ds 5
_read_registers_PARM_2:
	.ds 3
_read_registers_PARM_3:
	.ds 1
_write_registers_PARM_2:
	.ds 3
_write_registers_PARM_3:
	.ds 1
_write_register_PARM_2:
	.ds 1
_write_payload_PARM_2:
	.ds 1
_read_payload_PARM_2:
	.ds 1
_write_PARM_2:
	.ds 1
_write_observe_tx_65536_149:
	.ds 1
_write_tx_ok_65536_149:
	.ds 1
_write_tx_fail_65536_149:
	.ds 1
_startWrite_PARM_2:
	.ds 1
_read_PARM_2:
	.ds 1
_whatHappened_PARM_2:
	.ds 3
_whatHappened_PARM_3:
	.ds 3
_openReadingPipe_PARM_2:
	.ds 3
_writeAckPayload_PARM_2:
	.ds 3
_writeAckPayload_PARM_3:
	.ds 1
_setAutoAckPipe_PARM_2:
	.ds 1
_setRetries_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_min_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'min'
;------------------------------------------------------------
;b                         Allocated with name '_min_PARM_2'
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:19: uint8_t min(uint8_t a, uint8_t b)
;	-----------------------------------------
;	 function min
;	-----------------------------------------
_min:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/RF24.c:21: if (a < b)
	clr	c
	mov	a,r7
	subb	a,_min_PARM_2
	jnc	00102$
;	./src/RF24.c:22: return a;
	mov	dpl,r7
	ret
00102$:
;	./src/RF24.c:23: return b;
	mov	dpl,_min_PARM_2
;	./src/RF24.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'csn'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:27: void csn(uint8_t mode)
;	-----------------------------------------
;	 function csn
;	-----------------------------------------
_csn:
;	./src/RF24.c:29: CSN = mode;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P11,c
;	./src/RF24.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ce'
;------------------------------------------------------------
;level                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:34: void ce(uint8_t level)
;	-----------------------------------------
;	 function ce
;	-----------------------------------------
_ce:
;	./src/RF24.c:36: CE = level;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P12,c
;	./src/RF24.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_registers'
;------------------------------------------------------------
;buf                       Allocated with name '_read_registers_PARM_2'
;len                       Allocated with name '_read_registers_PARM_3'
;reg                       Allocated to registers r7 
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:41: uint8_t read_registers(uint8_t reg, uint8_t *buf, uint8_t len)
;	-----------------------------------------
;	 function read_registers
;	-----------------------------------------
_read_registers:
	mov	r7,dpl
;	./src/RF24.c:45: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:46: status = spi_transfer(R_REGISTER | (REGISTER_MASK & reg));
	mov	a,#0x1f
	anl	a,r7
	mov	dpl,a
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:47: while (len--)
	mov	r4,_read_registers_PARM_2
	mov	r5,(_read_registers_PARM_2 + 1)
	mov	r6,(_read_registers_PARM_2 + 2)
	mov	r3,_read_registers_PARM_3
00101$:
	mov	ar2,r3
	dec	r3
	mov	a,r2
	jz	00103$
;	./src/RF24.c:48: *buf++ = spi_transfer(0xff);
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spi_transfer
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	sjmp	00101$
00103$:
;	./src/RF24.c:50: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:52: return status;
	mov	dpl,r7
;	./src/RF24.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_register'
;------------------------------------------------------------
;reg                       Allocated to registers r7 
;result                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:57: uint8_t read_register(uint8_t reg)
;	-----------------------------------------
;	 function read_register
;	-----------------------------------------
_read_register:
	mov	r7,dpl
;	./src/RF24.c:60: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:61: spi_transfer(R_REGISTER | (REGISTER_MASK & reg));
	mov	a,#0x1f
	anl	a,r7
	mov	dpl,a
	lcall	_spi_transfer
;	./src/RF24.c:62: result = spi_transfer(0xff);
	mov	dpl,#0xff
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:64: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:65: return result;
	mov	dpl,r7
;	./src/RF24.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_registers'
;------------------------------------------------------------
;buf                       Allocated with name '_write_registers_PARM_2'
;len                       Allocated with name '_write_registers_PARM_3'
;reg                       Allocated to registers r7 
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:70: uint8_t write_registers(uint8_t reg, const uint8_t *buf, uint8_t len)
;	-----------------------------------------
;	 function write_registers
;	-----------------------------------------
_write_registers:
	mov	r7,dpl
;	./src/RF24.c:74: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:75: status = spi_transfer(W_REGISTER | (REGISTER_MASK & reg));
	mov	a,#0x1f
	anl	a,r7
	orl	a,#0x20
	mov	dpl,a
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:76: while (len--)
	mov	r4,_write_registers_PARM_2
	mov	r5,(_write_registers_PARM_2 + 1)
	mov	r6,(_write_registers_PARM_2 + 2)
	mov	r3,_write_registers_PARM_3
00101$:
	mov	ar2,r3
	dec	r3
	mov	a,r2
	jz	00103$
;	./src/RF24.c:77: spi_transfer(*buf++);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spi_transfer
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	./src/RF24.c:79: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:81: return status;
	mov	dpl,r7
;	./src/RF24.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_register'
;------------------------------------------------------------
;value                     Allocated with name '_write_register_PARM_2'
;reg                       Allocated to registers r7 
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:86: uint8_t write_register(uint8_t reg, uint8_t value)
;	-----------------------------------------
;	 function write_register
;	-----------------------------------------
_write_register:
	mov	r7,dpl
;	./src/RF24.c:89: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:90: status = spi_transfer(W_REGISTER | (REGISTER_MASK & reg));
	mov	a,#0x1f
	anl	a,r7
	orl	a,#0x20
	mov	dpl,a
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:91: spi_transfer(value);
	mov	dpl,_write_register_PARM_2
	push	ar7
	lcall	_spi_transfer
;	./src/RF24.c:92: csn(HIGH);
	mov	dpl,#0x01
	lcall	_csn
	pop	ar7
;	./src/RF24.c:94: return status;
	mov	dpl,r7
;	./src/RF24.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_payload'
;------------------------------------------------------------
;len                       Allocated with name '_write_payload_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;status                    Allocated to registers r3 
;current                   Allocated to registers r5 r6 r7 
;data_len                  Allocated to registers r4 
;blank_len                 Allocated to registers r2 
;------------------------------------------------------------
;	./src/RF24.c:99: uint8_t write_payload(const void *buf, uint8_t len)
;	-----------------------------------------
;	 function write_payload
;	-----------------------------------------
_write_payload:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/RF24.c:103: const uint8_t *current = buf;
;	./src/RF24.c:105: uint8_t data_len = min(len, payload_size);
	mov	_min_PARM_2,_payload_size
	mov	dpl,_write_payload_PARM_2
	push	ar7
	push	ar6
	push	ar5
	lcall	_min
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:106: uint8_t blank_len = dynamic_payloads_enabled ? 0 : payload_size - data_len;
	mov	a,_dynamic_payloads_enabled
	jz	00109$
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00110$
00109$:
	mov	a,_payload_size
	clr	c
	subb	a,r4
	mov	r1,a
	mov	r2,a
	mov	r3,#0x00
00110$:
;	./src/RF24.c:108: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	_csn
;	./src/RF24.c:109: status = spi_transfer(W_TX_PAYLOAD);
	mov	dpl,#0xa0
	lcall	_spi_transfer
	mov	r3,dpl
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:110: while (data_len--)
00101$:
	mov	ar1,r4
	dec	r4
	mov	a,r1
	jz	00115$
;	./src/RF24.c:111: spi_transfer(*current++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_transfer
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:112: while (blank_len--)
	sjmp	00101$
00115$:
	mov	ar7,r2
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00106$
;	./src/RF24.c:113: spi_transfer(0);
	mov	dpl,#0x00
	push	ar7
	push	ar3
	lcall	_spi_transfer
	pop	ar3
	pop	ar7
	sjmp	00104$
00106$:
;	./src/RF24.c:114: csn(HIGH);
	mov	dpl,#0x01
	push	ar3
	lcall	_csn
	pop	ar3
;	./src/RF24.c:116: return status;
	mov	dpl,r3
;	./src/RF24.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_payload'
;------------------------------------------------------------
;len                       Allocated with name '_read_payload_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;status                    Allocated to registers r3 
;current                   Allocated to registers r5 r6 r7 
;data_len                  Allocated to registers r4 
;blank_len                 Allocated to registers r2 
;------------------------------------------------------------
;	./src/RF24.c:121: uint8_t read_payload(void *buf, uint8_t len)
;	-----------------------------------------
;	 function read_payload
;	-----------------------------------------
_read_payload:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/RF24.c:124: uint8_t *current = buf;
;	./src/RF24.c:126: uint8_t data_len = min(len, payload_size);
	mov	_min_PARM_2,_payload_size
	mov	dpl,_read_payload_PARM_2
	push	ar7
	push	ar6
	push	ar5
	lcall	_min
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:127: uint8_t blank_len = dynamic_payloads_enabled ? 0 : payload_size - data_len;
	mov	a,_dynamic_payloads_enabled
	jz	00109$
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00110$
00109$:
	mov	a,_payload_size
	clr	c
	subb	a,r4
	mov	r1,a
	mov	r2,a
	mov	r3,#0x00
00110$:
;	./src/RF24.c:129: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	_csn
;	./src/RF24.c:130: status = spi_transfer(R_RX_PAYLOAD);
	mov	dpl,#0x61
	lcall	_spi_transfer
	mov	r3,dpl
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:131: while (data_len--)
00101$:
	mov	ar1,r4
	dec	r4
	mov	a,r1
	jz	00115$
;	./src/RF24.c:132: *current++ = spi_transfer(0xff);
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_transfer
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	./src/RF24.c:133: while (blank_len--)
	sjmp	00101$
00115$:
	mov	ar7,r2
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00106$
;	./src/RF24.c:134: spi_transfer(0xff);
	mov	dpl,#0xff
	push	ar7
	push	ar3
	lcall	_spi_transfer
	pop	ar3
	pop	ar7
	sjmp	00104$
00106$:
;	./src/RF24.c:135: csn(HIGH);
	mov	dpl,#0x01
	push	ar3
	lcall	_csn
	pop	ar3
;	./src/RF24.c:137: return status;
	mov	dpl,r3
;	./src/RF24.c:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flush_rx'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:142: uint8_t flush_rx(void)
;	-----------------------------------------
;	 function flush_rx
;	-----------------------------------------
_flush_rx:
;	./src/RF24.c:146: csn(LOW);
	mov	dpl,#0x00
	lcall	_csn
;	./src/RF24.c:147: status = spi_transfer(FLUSH_RX);
	mov	dpl,#0xe2
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:148: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:150: return status;
	mov	dpl,r7
;	./src/RF24.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flush_tx'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:155: uint8_t flush_tx(void)
;	-----------------------------------------
;	 function flush_tx
;	-----------------------------------------
_flush_tx:
;	./src/RF24.c:159: csn(LOW);
	mov	dpl,#0x00
	lcall	_csn
;	./src/RF24.c:160: status = spi_transfer(FLUSH_TX);
	mov	dpl,#0xe1
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:161: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:163: return status;
	mov	dpl,r7
;	./src/RF24.c:164: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_status'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:168: uint8_t get_status(void)
;	-----------------------------------------
;	 function get_status
;	-----------------------------------------
_get_status:
;	./src/RF24.c:172: csn(LOW);
	mov	dpl,#0x00
	lcall	_csn
;	./src/RF24.c:173: status = spi_transfer(NOP);
	mov	dpl,#0xff
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:174: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:176: return status;
	mov	dpl,r7
;	./src/RF24.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setChannel'
;------------------------------------------------------------
;channel                   Allocated to registers 
;data                      Allocated to registers 
;max_channel               Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:194: void setChannel(uint8_t channel)
;	-----------------------------------------
;	 function setChannel
;	-----------------------------------------
_setChannel:
;	./src/RF24.c:200: write_register(RF_CH, min(channel, max_channel));
	mov	_min_PARM_2,#0x7f
	lcall	_min
	mov	_write_register_PARM_2,dpl
	mov	dpl,#0x05
	lcall	_write_register
;	./src/RF24.c:201: data = read_register(RF_CH);
	mov	dpl,#0x05
;	./src/RF24.c:202: }
	ljmp	_read_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setPayloadSize'
;------------------------------------------------------------
;size                      Allocated to registers 
;max_payload_size          Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:206: void setPayloadSize(uint8_t size)
;	-----------------------------------------
;	 function setPayloadSize
;	-----------------------------------------
_setPayloadSize:
;	./src/RF24.c:209: payload_size = min(size, max_payload_size);
	mov	_min_PARM_2,#0x20
	lcall	_min
	mov	_payload_size,dpl
;	./src/RF24.c:210: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getPayloadSize'
;------------------------------------------------------------
;	./src/RF24.c:214: uint8_t getPayloadSize(void)
;	-----------------------------------------
;	 function getPayloadSize
;	-----------------------------------------
_getPayloadSize:
;	./src/RF24.c:216: return payload_size;
	mov	dpl,_payload_size
;	./src/RF24.c:217: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'begin'
;------------------------------------------------------------
;	./src/RF24.c:221: void begin(void)
;	-----------------------------------------
;	 function begin
;	-----------------------------------------
_begin:
;	./src/RF24.c:223: ce(LOW);
	mov	dpl,#0x00
	lcall	_ce
;	./src/RF24.c:224: csn(HIGH);
	mov	dpl,#0x01
	lcall	_csn
;	./src/RF24.c:232: Timer3_Delay10us(500);
	mov	dptr,#0x01f4
	clr	a
	mov	b,a
	lcall	_Timer3_Delay10us
;	./src/RF24.c:237: write_register(SETUP_RETR, (0x04 << ARD) | (0x0f << ARC));
	mov	_write_register_PARM_2,#0x4f
	mov	dpl,#0x04
	lcall	_write_register
;	./src/RF24.c:240: setPALevel(RF24_PA_HIGH);
	mov	dpl,#0x02
	lcall	_setPALevel
;	./src/RF24.c:246: if (setDataRate(RF24_250KBPS))
	mov	dpl,#0x02
	lcall	_setDataRate
	mov	a,dpl
	jz	00102$
;	./src/RF24.c:248: p_variant = TRUE;
	mov	_p_variant,#0x01
00102$:
;	./src/RF24.c:253: setDataRate(RF24_250KBPS);
	mov	dpl,#0x02
	lcall	_setDataRate
;	./src/RF24.c:256: setCRCLength(RF24_CRC_16);
	mov	dpl,#0x02
	lcall	_setCRCLength
;	./src/RF24.c:259: write_register(DYNPD, 0);
	mov	_write_register_PARM_2,#0x00
	mov	dpl,#0x1c
	lcall	_write_register
;	./src/RF24.c:263: write_register(STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));
	mov	_write_register_PARM_2,#0x70
	mov	dpl,#0x07
	lcall	_write_register
;	./src/RF24.c:268: setChannel(60);
	mov	dpl,#0x3c
	lcall	_setChannel
;	./src/RF24.c:271: flush_rx();
	lcall	_flush_rx
;	./src/RF24.c:272: flush_tx();
	lcall	_flush_tx
;	./src/RF24.c:274: wide_band = TRUE;
	mov	_wide_band,#0x01
;	./src/RF24.c:275: p_variant = FALSE;
	mov	_p_variant,#0x00
;	./src/RF24.c:276: payload_size = 32;
	mov	_payload_size,#0x20
;	./src/RF24.c:277: ack_payload_available = FALSE;
	mov	_ack_payload_available,#0x00
;	./src/RF24.c:278: dynamic_payloads_enabled = FALSE;
	mov	_dynamic_payloads_enabled,#0x00
;	./src/RF24.c:280: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startListening'
;------------------------------------------------------------
;	./src/RF24.c:284: void startListening(void)
;	-----------------------------------------
;	 function startListening
;	-----------------------------------------
_startListening:
;	./src/RF24.c:286: write_register(CONFIG, read_register(CONFIG) | _BV(PWR_UP) | _BV(PRIM_RX));
	mov	dpl,#0x00
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x03
	mov	_write_register_PARM_2,a
	mov	dpl,#0x00
	lcall	_write_register
;	./src/RF24.c:287: write_register(STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));
	mov	_write_register_PARM_2,#0x70
	mov	dpl,#0x07
	lcall	_write_register
;	./src/RF24.c:291: write_registers(RX_ADDR_P0, pipe0_reading_address, 5);
	mov	_write_registers_PARM_2,#_pipe0_reading_address
	mov	(_write_registers_PARM_2 + 1),#0x00
	mov	(_write_registers_PARM_2 + 2),#0x40
	mov	_write_registers_PARM_3,#0x05
	mov	dpl,#0x0a
	lcall	_write_registers
;	./src/RF24.c:294: flush_rx();
	lcall	_flush_rx
;	./src/RF24.c:295: flush_tx();
	lcall	_flush_tx
;	./src/RF24.c:298: ce(HIGH);
	mov	dpl,#0x01
	lcall	_ce
;	./src/RF24.c:301: Timer3_Delay10us(130);
	mov	dptr,#(0x82&0x00ff)
	clr	a
	mov	b,a
;	./src/RF24.c:302: }
	ljmp	_Timer3_Delay10us
;------------------------------------------------------------
;Allocation info for local variables in function 'stopListening'
;------------------------------------------------------------
;	./src/RF24.c:306: void stopListening(void)
;	-----------------------------------------
;	 function stopListening
;	-----------------------------------------
_stopListening:
;	./src/RF24.c:308: ce(LOW);
	mov	dpl,#0x00
	lcall	_ce
;	./src/RF24.c:309: flush_tx();
	lcall	_flush_tx
;	./src/RF24.c:310: flush_rx();
;	./src/RF24.c:311: }
	ljmp	_flush_rx
;------------------------------------------------------------
;Allocation info for local variables in function 'powerDown'
;------------------------------------------------------------
;	./src/RF24.c:315: void powerDown(void)
;	-----------------------------------------
;	 function powerDown
;	-----------------------------------------
_powerDown:
;	./src/RF24.c:317: write_register(CONFIG, read_register(CONFIG) & ~_BV(PWR_UP));
	mov	dpl,#0x00
	lcall	_read_register
	mov	a,dpl
	anl	a,#0xfd
	mov	_write_register_PARM_2,a
	mov	dpl,#0x00
;	./src/RF24.c:318: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'powerUp'
;------------------------------------------------------------
;	./src/RF24.c:322: void powerUp(void)
;	-----------------------------------------
;	 function powerUp
;	-----------------------------------------
_powerUp:
;	./src/RF24.c:324: write_register(CONFIG, read_register(CONFIG) | _BV(PWR_UP));
	mov	dpl,#0x00
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x02
	mov	_write_register_PARM_2,a
	mov	dpl,#0x00
	lcall	_write_register
;	./src/RF24.c:325: Timer3_Delay10us(100);
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
;	./src/RF24.c:326: }
	ljmp	_Timer3_Delay10us
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;len                       Allocated with name '_write_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;result                    Allocated to registers r7 
;observe_tx                Allocated with name '_write_observe_tx_65536_149'
;status                    Allocated to registers 
;tx_ok                     Allocated with name '_write_tx_ok_65536_149'
;tx_fail                   Allocated with name '_write_tx_fail_65536_149'
;------------------------------------------------------------
;	./src/RF24.c:330: uint8_t write(const void *buf, uint8_t len)
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
;	./src/RF24.c:338: startWrite(buf, len);
	mov	_startWrite_PARM_2,_write_PARM_2
	lcall	_startWrite
;	./src/RF24.c:352: do
00101$:
;	./src/RF24.c:354: status = read_registers(OBSERVE_TX, &observe_tx, 1);
	mov	_read_registers_PARM_2,#_write_observe_tx_65536_149
	mov	(_read_registers_PARM_2 + 1),#0x00
	mov	(_read_registers_PARM_2 + 2),#0x40
	mov	_read_registers_PARM_3,#0x01
	mov	dpl,#0x08
	lcall	_read_registers
	mov	a,dpl
;	./src/RF24.c:355: } while (!(status & (_BV(TX_DS) | _BV(MAX_RT))));
	anl	a,#0x30
	jz	00101$
;	./src/RF24.c:367: whatHappened(&tx_ok, &tx_fail, &ack_payload_available);
	mov	_whatHappened_PARM_2,#_write_tx_fail_65536_149
	mov	(_whatHappened_PARM_2 + 1),#0x00
	mov	(_whatHappened_PARM_2 + 2),#0x40
	mov	_whatHappened_PARM_3,#_ack_payload_available
	mov	(_whatHappened_PARM_3 + 1),#0x00
	mov	(_whatHappened_PARM_3 + 2),#0x40
	mov	dptr,#_write_tx_ok_65536_149
	mov	b,#0x40
	lcall	_whatHappened
;	./src/RF24.c:369: result = tx_ok;
	mov	r7,_write_tx_ok_65536_149
;	./src/RF24.c:372: if (ack_payload_available)
	mov	a,_ack_payload_available
	jz	00105$
;	./src/RF24.c:374: ack_payload_length = getDynamicPayloadSize();
	push	ar7
	lcall	_getDynamicPayloadSize
	mov	_ack_payload_length,dpl
	pop	ar7
00105$:
;	./src/RF24.c:380: powerDown();
	push	ar7
	lcall	_powerDown
;	./src/RF24.c:383: flush_tx();
	lcall	_flush_tx
	pop	ar7
;	./src/RF24.c:385: return result;
	mov	dpl,r7
;	./src/RF24.c:386: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startWrite'
;------------------------------------------------------------
;len                       Allocated with name '_startWrite_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	./src/RF24.c:389: void startWrite(const void *buf, uint8_t len)
;	-----------------------------------------
;	 function startWrite
;	-----------------------------------------
_startWrite:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/RF24.c:392: write_register(CONFIG, (read_register(CONFIG) | _BV(PWR_UP)) & ~_BV(PRIM_RX));
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x02
	anl	a,#0xfe
	mov	_write_register_PARM_2,a
	mov	dpl,#0x00
	lcall	_write_register
;	./src/RF24.c:393: Timer3_Delay10us(15);
	mov	dptr,#(0x0f&0x00ff)
	clr	a
	mov	b,a
	lcall	_Timer3_Delay10us
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:396: write_payload(buf, len);
	mov	_write_payload_PARM_2,_startWrite_PARM_2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_payload
;	./src/RF24.c:399: ce(HIGH);
	mov	dpl,#0x01
	lcall	_ce
;	./src/RF24.c:400: Timer3_Delay10us(2);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_Timer3_Delay10us
;	./src/RF24.c:401: ce(LOW);
	mov	dpl,#0x00
;	./src/RF24.c:402: }
	ljmp	_ce
;------------------------------------------------------------
;Allocation info for local variables in function 'getDynamicPayloadSize'
;------------------------------------------------------------
;result                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:406: uint8_t getDynamicPayloadSize(void)
;	-----------------------------------------
;	 function getDynamicPayloadSize
;	-----------------------------------------
_getDynamicPayloadSize:
;	./src/RF24.c:410: csn(LOW);
	mov	dpl,#0x00
	lcall	_csn
;	./src/RF24.c:411: spi_transfer(R_RX_PL_WID);
	mov	dpl,#0x60
	lcall	_spi_transfer
;	./src/RF24.c:412: result = spi_transfer(0xff);
	mov	dpl,#0xff
	lcall	_spi_transfer
	mov	r7,dpl
;	./src/RF24.c:413: csn(HIGH);
	mov	dpl,#0x01
	push	ar7
	lcall	_csn
	pop	ar7
;	./src/RF24.c:415: return result;
	mov	dpl,r7
;	./src/RF24.c:416: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'available'
;------------------------------------------------------------
;	./src/RF24.c:420: uint8_t available(void)
;	-----------------------------------------
;	 function available
;	-----------------------------------------
_available:
;	./src/RF24.c:422: return availablePipe(NULL);
	mov	dptr,#0x0000
	mov	b,#0x00
;	./src/RF24.c:423: }
	ljmp	_availablePipe
;------------------------------------------------------------
;Allocation info for local variables in function 'availablePipe'
;------------------------------------------------------------
;pipe_num                  Allocated to registers r5 r6 r7 
;status                    Allocated to registers r4 
;result                    Allocated to registers r2 
;------------------------------------------------------------
;	./src/RF24.c:427: uint8_t availablePipe(uint8_t *pipe_num)
;	-----------------------------------------
;	 function availablePipe
;	-----------------------------------------
_availablePipe:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/RF24.c:429: uint8_t status = get_status();
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_status
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:434: uint8_t result = (status & _BV(RX_DR));
	mov	a,#0x40
	anl	a,r4
;	./src/RF24.c:436: if (result)
	mov	r3,a
	mov	r2,a
	jz	00106$
;	./src/RF24.c:439: if (pipe_num)
	mov	a,r5
	orl	a,r6
	jz	00102$
;	./src/RF24.c:440: *pipe_num = (status >> RX_P_NO) & 0x07;
	mov	a,r4
	clr	c
	rrc	a
	mov	r3,a
	anl	ar3,#0x07
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
00102$:
;	./src/RF24.c:447: write_register(STATUS, _BV(RX_DR));
	mov	_write_register_PARM_2,#0x40
	mov	dpl,#0x07
	push	ar4
	push	ar2
	lcall	_write_register
	pop	ar2
	pop	ar4
;	./src/RF24.c:450: if (status & _BV(TX_DS))
	mov	a,r4
	jnb	acc.5,00106$
;	./src/RF24.c:452: write_register(STATUS, _BV(TX_DS));
	mov	_write_register_PARM_2,#0x20
	mov	dpl,#0x07
	push	ar2
	lcall	_write_register
	pop	ar2
00106$:
;	./src/RF24.c:456: return result;
	mov	dpl,r2
;	./src/RF24.c:457: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;len                       Allocated with name '_read_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	./src/RF24.c:461: uint8_t read(void *buf, uint8_t len)
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
;	./src/RF24.c:464: read_payload(buf, len);
	mov	_read_payload_PARM_2,_read_PARM_2
	lcall	_read_payload
;	./src/RF24.c:467: return read_register(FIFO_STATUS) & _BV(RX_EMPTY);
	mov	dpl,#0x17
	lcall	_read_register
	mov	a,dpl
	anl	a,#0x01
	mov	dpl,a
;	./src/RF24.c:468: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'whatHappened'
;------------------------------------------------------------
;tx_fail                   Allocated with name '_whatHappened_PARM_2'
;rx_ready                  Allocated with name '_whatHappened_PARM_3'
;tx_ok                     Allocated to registers r5 r6 r7 
;status                    Allocated to registers r4 
;------------------------------------------------------------
;	./src/RF24.c:472: void whatHappened(uint8_t *tx_ok, uint8_t *tx_fail, uint8_t *rx_ready)
;	-----------------------------------------
;	 function whatHappened
;	-----------------------------------------
_whatHappened:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/RF24.c:476: uint8_t status = write_register(STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT));
	mov	_write_register_PARM_2,#0x70
	mov	dpl,#0x07
	push	ar7
	push	ar6
	push	ar5
	lcall	_write_register
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:479: *tx_ok = status & _BV(TX_DS);
	mov	a,#0x20
	anl	a,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	./src/RF24.c:480: *tx_fail = status & _BV(MAX_RT);
	mov	r5,_whatHappened_PARM_2
	mov	r6,(_whatHappened_PARM_2 + 1)
	mov	r7,(_whatHappened_PARM_2 + 2)
	mov	a,#0x10
	anl	a,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	./src/RF24.c:481: *rx_ready = status & _BV(RX_DR);
	mov	r5,_whatHappened_PARM_3
	mov	r6,(_whatHappened_PARM_3 + 1)
	mov	r7,(_whatHappened_PARM_3 + 2)
	anl	ar4,#0x40
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	./src/RF24.c:482: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'openWritingPipe'
;------------------------------------------------------------
;value                     Allocated to registers r5 r6 r7 
;max_payload_size          Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:486: void openWritingPipe(uint8_t *value)
;	-----------------------------------------
;	 function openWritingPipe
;	-----------------------------------------
_openWritingPipe:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/RF24.c:491: write_registers(RX_ADDR_P0, value, 5);
	mov	_write_registers_PARM_2,r5
	mov	(_write_registers_PARM_2 + 1),r6
	mov	(_write_registers_PARM_2 + 2),r7
	mov	_write_registers_PARM_3,#0x05
	mov	dpl,#0x0a
	push	ar7
	push	ar6
	push	ar5
	lcall	_write_registers
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:492: write_registers(TX_ADDR, value, 5);
	mov	_write_registers_PARM_2,r5
	mov	(_write_registers_PARM_2 + 1),r6
	mov	(_write_registers_PARM_2 + 2),r7
	mov	_write_registers_PARM_3,#0x05
	mov	dpl,#0x10
	lcall	_write_registers
;	./src/RF24.c:494: write_register(RX_PW_P0, min(payload_size, max_payload_size));
	mov	_min_PARM_2,#0x20
	mov	dpl,_payload_size
	lcall	_min
	mov	_write_register_PARM_2,dpl
	mov	dpl,#0x11
;	./src/RF24.c:495: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'openReadingPipe'
;------------------------------------------------------------
;address                   Allocated with name '_openReadingPipe_PARM_2'
;child                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:509: void openReadingPipe(uint8_t child, uint8_t *address)
;	-----------------------------------------
;	 function openReadingPipe
;	-----------------------------------------
_openReadingPipe:
;	./src/RF24.c:514: if (child == 0)
	mov	a,dpl
	mov	r7,a
	jnz	00102$
;	./src/RF24.c:515: memcpy(pipe0_reading_address, address, 5);
	mov	___memcpy_PARM_2,_openReadingPipe_PARM_2
	mov	(___memcpy_PARM_2 + 1),(_openReadingPipe_PARM_2 + 1)
	mov	(___memcpy_PARM_2 + 2),(_openReadingPipe_PARM_2 + 2)
	mov	___memcpy_PARM_3,#0x05
	mov	(___memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_pipe0_reading_address
	mov	b,#0x40
	push	ar7
	lcall	___memcpy
	pop	ar7
00102$:
;	./src/RF24.c:517: if (child <= 6)
	mov	a,r7
	add	a,#0xff - 0x06
	jnc	00123$
	ret
00123$:
;	./src/RF24.c:521: if (child < 2)
	cjne	r7,#0x02,00124$
00124$:
	jnc	00104$
;	./src/RF24.c:522: write_registers(child_pipe[child], address, 5);
	mov	a,r7
	mov	dptr,#_child_pipe
	movc	a,@a+dptr
	mov	r6,a
	mov	_write_registers_PARM_2,_openReadingPipe_PARM_2
	mov	(_write_registers_PARM_2 + 1),(_openReadingPipe_PARM_2 + 1)
	mov	(_write_registers_PARM_2 + 2),(_openReadingPipe_PARM_2 + 2)
	mov	_write_registers_PARM_3,#0x05
	mov	dpl,r6
	push	ar7
	lcall	_write_registers
	pop	ar7
	sjmp	00105$
00104$:
;	./src/RF24.c:524: write_registers(child_pipe[child], address, 1);
	mov	a,r7
	mov	dptr,#_child_pipe
	movc	a,@a+dptr
	mov	r6,a
	mov	_write_registers_PARM_2,_openReadingPipe_PARM_2
	mov	(_write_registers_PARM_2 + 1),(_openReadingPipe_PARM_2 + 1)
	mov	(_write_registers_PARM_2 + 2),(_openReadingPipe_PARM_2 + 2)
	mov	_write_registers_PARM_3,#0x01
	mov	dpl,r6
	push	ar7
	lcall	_write_registers
	pop	ar7
00105$:
;	./src/RF24.c:526: write_register(child_payload_size[child], payload_size);
	mov	a,r7
	mov	dptr,#_child_payload_size
	movc	a,@a+dptr
	mov	r6,a
	mov	_write_register_PARM_2,_payload_size
	mov	dpl,r6
	push	ar7
	lcall	_write_register
;	./src/RF24.c:531: write_register(EN_RXADDR, read_register(EN_RXADDR) | _BV(child_pipe_enable[child]));
	mov	dpl,#0x02
	lcall	_read_register
	mov	r6,dpl
	pop	ar7
	mov	a,r7
	mov	dptr,#_child_pipe_enable
	movc	a,@a+dptr
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00128$
00126$:
	add	a,acc
00128$:
	djnz	b,00126$
	orl	a,r6
	mov	_write_register_PARM_2,a
	mov	dpl,#0x02
;	./src/RF24.c:533: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'toggle_features'
;------------------------------------------------------------
;	./src/RF24.c:537: void toggle_features(void)
;	-----------------------------------------
;	 function toggle_features
;	-----------------------------------------
_toggle_features:
;	./src/RF24.c:539: csn(LOW);
	mov	dpl,#0x00
	lcall	_csn
;	./src/RF24.c:540: spi_transfer(ACTIVATE);
	mov	dpl,#0x50
	lcall	_spi_transfer
;	./src/RF24.c:541: spi_transfer(0x73);
	mov	dpl,#0x73
	lcall	_spi_transfer
;	./src/RF24.c:542: csn(HIGH);
	mov	dpl,#0x01
;	./src/RF24.c:543: }
	ljmp	_csn
;------------------------------------------------------------
;Allocation info for local variables in function 'enableDynamicPayloads'
;------------------------------------------------------------
;	./src/RF24.c:547: void enableDynamicPayloads(void)
;	-----------------------------------------
;	 function enableDynamicPayloads
;	-----------------------------------------
_enableDynamicPayloads:
;	./src/RF24.c:550: write_register(FEATURE, read_register(FEATURE) | _BV(EN_DPL));
	mov	dpl,#0x1d
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x04
	mov	_write_register_PARM_2,a
	mov	dpl,#0x1d
	lcall	_write_register
;	./src/RF24.c:553: if (!read_register(FEATURE))
	mov	dpl,#0x1d
	lcall	_read_register
	mov	a,dpl
	jnz	00102$
;	./src/RF24.c:556: toggle_features();
	lcall	_toggle_features
;	./src/RF24.c:557: write_register(FEATURE, read_register(FEATURE) | _BV(EN_DPL));
	mov	dpl,#0x1d
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x04
	mov	_write_register_PARM_2,a
	mov	dpl,#0x1d
	lcall	_write_register
00102$:
;	./src/RF24.c:564: write_register(DYNPD, read_register(DYNPD) | _BV(DPL_P5) | _BV(DPL_P4) | _BV(DPL_P3) | _BV(DPL_P2) | _BV(DPL_P1) | _BV(DPL_P0));
	mov	dpl,#0x1c
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x3f
	mov	_write_register_PARM_2,a
	mov	dpl,#0x1c
	lcall	_write_register
;	./src/RF24.c:566: dynamic_payloads_enabled = TRUE;
	mov	_dynamic_payloads_enabled,#0x01
;	./src/RF24.c:567: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableAckPayload'
;------------------------------------------------------------
;	./src/RF24.c:571: void enableAckPayload(void)
;	-----------------------------------------
;	 function enableAckPayload
;	-----------------------------------------
_enableAckPayload:
;	./src/RF24.c:577: write_register(FEATURE, read_register(FEATURE) | _BV(EN_ACK_PAY) | _BV(EN_DPL));
	mov	dpl,#0x1d
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x06
	mov	_write_register_PARM_2,a
	mov	dpl,#0x1d
	lcall	_write_register
;	./src/RF24.c:580: if (!read_register(FEATURE))
	mov	dpl,#0x1d
	lcall	_read_register
	mov	a,dpl
	jnz	00102$
;	./src/RF24.c:583: toggle_features();
	lcall	_toggle_features
;	./src/RF24.c:584: write_register(FEATURE, read_register(FEATURE) | _BV(EN_ACK_PAY) | _BV(EN_DPL));
	mov	dpl,#0x1d
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x06
	mov	_write_register_PARM_2,a
	mov	dpl,#0x1d
	lcall	_write_register
00102$:
;	./src/RF24.c:591: write_register(DYNPD, read_register(DYNPD) | _BV(DPL_P1) | _BV(DPL_P0));
	mov	dpl,#0x1c
	lcall	_read_register
	mov	a,dpl
	orl	a,#0x03
	mov	_write_register_PARM_2,a
	mov	dpl,#0x1c
;	./src/RF24.c:592: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'writeAckPayload'
;------------------------------------------------------------
;buf                       Allocated with name '_writeAckPayload_PARM_2'
;len                       Allocated with name '_writeAckPayload_PARM_3'
;pipe                      Allocated to registers r7 
;current                   Allocated to registers r4 r5 r6 
;max_payload_size          Allocated to registers 
;data_len                  Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:596: void writeAckPayload(uint8_t pipe, const void *buf, uint8_t len)
;	-----------------------------------------
;	 function writeAckPayload
;	-----------------------------------------
_writeAckPayload:
	mov	r7,dpl
;	./src/RF24.c:598: const uint8_t *current = (uint8_t *)buf;
	mov	r4,_writeAckPayload_PARM_2
	mov	r5,(_writeAckPayload_PARM_2 + 1)
	mov	r6,(_writeAckPayload_PARM_2 + 2)
;	./src/RF24.c:601: csn(LOW);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_csn
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/RF24.c:602: spi_transfer(W_ACK_PAYLOAD | (pipe & 0x07));
	mov	a,#0x07
	anl	a,r7
	orl	a,#0xa8
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_transfer
;	./src/RF24.c:604: data_len = min(len, max_payload_size);
	mov	_min_PARM_2,#0x20
	mov	dpl,_writeAckPayload_PARM_3
	lcall	_min
	mov	r7,dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/RF24.c:605: while (data_len--)
00101$:
	mov	ar3,r7
	dec	r7
	mov	a,r3
	jz	00103$
;	./src/RF24.c:606: spi_transfer(*current++);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	./src/RF24.c:608: csn(HIGH);
	mov	dpl,#0x01
;	./src/RF24.c:609: }
	ljmp	_csn
;------------------------------------------------------------
;Allocation info for local variables in function 'isAckPayloadAvailable'
;------------------------------------------------------------
;result                    Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:613: uint8_t isAckPayloadAvailable(void)
;	-----------------------------------------
;	 function isAckPayloadAvailable
;	-----------------------------------------
_isAckPayloadAvailable:
;	./src/RF24.c:615: uint8_t result = ack_payload_available;
	mov	dpl,_ack_payload_available
;	./src/RF24.c:616: ack_payload_available = FALSE;
	mov	_ack_payload_available,#0x00
;	./src/RF24.c:617: return result;
;	./src/RF24.c:618: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isPVariant'
;------------------------------------------------------------
;	./src/RF24.c:622: uint8_t isPVariant(void)
;	-----------------------------------------
;	 function isPVariant
;	-----------------------------------------
_isPVariant:
;	./src/RF24.c:624: return p_variant;
	mov	dpl,_p_variant
;	./src/RF24.c:625: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setAutoAck'
;------------------------------------------------------------
;enable                    Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:629: void setAutoAck(uint8_t enable)
;	-----------------------------------------
;	 function setAutoAck
;	-----------------------------------------
_setAutoAck:
;	./src/RF24.c:631: if (enable)
	mov	a,dpl
	jz	00102$
;	./src/RF24.c:632: write_register(EN_AA, 0x3F);
	mov	_write_register_PARM_2,#0x3f
	mov	dpl,#0x01
	ljmp	_write_register
00102$:
;	./src/RF24.c:634: write_register(EN_AA, 0);
	mov	_write_register_PARM_2,#0x00
	mov	dpl,#0x01
;	./src/RF24.c:635: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setAutoAckPipe'
;------------------------------------------------------------
;enable                    Allocated with name '_setAutoAckPipe_PARM_2'
;pipe                      Allocated to registers r7 
;en_aa                     Allocated to registers r5 
;------------------------------------------------------------
;	./src/RF24.c:639: void setAutoAckPipe(uint8_t pipe, uint8_t enable)
;	-----------------------------------------
;	 function setAutoAckPipe
;	-----------------------------------------
_setAutoAckPipe:
;	./src/RF24.c:641: if (pipe <= 6)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x06
	jc	00106$
;	./src/RF24.c:643: uint8_t en_aa = read_register(EN_AA);
	mov	dpl,#0x01
	push	ar7
	lcall	_read_register
	mov	r6,dpl
	pop	ar7
;	./src/RF24.c:644: if (enable)
	mov	a,_setAutoAckPipe_PARM_2
	jz	00102$
;	./src/RF24.c:646: en_aa |= _BV(pipe);
	mov	ar5,r7
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00122$
00120$:
	add	a,acc
00122$:
	djnz	b,00120$
	mov	r5,a
	mov	a,r6
	orl	ar5,a
	sjmp	00103$
00102$:
;	./src/RF24.c:650: en_aa &= ~_BV(pipe);
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00125$
00123$:
	add	a,acc
00125$:
	djnz	b,00123$
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	r5,a
00103$:
;	./src/RF24.c:652: write_register(EN_AA, en_aa);
	mov	_write_register_PARM_2,r5
	mov	dpl,#0x01
;	./src/RF24.c:654: }
	ljmp	_write_register
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'testCarrier'
;------------------------------------------------------------
;	./src/RF24.c:658: uint8_t testCarrier(void)
;	-----------------------------------------
;	 function testCarrier
;	-----------------------------------------
_testCarrier:
;	./src/RF24.c:660: return (read_register(CD) & 1);
	mov	dpl,#0x09
	lcall	_read_register
	mov	a,dpl
	anl	a,#0x01
	mov	dpl,a
;	./src/RF24.c:661: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'testRPD'
;------------------------------------------------------------
;	./src/RF24.c:665: uint8_t testRPD(void)
;	-----------------------------------------
;	 function testRPD
;	-----------------------------------------
_testRPD:
;	./src/RF24.c:667: return (read_register(RPD) & 1);
	mov	dpl,#0x09
	lcall	_read_register
	mov	a,dpl
	anl	a,#0x01
	mov	dpl,a
;	./src/RF24.c:668: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPALevel'
;------------------------------------------------------------
;level                     Allocated to registers r7 
;setup                     Allocated to registers r6 
;------------------------------------------------------------
;	./src/RF24.c:672: void setPALevel(rf24_pa_dbm_e level)
;	-----------------------------------------
;	 function setPALevel
;	-----------------------------------------
_setPALevel:
	mov	r7,dpl
;	./src/RF24.c:674: uint8_t setup = read_register(RF_SETUP);
	mov	dpl,#0x06
	push	ar7
	lcall	_read_register
	mov	a,dpl
	pop	ar7
;	./src/RF24.c:675: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH));
	anl	a,#0xf9
	mov	r6,a
;	./src/RF24.c:678: if (level == RF24_PA_MAX)
	cjne	r7,#0x03,00113$
;	./src/RF24.c:680: setup |= (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH));
	orl	ar6,#0x06
	sjmp	00114$
00113$:
;	./src/RF24.c:682: else if (level == RF24_PA_HIGH)
	cjne	r7,#0x02,00110$
;	./src/RF24.c:684: setup |= _BV(RF_PWR_HIGH);
	orl	ar6,#0x04
	sjmp	00114$
00110$:
;	./src/RF24.c:686: else if (level == RF24_PA_LOW)
	cjne	r7,#0x01,00107$
;	./src/RF24.c:688: setup |= _BV(RF_PWR_LOW);
	orl	ar6,#0x02
	sjmp	00114$
00107$:
;	./src/RF24.c:690: else if (level == RF24_PA_MIN)
	mov	a,r7
	jz	00114$
;	./src/RF24.c:694: else if (level == RF24_PA_ERROR)
	cjne	r7,#0x04,00114$
;	./src/RF24.c:697: setup |= (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH));
	orl	ar6,#0x06
00114$:
;	./src/RF24.c:700: write_register(RF_SETUP, setup);
	mov	_write_register_PARM_2,r6
	mov	dpl,#0x06
;	./src/RF24.c:701: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'getPALevel'
;------------------------------------------------------------
;result                    Allocated to registers r6 
;power                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:705: rf24_pa_dbm_e getPALevel(void)
;	-----------------------------------------
;	 function getPALevel
;	-----------------------------------------
_getPALevel:
;	./src/RF24.c:708: uint8_t power = read_register(RF_SETUP) & (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH));
	mov	dpl,#0x06
	lcall	_read_register
	mov	a,dpl
	anl	a,#0x06
	mov	r7,a
;	./src/RF24.c:711: if (power == (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)))
	cjne	r7,#0x06,00108$
;	./src/RF24.c:713: result = RF24_PA_MAX;
	mov	r6,#0x03
	sjmp	00109$
00108$:
;	./src/RF24.c:715: else if (power == _BV(RF_PWR_HIGH))
	cjne	r7,#0x04,00105$
;	./src/RF24.c:717: result = RF24_PA_HIGH;
	mov	r6,#0x02
	sjmp	00109$
00105$:
;	./src/RF24.c:719: else if (power == _BV(RF_PWR_LOW))
	cjne	r7,#0x02,00102$
;	./src/RF24.c:721: result = RF24_PA_LOW;
	mov	r6,#0x01
	sjmp	00109$
00102$:
;	./src/RF24.c:725: result = RF24_PA_MIN;
	mov	r6,#0x00
00109$:
;	./src/RF24.c:728: return result;
	mov	dpl,r6
;	./src/RF24.c:729: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setDataRate'
;------------------------------------------------------------
;speed                     Allocated to registers r7 
;result                    Allocated to registers r6 
;setup                     Allocated to registers r5 
;------------------------------------------------------------
;	./src/RF24.c:733: uint8_t setDataRate(rf24_datarate_e speed)
;	-----------------------------------------
;	 function setDataRate
;	-----------------------------------------
_setDataRate:
	mov	r7,dpl
;	./src/RF24.c:735: uint8_t result = FALSE;
	mov	r6,#0x00
;	./src/RF24.c:736: uint8_t setup = read_register(RF_SETUP);
	mov	dpl,#0x06
	push	ar7
	push	ar6
	lcall	_read_register
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	./src/RF24.c:739: wide_band = FALSE;
	mov	_wide_band,#0x00
;	./src/RF24.c:740: setup &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH));
	anl	ar5,#0xd7
;	./src/RF24.c:741: if (speed == RF24_250KBPS)
	cjne	r7,#0x02,00105$
;	./src/RF24.c:745: wide_band = FALSE;
	mov	_wide_band,#0x00
;	./src/RF24.c:746: setup |= _BV(RF_DR_LOW);
	orl	ar5,#0x20
	sjmp	00106$
00105$:
;	./src/RF24.c:752: if (speed == RF24_2MBPS)
	cjne	r7,#0x01,00102$
;	./src/RF24.c:754: wide_band = TRUE;
	mov	_wide_band,#0x01
;	./src/RF24.c:755: setup |= _BV(RF_DR_HIGH);
	orl	ar5,#0x08
	sjmp	00106$
00102$:
;	./src/RF24.c:760: wide_band = FALSE;
	mov	_wide_band,#0x00
00106$:
;	./src/RF24.c:763: write_register(RF_SETUP, setup);
	mov	_write_register_PARM_2,r5
	mov	dpl,#0x06
	push	ar6
	push	ar5
	lcall	_write_register
;	./src/RF24.c:766: if (read_register(RF_SETUP) == setup)
	mov	dpl,#0x06
	lcall	_read_register
	mov	r7,dpl
	pop	ar5
	pop	ar6
	mov	a,r7
	cjne	a,ar5,00108$
;	./src/RF24.c:768: result = TRUE;
	mov	r6,#0x01
	sjmp	00109$
00108$:
;	./src/RF24.c:772: wide_band = FALSE;
	mov	_wide_band,#0x00
00109$:
;	./src/RF24.c:775: return result;
	mov	dpl,r6
;	./src/RF24.c:776: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDataRate'
;------------------------------------------------------------
;result                    Allocated to registers r6 
;dr                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:780: rf24_datarate_e getDataRate(void)
;	-----------------------------------------
;	 function getDataRate
;	-----------------------------------------
_getDataRate:
;	./src/RF24.c:783: uint8_t dr = read_register(RF_SETUP) & (_BV(RF_DR_LOW) | _BV(RF_DR_HIGH));
	mov	dpl,#0x06
	lcall	_read_register
	mov	a,dpl
	anl	a,#0x28
	mov	r7,a
;	./src/RF24.c:787: if (dr == _BV(RF_DR_LOW))
	cjne	r7,#0x20,00105$
;	./src/RF24.c:790: result = RF24_250KBPS;
	mov	r6,#0x02
	sjmp	00106$
00105$:
;	./src/RF24.c:792: else if (dr == _BV(RF_DR_HIGH))
	cjne	r7,#0x08,00102$
;	./src/RF24.c:795: result = RF24_2MBPS;
	mov	r6,#0x01
	sjmp	00106$
00102$:
;	./src/RF24.c:800: result = RF24_1MBPS;
	mov	r6,#0x00
00106$:
;	./src/RF24.c:802: return result;
	mov	dpl,r6
;	./src/RF24.c:803: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setCRCLength'
;------------------------------------------------------------
;length                    Allocated to registers r7 
;config                    Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:807: void setCRCLength(rf24_crclength_e length)
;	-----------------------------------------
;	 function setCRCLength
;	-----------------------------------------
_setCRCLength:
	mov	r7,dpl
;	./src/RF24.c:809: uint8_t config = read_register(CONFIG) & ~(_BV(CRCO) | _BV(EN_CRC));
	mov	dpl,#0x00
	push	ar7
	lcall	_read_register
	mov	a,dpl
	pop	ar7
	anl	a,#0xf3
	mov	r6,a
;	./src/RF24.c:812: if (length == RF24_CRC_DISABLED)
	mov	a,r7
	jz	00106$
;	./src/RF24.c:816: else if (length == RF24_CRC_8)
	cjne	r7,#0x01,00102$
;	./src/RF24.c:818: config |= _BV(EN_CRC);
	orl	ar6,#0x08
	sjmp	00106$
00102$:
;	./src/RF24.c:822: config |= _BV(EN_CRC);
	mov	a,#0x08
	orl	a,r6
;	./src/RF24.c:823: config |= _BV(CRCO);
	orl	a,#0x04
	mov	r6,a
00106$:
;	./src/RF24.c:825: write_register(CONFIG, config);
	mov	_write_register_PARM_2,r6
	mov	dpl,#0x00
;	./src/RF24.c:826: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'getCRCLength'
;------------------------------------------------------------
;result                    Allocated to registers r7 
;config                    Allocated to registers r6 
;------------------------------------------------------------
;	./src/RF24.c:830: rf24_crclength_e getCRCLength(void)
;	-----------------------------------------
;	 function getCRCLength
;	-----------------------------------------
_getCRCLength:
;	./src/RF24.c:832: rf24_crclength_e result = RF24_CRC_DISABLED;
	mov	r7,#0x00
;	./src/RF24.c:833: uint8_t config = read_register(CONFIG) & (_BV(CRCO) | _BV(EN_CRC));
	mov	dpl,#0x00
	push	ar7
	lcall	_read_register
	mov	a,dpl
	pop	ar7
	anl	a,#0x0c
;	./src/RF24.c:835: if (config & _BV(EN_CRC))
	mov	r6,a
	jnb	acc.3,00105$
;	./src/RF24.c:837: if (config & _BV(CRCO))
	mov	a,r6
	jnb	acc.2,00102$
;	./src/RF24.c:838: result = RF24_CRC_16;
	mov	r7,#0x02
	sjmp	00105$
00102$:
;	./src/RF24.c:840: result = RF24_CRC_8;
	mov	r7,#0x01
00105$:
;	./src/RF24.c:843: return result;
	mov	dpl,r7
;	./src/RF24.c:844: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disableCRC'
;------------------------------------------------------------
;disable                   Allocated to registers 
;------------------------------------------------------------
;	./src/RF24.c:848: void disableCRC(void)
;	-----------------------------------------
;	 function disableCRC
;	-----------------------------------------
_disableCRC:
;	./src/RF24.c:850: uint8_t disable = read_register(CONFIG) & ~_BV(EN_CRC);
	mov	dpl,#0x00
	lcall	_read_register
	mov	a,dpl
	anl	a,#0xf7
	mov	_write_register_PARM_2,a
;	./src/RF24.c:851: write_register(CONFIG, disable);
	mov	dpl,#0x00
;	./src/RF24.c:852: }
	ljmp	_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setRetries'
;------------------------------------------------------------
;count                     Allocated with name '_setRetries_PARM_2'
;delay                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/RF24.c:855: void setRetries(uint8_t delay, uint8_t count)
;	-----------------------------------------
;	 function setRetries
;	-----------------------------------------
_setRetries:
;	./src/RF24.c:857: write_register(SETUP_RETR, (delay & 0xf) << ARD | (count & 0xf) << ARC);
	mov	a,dpl
	anl	a,#0x0f
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,_setRetries_PARM_2
	anl	a,#0x0f
	orl	a,r7
	mov	_write_register_PARM_2,a
	mov	dpl,#0x04
;	./src/RF24.c:858: }
	ljmp	_write_register
	.area CSEG    (CODE)
	.area CONST   (CODE)
_child_pipe:
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
_child_payload_size:
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
_child_pipe_enable:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
