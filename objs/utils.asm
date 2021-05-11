;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.4 #12274 (Linux)
;--------------------------------------------------------
	.module utils
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _crc16_PARM_3
	.globl _crc16_PARM_2
	.globl _make_packet_checksum_PARM_2
	.globl _UID_byte
	.globl _Send_Data_To_UART0
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
	.globl _hexTab
	.globl _print_byte
	.globl _make_packet_checksum
	.globl _get_device_id
	.globl _crc16
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
_hexTab::
	.ds 16
_get_device_id_uuid_65536_51:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_make_packet_checksum_PARM_2:
	.ds 1
_make_packet_checksum_chksum_65536_47:
	.ds 1
	.area	OSEG    (OVR,DATA)
_crc16_PARM_2:
	.ds 1
_crc16_PARM_3:
	.ds 4
_crc16_i_65536_55:
	.ds 2
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
;	./src/utils.c:10: uint8_t hexTab[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', };
	mov	_hexTab,#0x30
	mov	(_hexTab + 0x0001),#0x31
	mov	(_hexTab + 0x0002),#0x32
	mov	(_hexTab + 0x0003),#0x33
	mov	(_hexTab + 0x0004),#0x34
	mov	(_hexTab + 0x0005),#0x35
	mov	(_hexTab + 0x0006),#0x36
	mov	(_hexTab + 0x0007),#0x37
	mov	(_hexTab + 0x0008),#0x38
	mov	(_hexTab + 0x0009),#0x39
	mov	(_hexTab + 0x000a),#0x61
	mov	(_hexTab + 0x000b),#0x62
	mov	(_hexTab + 0x000c),#0x63
	mov	(_hexTab + 0x000d),#0x64
	mov	(_hexTab + 0x000e),#0x65
	mov	(_hexTab + 0x000f),#0x66
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
;Allocation info for local variables in function 'print_byte'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/utils.c:12: void print_byte( uint8_t value )
;	-----------------------------------------
;	 function print_byte
;	-----------------------------------------
_print_byte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/utils.c:15: Send_Data_To_UART0( hexTab[(value >> 4)& 0xF] );
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
	anl	ar6,#0x0f
	mov	a,r6
	add	a,#_hexTab
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_Send_Data_To_UART0
	pop	ar7
;	./src/utils.c:16: Send_Data_To_UART0( hexTab[value & 0xF] );
	anl	ar7,#0x0f
	mov	a,r7
	add	a,#_hexTab
	mov	r1,a
	mov	dpl,@r1
	lcall	_Send_Data_To_UART0
;	./src/utils.c:17: Send_Data_To_UART0(' ');
	mov	dpl,#0x20
;	./src/utils.c:18: }
	ljmp	_Send_Data_To_UART0
;------------------------------------------------------------
;Allocation info for local variables in function 'UID_byte'
;------------------------------------------------------------
;Addr                      Allocated to registers r7 
;temp                      Allocated to registers 
;------------------------------------------------------------
;	./src/utils.c:20: uint8_t UID_byte(uint8_t Addr)
;	-----------------------------------------
;	 function UID_byte
;	-----------------------------------------
_UID_byte:
	mov	r7,dpl
;	./src/utils.c:23: set_IAPEN;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_CHPCON,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	./src/utils.c:24: IAPAL = Addr;
	mov	_IAPAL,r7
;	./src/utils.c:25: IAPAH = 0x00;
	mov	_IAPAH,#0x00
;	./src/utils.c:26: IAPCN = READ_UID;
	mov	_IAPCN,#0x04
;	./src/utils.c:27: set_IAPGO;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	./src/utils.c:28: temp = IAPFD;
	mov	dpl,_IAPFD
;	./src/utils.c:29: clr_IAPEN;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	anl	_CHPCON,#0xfe
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	./src/utils.c:30: return temp;
;	./src/utils.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'make_packet_checksum'
;------------------------------------------------------------
;length                    Allocated with name '_make_packet_checksum_PARM_2'
;packet                    Allocated to registers 
;chksum                    Allocated with name '_make_packet_checksum_chksum_65536_47'
;ptr                       Allocated to registers r5 r6 r7 
;count                     Allocated to registers r3 
;------------------------------------------------------------
;	./src/utils.c:33: uint8_t make_packet_checksum(uint8_t *packet, uint8_t length)
;	-----------------------------------------
;	 function make_packet_checksum
;	-----------------------------------------
_make_packet_checksum:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/utils.c:35: uint8_t chksum = 0;
	mov	_make_packet_checksum_chksum_65536_47,#0x00
;	./src/utils.c:39: for (count = 0; count < length - 1; count++)
	mov	r3,#0x00
00103$:
	mov	r1,_make_packet_checksum_PARM_2
	mov	r2,#0x00
	dec	r1
	cjne	r1,#0xff,00116$
	dec	r2
00116$:
	mov	ar0,r3
	mov	r4,#0x00
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	./src/utils.c:41: chksum += *ptr++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r4
	add	a,_make_packet_checksum_chksum_65536_47
	mov	_make_packet_checksum_chksum_65536_47,a
;	./src/utils.c:39: for (count = 0; count < length - 1; count++)
	inc	r3
	sjmp	00103$
00101$:
;	./src/utils.c:43: return ~chksum;
	mov	a,_make_packet_checksum_chksum_65536_47
	cpl	a
	mov	dpl,a
;	./src/utils.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_device_id'
;------------------------------------------------------------
;uuid                      Allocated with name '_get_device_id_uuid_65536_51'
;i                         Allocated to registers r5 
;crc                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/utils.c:45: uint16_t get_device_id(void)
;	-----------------------------------------
;	 function get_device_id
;	-----------------------------------------
_get_device_id:
;	./src/utils.c:48: uint16_t crc = 0x00;
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/utils.c:50: for (i = 0; i < 0x0b; i++)
	mov	r5,#0x00
00102$:
;	./src/utils.c:52: uuid = UID_byte(i);
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_UID_byte
;	./src/utils.c:53: print_byte(uuid);
	mov	r4,dpl
	mov	_get_device_id_uuid_65536_51,r4
	lcall	_print_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/utils.c:54: crc = crc16(&uuid, 1, crc);
	mov	_crc16_PARM_3,r6
	mov	(_crc16_PARM_3 + 1),r7
	mov	(_crc16_PARM_3 + 2),#0x00
	mov	(_crc16_PARM_3 + 3),#0x00
	mov	_crc16_PARM_2,#0x01
	mov	dptr,#_get_device_id_uuid_65536_51
	mov	b,#0x40
	push	ar5
	lcall	_crc16
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
;	./src/utils.c:50: for (i = 0; i < 0x0b; i++)
	inc	r5
	cjne	r5,#0x0b,00115$
00115$:
	jc	00102$
;	./src/utils.c:56: return crc;
	mov	dpl,r6
	mov	dph,r7
;	./src/utils.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'crc16'
;------------------------------------------------------------
;num                       Allocated with name '_crc16_PARM_2'
;crc                       Allocated with name '_crc16_PARM_3'
;addr                      Allocated to registers 
;i                         Allocated with name '_crc16_i_65536_55'
;------------------------------------------------------------
;	./src/utils.c:59: uint16_t crc16(char *addr, uint8_t num, uint32_t crc)
;	-----------------------------------------
;	 function crc16
;	-----------------------------------------
_crc16:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/utils.c:74: return (crc);							 /* Return updated CRC */
	mov	r4,_crc16_PARM_2
00109$:
;	./src/utils.c:63: for (; num > 0; num--) /* Step through bytes in memory */
	mov	a,r4
	jz	00104$
;	./src/utils.c:65: crc = crc ^ (*addr++ << 8); /* Fetch byte from memory, XOR into CRC top byte*/
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	ar2,r3
	mov	r3,#0x00
	mov	ar0,r3
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r0
	xrl	_crc16_PARM_3,a
	mov	a,r1
	xrl	(_crc16_PARM_3 + 1),a
	mov	a,r2
	xrl	(_crc16_PARM_3 + 2),a
	mov	a,r3
	xrl	(_crc16_PARM_3 + 3),a
;	./src/utils.c:66: for (i = 0; i < 8; i++)		/* Prepare to rotate 8 bits */
	mov	_crc16_i_65536_55,#0x08
	mov	(_crc16_i_65536_55 + 1),#0x00
00107$:
;	./src/utils.c:68: crc = crc << 1;					 /* rotate */
	mov	a,_crc16_PARM_3
	add	a,_crc16_PARM_3
	mov	_crc16_PARM_3,a
	mov	a,(_crc16_PARM_3 + 1)
	rlc	a
	mov	(_crc16_PARM_3 + 1),a
	mov	a,(_crc16_PARM_3 + 2)
	rlc	a
	mov	(_crc16_PARM_3 + 2),a
	mov	a,(_crc16_PARM_3 + 3)
	rlc	a
	mov	(_crc16_PARM_3 + 3),a
;	./src/utils.c:69: if (crc & 0x10000)				 /* bit 15 was set (now bit 16)... */
	mov	a,(_crc16_PARM_3 + 2)
	jnb	acc.0,00102$
;	./src/utils.c:70: crc = (crc ^ poly) & 0xFFFF; /* XOR with XMODEM polynomic */
	mov	a,#0x21
	xrl	a,_crc16_PARM_3
	mov	r0,a
	mov	a,#0x10
	xrl	a,(_crc16_PARM_3 + 1)
	mov	r1,a
	mov	r2,(_crc16_PARM_3 + 2)
	mov	r3,(_crc16_PARM_3 + 3)
	mov	_crc16_PARM_3,r0
	mov	(_crc16_PARM_3 + 1),r1
	mov	(_crc16_PARM_3 + 2),#0x00
	mov	(_crc16_PARM_3 + 3),#0x00
00102$:
	dec	_crc16_i_65536_55
	mov	a,#0xff
	cjne	a,_crc16_i_65536_55,00139$
	dec	(_crc16_i_65536_55 + 1)
00139$:
;	./src/utils.c:66: for (i = 0; i < 8; i++)		/* Prepare to rotate 8 bits */
	mov	a,_crc16_i_65536_55
	orl	a,(_crc16_i_65536_55 + 1)
	jnz	00107$
;	./src/utils.c:63: for (; num > 0; num--) /* Step through bytes in memory */
	dec	r4
	sjmp	00109$
00104$:
;	./src/utils.c:74: return (crc);							 /* Return updated CRC */
	mov	dpl,_crc16_PARM_3
	mov	dph,(_crc16_PARM_3 + 1)
;	./src/utils.c:75: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
