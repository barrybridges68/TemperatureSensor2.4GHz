                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.4 #12274 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module utils
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _crc16_PARM_3
                                     12 	.globl _crc16_PARM_2
                                     13 	.globl _make_packet_checksum_PARM_2
                                     14 	.globl _UID_byte
                                     15 	.globl _Send_Data_To_UART0
                                     16 	.globl _MOSI
                                     17 	.globl _P00
                                     18 	.globl _MISO
                                     19 	.globl _P01
                                     20 	.globl _RXD_1
                                     21 	.globl _P02
                                     22 	.globl _P03
                                     23 	.globl _STADC
                                     24 	.globl _P04
                                     25 	.globl _P05
                                     26 	.globl _TXD
                                     27 	.globl _P06
                                     28 	.globl _RXD
                                     29 	.globl _P07
                                     30 	.globl _IT0
                                     31 	.globl _IE0
                                     32 	.globl _IT1
                                     33 	.globl _IE1
                                     34 	.globl _TR0
                                     35 	.globl _TF0
                                     36 	.globl _TR1
                                     37 	.globl _TF1
                                     38 	.globl _P10
                                     39 	.globl _P11
                                     40 	.globl _P12
                                     41 	.globl _SCL
                                     42 	.globl _P13
                                     43 	.globl _SDA
                                     44 	.globl _P14
                                     45 	.globl _P15
                                     46 	.globl _TXD_1
                                     47 	.globl _P16
                                     48 	.globl _P17
                                     49 	.globl _RI
                                     50 	.globl _TI
                                     51 	.globl _RB8
                                     52 	.globl _TB8
                                     53 	.globl _REN
                                     54 	.globl _SM2
                                     55 	.globl _SM1
                                     56 	.globl _FE
                                     57 	.globl _SM0
                                     58 	.globl _P20
                                     59 	.globl _EX0
                                     60 	.globl _ET0
                                     61 	.globl _EX1
                                     62 	.globl _ET1
                                     63 	.globl _ES
                                     64 	.globl _EBOD
                                     65 	.globl _EADC
                                     66 	.globl _EA
                                     67 	.globl _P30
                                     68 	.globl _PX0
                                     69 	.globl _PT0
                                     70 	.globl _PX1
                                     71 	.globl _PT1
                                     72 	.globl _PS
                                     73 	.globl _PBOD
                                     74 	.globl _PADC
                                     75 	.globl _I2CPX
                                     76 	.globl _AA
                                     77 	.globl _SI
                                     78 	.globl _STO
                                     79 	.globl _STA
                                     80 	.globl _I2CEN
                                     81 	.globl _CM_RL2
                                     82 	.globl _TR2
                                     83 	.globl _TF2
                                     84 	.globl _P
                                     85 	.globl _OV
                                     86 	.globl _RS0
                                     87 	.globl _RS1
                                     88 	.globl _F0
                                     89 	.globl _AC
                                     90 	.globl _CY
                                     91 	.globl _CLRPWM
                                     92 	.globl _PWMF
                                     93 	.globl _LOAD
                                     94 	.globl _PWMRUN
                                     95 	.globl _ADCHS0
                                     96 	.globl _ADCHS1
                                     97 	.globl _ADCHS2
                                     98 	.globl _ADCHS3
                                     99 	.globl _ETGSEL0
                                    100 	.globl _ETGSEL1
                                    101 	.globl _ADCS
                                    102 	.globl _ADCF
                                    103 	.globl _RI_1
                                    104 	.globl _TI_1
                                    105 	.globl _RB8_1
                                    106 	.globl _TB8_1
                                    107 	.globl _REN_1
                                    108 	.globl _SM2_1
                                    109 	.globl _SM1_1
                                    110 	.globl _FE_1
                                    111 	.globl _SM0_1
                                    112 	.globl _EIPH1
                                    113 	.globl _EIP1
                                    114 	.globl _PMD
                                    115 	.globl _PMEN
                                    116 	.globl _PDTCNT
                                    117 	.globl _PDTEN
                                    118 	.globl _SCON_1
                                    119 	.globl _EIPH
                                    120 	.globl _AINDIDS
                                    121 	.globl _SPDR
                                    122 	.globl _SPSR
                                    123 	.globl _SPCR2
                                    124 	.globl _SPCR
                                    125 	.globl _CAPCON4
                                    126 	.globl _CAPCON3
                                    127 	.globl _B
                                    128 	.globl _EIP
                                    129 	.globl _C2H
                                    130 	.globl _C2L
                                    131 	.globl _PIF
                                    132 	.globl _PIPEN
                                    133 	.globl _PINEN
                                    134 	.globl _PICON
                                    135 	.globl _ADCCON0
                                    136 	.globl _C1H
                                    137 	.globl _C1L
                                    138 	.globl _C0H
                                    139 	.globl _C0L
                                    140 	.globl _ADCDLY
                                    141 	.globl _ADCCON2
                                    142 	.globl _ADCCON1
                                    143 	.globl _ACC
                                    144 	.globl _PWMCON1
                                    145 	.globl _PIOCON0
                                    146 	.globl _PWM3L
                                    147 	.globl _PWM2L
                                    148 	.globl _PWM1L
                                    149 	.globl _PWM0L
                                    150 	.globl _PWMPL
                                    151 	.globl _PWMCON0
                                    152 	.globl _FBD
                                    153 	.globl _PNP
                                    154 	.globl _PWM3H
                                    155 	.globl _PWM2H
                                    156 	.globl _PWM1H
                                    157 	.globl _PWM0H
                                    158 	.globl _PWMPH
                                    159 	.globl _PSW
                                    160 	.globl _ADCMPH
                                    161 	.globl _ADCMPL
                                    162 	.globl _PWM5L
                                    163 	.globl _TH2
                                    164 	.globl _PWM4L
                                    165 	.globl _TL2
                                    166 	.globl _RCMP2H
                                    167 	.globl _RCMP2L
                                    168 	.globl _T2MOD
                                    169 	.globl _T2CON
                                    170 	.globl _TA
                                    171 	.globl _PIOCON1
                                    172 	.globl _RH3
                                    173 	.globl _PWM5H
                                    174 	.globl _RL3
                                    175 	.globl _PWM4H
                                    176 	.globl _T3CON
                                    177 	.globl _ADCRH
                                    178 	.globl _ADCRL
                                    179 	.globl _I2ADDR
                                    180 	.globl _I2CON
                                    181 	.globl _I2TOC
                                    182 	.globl _I2CLK
                                    183 	.globl _I2STAT
                                    184 	.globl _I2DAT
                                    185 	.globl _SADDR_1
                                    186 	.globl _SADEN_1
                                    187 	.globl _SADEN
                                    188 	.globl _IP
                                    189 	.globl _PWMINTC
                                    190 	.globl _IPH
                                    191 	.globl _P2S
                                    192 	.globl _P1SR
                                    193 	.globl _P1M2
                                    194 	.globl _P1S
                                    195 	.globl _P1M1
                                    196 	.globl _P0SR
                                    197 	.globl _P0M2
                                    198 	.globl _P0S
                                    199 	.globl _P0M1
                                    200 	.globl _P3
                                    201 	.globl _IAPCN
                                    202 	.globl _IAPFD
                                    203 	.globl _P3SR
                                    204 	.globl _P3M2
                                    205 	.globl _P3S
                                    206 	.globl _P3M1
                                    207 	.globl _BODCON1
                                    208 	.globl _WDCON
                                    209 	.globl _SADDR
                                    210 	.globl _IE
                                    211 	.globl _IAPAH
                                    212 	.globl _IAPAL
                                    213 	.globl _IAPUEN
                                    214 	.globl _IAPTRG
                                    215 	.globl _BODCON0
                                    216 	.globl _AUXR1
                                    217 	.globl _P2
                                    218 	.globl _CHPCON
                                    219 	.globl _EIE1
                                    220 	.globl _EIE
                                    221 	.globl _SBUF_1
                                    222 	.globl _SBUF
                                    223 	.globl _SCON
                                    224 	.globl _CKEN
                                    225 	.globl _CKSWT
                                    226 	.globl _CKDIV
                                    227 	.globl _CAPCON2
                                    228 	.globl _CAPCON1
                                    229 	.globl _CAPCON0
                                    230 	.globl _SFRS
                                    231 	.globl _P1
                                    232 	.globl _WKCON
                                    233 	.globl _CKCON
                                    234 	.globl _TH1
                                    235 	.globl _TH0
                                    236 	.globl _TL1
                                    237 	.globl _TL0
                                    238 	.globl _TMOD
                                    239 	.globl _TCON
                                    240 	.globl _PCON
                                    241 	.globl _RWK
                                    242 	.globl _RCTRIM1
                                    243 	.globl _RCTRIM0
                                    244 	.globl _DPH
                                    245 	.globl _DPL
                                    246 	.globl _SP
                                    247 	.globl _P0
                                    248 	.globl _hexTab
                                    249 	.globl _print_byte
                                    250 	.globl _make_packet_checksum
                                    251 	.globl _get_device_id
                                    252 	.globl _crc16
                                    253 ;--------------------------------------------------------
                                    254 ; special function registers
                                    255 ;--------------------------------------------------------
                                    256 	.area RSEG    (ABS,DATA)
      000000                        257 	.org 0x0000
                           000080   258 _P0	=	0x0080
                           000081   259 _SP	=	0x0081
                           000082   260 _DPL	=	0x0082
                           000083   261 _DPH	=	0x0083
                           000084   262 _RCTRIM0	=	0x0084
                           000085   263 _RCTRIM1	=	0x0085
                           000086   264 _RWK	=	0x0086
                           000087   265 _PCON	=	0x0087
                           000088   266 _TCON	=	0x0088
                           000089   267 _TMOD	=	0x0089
                           00008A   268 _TL0	=	0x008a
                           00008B   269 _TL1	=	0x008b
                           00008C   270 _TH0	=	0x008c
                           00008D   271 _TH1	=	0x008d
                           00008E   272 _CKCON	=	0x008e
                           00008F   273 _WKCON	=	0x008f
                           000090   274 _P1	=	0x0090
                           000091   275 _SFRS	=	0x0091
                           000092   276 _CAPCON0	=	0x0092
                           000093   277 _CAPCON1	=	0x0093
                           000094   278 _CAPCON2	=	0x0094
                           000095   279 _CKDIV	=	0x0095
                           000096   280 _CKSWT	=	0x0096
                           000097   281 _CKEN	=	0x0097
                           000098   282 _SCON	=	0x0098
                           000099   283 _SBUF	=	0x0099
                           00009A   284 _SBUF_1	=	0x009a
                           00009B   285 _EIE	=	0x009b
                           00009C   286 _EIE1	=	0x009c
                           00009F   287 _CHPCON	=	0x009f
                           0000A0   288 _P2	=	0x00a0
                           0000A2   289 _AUXR1	=	0x00a2
                           0000A3   290 _BODCON0	=	0x00a3
                           0000A4   291 _IAPTRG	=	0x00a4
                           0000A5   292 _IAPUEN	=	0x00a5
                           0000A6   293 _IAPAL	=	0x00a6
                           0000A7   294 _IAPAH	=	0x00a7
                           0000A8   295 _IE	=	0x00a8
                           0000A9   296 _SADDR	=	0x00a9
                           0000AA   297 _WDCON	=	0x00aa
                           0000AB   298 _BODCON1	=	0x00ab
                           0000AC   299 _P3M1	=	0x00ac
                           0000AC   300 _P3S	=	0x00ac
                           0000AD   301 _P3M2	=	0x00ad
                           0000AD   302 _P3SR	=	0x00ad
                           0000AE   303 _IAPFD	=	0x00ae
                           0000AF   304 _IAPCN	=	0x00af
                           0000B0   305 _P3	=	0x00b0
                           0000B1   306 _P0M1	=	0x00b1
                           0000B1   307 _P0S	=	0x00b1
                           0000B2   308 _P0M2	=	0x00b2
                           0000B2   309 _P0SR	=	0x00b2
                           0000B3   310 _P1M1	=	0x00b3
                           0000B3   311 _P1S	=	0x00b3
                           0000B4   312 _P1M2	=	0x00b4
                           0000B4   313 _P1SR	=	0x00b4
                           0000B5   314 _P2S	=	0x00b5
                           0000B7   315 _IPH	=	0x00b7
                           0000B7   316 _PWMINTC	=	0x00b7
                           0000B8   317 _IP	=	0x00b8
                           0000B9   318 _SADEN	=	0x00b9
                           0000BA   319 _SADEN_1	=	0x00ba
                           0000BB   320 _SADDR_1	=	0x00bb
                           0000BC   321 _I2DAT	=	0x00bc
                           0000BD   322 _I2STAT	=	0x00bd
                           0000BE   323 _I2CLK	=	0x00be
                           0000BF   324 _I2TOC	=	0x00bf
                           0000C0   325 _I2CON	=	0x00c0
                           0000C1   326 _I2ADDR	=	0x00c1
                           0000C2   327 _ADCRL	=	0x00c2
                           0000C3   328 _ADCRH	=	0x00c3
                           0000C4   329 _T3CON	=	0x00c4
                           0000C4   330 _PWM4H	=	0x00c4
                           0000C5   331 _RL3	=	0x00c5
                           0000C5   332 _PWM5H	=	0x00c5
                           0000C6   333 _RH3	=	0x00c6
                           0000C6   334 _PIOCON1	=	0x00c6
                           0000C7   335 _TA	=	0x00c7
                           0000C8   336 _T2CON	=	0x00c8
                           0000C9   337 _T2MOD	=	0x00c9
                           0000CA   338 _RCMP2L	=	0x00ca
                           0000CB   339 _RCMP2H	=	0x00cb
                           0000CC   340 _TL2	=	0x00cc
                           0000CC   341 _PWM4L	=	0x00cc
                           0000CD   342 _TH2	=	0x00cd
                           0000CD   343 _PWM5L	=	0x00cd
                           0000CE   344 _ADCMPL	=	0x00ce
                           0000CF   345 _ADCMPH	=	0x00cf
                           0000D0   346 _PSW	=	0x00d0
                           0000D1   347 _PWMPH	=	0x00d1
                           0000D2   348 _PWM0H	=	0x00d2
                           0000D3   349 _PWM1H	=	0x00d3
                           0000D4   350 _PWM2H	=	0x00d4
                           0000D5   351 _PWM3H	=	0x00d5
                           0000D6   352 _PNP	=	0x00d6
                           0000D7   353 _FBD	=	0x00d7
                           0000D8   354 _PWMCON0	=	0x00d8
                           0000D9   355 _PWMPL	=	0x00d9
                           0000DA   356 _PWM0L	=	0x00da
                           0000DB   357 _PWM1L	=	0x00db
                           0000DC   358 _PWM2L	=	0x00dc
                           0000DD   359 _PWM3L	=	0x00dd
                           0000DE   360 _PIOCON0	=	0x00de
                           0000DF   361 _PWMCON1	=	0x00df
                           0000E0   362 _ACC	=	0x00e0
                           0000E1   363 _ADCCON1	=	0x00e1
                           0000E2   364 _ADCCON2	=	0x00e2
                           0000E3   365 _ADCDLY	=	0x00e3
                           0000E4   366 _C0L	=	0x00e4
                           0000E5   367 _C0H	=	0x00e5
                           0000E6   368 _C1L	=	0x00e6
                           0000E7   369 _C1H	=	0x00e7
                           0000E8   370 _ADCCON0	=	0x00e8
                           0000E9   371 _PICON	=	0x00e9
                           0000EA   372 _PINEN	=	0x00ea
                           0000EB   373 _PIPEN	=	0x00eb
                           0000EC   374 _PIF	=	0x00ec
                           0000ED   375 _C2L	=	0x00ed
                           0000EE   376 _C2H	=	0x00ee
                           0000EF   377 _EIP	=	0x00ef
                           0000F0   378 _B	=	0x00f0
                           0000F1   379 _CAPCON3	=	0x00f1
                           0000F2   380 _CAPCON4	=	0x00f2
                           0000F3   381 _SPCR	=	0x00f3
                           0000F3   382 _SPCR2	=	0x00f3
                           0000F4   383 _SPSR	=	0x00f4
                           0000F5   384 _SPDR	=	0x00f5
                           0000F6   385 _AINDIDS	=	0x00f6
                           0000F7   386 _EIPH	=	0x00f7
                           0000F8   387 _SCON_1	=	0x00f8
                           0000F9   388 _PDTEN	=	0x00f9
                           0000FA   389 _PDTCNT	=	0x00fa
                           0000FB   390 _PMEN	=	0x00fb
                           0000FC   391 _PMD	=	0x00fc
                           0000FE   392 _EIP1	=	0x00fe
                           0000FF   393 _EIPH1	=	0x00ff
                                    394 ;--------------------------------------------------------
                                    395 ; special function bits
                                    396 ;--------------------------------------------------------
                                    397 	.area RSEG    (ABS,DATA)
      000000                        398 	.org 0x0000
                           0000FF   399 _SM0_1	=	0x00ff
                           0000FF   400 _FE_1	=	0x00ff
                           0000FE   401 _SM1_1	=	0x00fe
                           0000FD   402 _SM2_1	=	0x00fd
                           0000FC   403 _REN_1	=	0x00fc
                           0000FB   404 _TB8_1	=	0x00fb
                           0000FA   405 _RB8_1	=	0x00fa
                           0000F9   406 _TI_1	=	0x00f9
                           0000F8   407 _RI_1	=	0x00f8
                           0000EF   408 _ADCF	=	0x00ef
                           0000EE   409 _ADCS	=	0x00ee
                           0000ED   410 _ETGSEL1	=	0x00ed
                           0000EC   411 _ETGSEL0	=	0x00ec
                           0000EB   412 _ADCHS3	=	0x00eb
                           0000EA   413 _ADCHS2	=	0x00ea
                           0000E9   414 _ADCHS1	=	0x00e9
                           0000E8   415 _ADCHS0	=	0x00e8
                           0000DF   416 _PWMRUN	=	0x00df
                           0000DE   417 _LOAD	=	0x00de
                           0000DD   418 _PWMF	=	0x00dd
                           0000DC   419 _CLRPWM	=	0x00dc
                           0000D7   420 _CY	=	0x00d7
                           0000D6   421 _AC	=	0x00d6
                           0000D5   422 _F0	=	0x00d5
                           0000D4   423 _RS1	=	0x00d4
                           0000D3   424 _RS0	=	0x00d3
                           0000D2   425 _OV	=	0x00d2
                           0000D0   426 _P	=	0x00d0
                           0000CF   427 _TF2	=	0x00cf
                           0000CA   428 _TR2	=	0x00ca
                           0000C8   429 _CM_RL2	=	0x00c8
                           0000C6   430 _I2CEN	=	0x00c6
                           0000C5   431 _STA	=	0x00c5
                           0000C4   432 _STO	=	0x00c4
                           0000C3   433 _SI	=	0x00c3
                           0000C2   434 _AA	=	0x00c2
                           0000C0   435 _I2CPX	=	0x00c0
                           0000BE   436 _PADC	=	0x00be
                           0000BD   437 _PBOD	=	0x00bd
                           0000BC   438 _PS	=	0x00bc
                           0000BB   439 _PT1	=	0x00bb
                           0000BA   440 _PX1	=	0x00ba
                           0000B9   441 _PT0	=	0x00b9
                           0000B8   442 _PX0	=	0x00b8
                           0000B0   443 _P30	=	0x00b0
                           0000AF   444 _EA	=	0x00af
                           0000AE   445 _EADC	=	0x00ae
                           0000AD   446 _EBOD	=	0x00ad
                           0000AC   447 _ES	=	0x00ac
                           0000AB   448 _ET1	=	0x00ab
                           0000AA   449 _EX1	=	0x00aa
                           0000A9   450 _ET0	=	0x00a9
                           0000A8   451 _EX0	=	0x00a8
                           0000A0   452 _P20	=	0x00a0
                           00009F   453 _SM0	=	0x009f
                           00009F   454 _FE	=	0x009f
                           00009E   455 _SM1	=	0x009e
                           00009D   456 _SM2	=	0x009d
                           00009C   457 _REN	=	0x009c
                           00009B   458 _TB8	=	0x009b
                           00009A   459 _RB8	=	0x009a
                           000099   460 _TI	=	0x0099
                           000098   461 _RI	=	0x0098
                           000097   462 _P17	=	0x0097
                           000096   463 _P16	=	0x0096
                           000096   464 _TXD_1	=	0x0096
                           000095   465 _P15	=	0x0095
                           000094   466 _P14	=	0x0094
                           000094   467 _SDA	=	0x0094
                           000093   468 _P13	=	0x0093
                           000093   469 _SCL	=	0x0093
                           000092   470 _P12	=	0x0092
                           000091   471 _P11	=	0x0091
                           000090   472 _P10	=	0x0090
                           00008F   473 _TF1	=	0x008f
                           00008E   474 _TR1	=	0x008e
                           00008D   475 _TF0	=	0x008d
                           00008C   476 _TR0	=	0x008c
                           00008B   477 _IE1	=	0x008b
                           00008A   478 _IT1	=	0x008a
                           000089   479 _IE0	=	0x0089
                           000088   480 _IT0	=	0x0088
                           000087   481 _P07	=	0x0087
                           000087   482 _RXD	=	0x0087
                           000086   483 _P06	=	0x0086
                           000086   484 _TXD	=	0x0086
                           000085   485 _P05	=	0x0085
                           000084   486 _P04	=	0x0084
                           000084   487 _STADC	=	0x0084
                           000083   488 _P03	=	0x0083
                           000082   489 _P02	=	0x0082
                           000082   490 _RXD_1	=	0x0082
                           000081   491 _P01	=	0x0081
                           000081   492 _MISO	=	0x0081
                           000080   493 _P00	=	0x0080
                           000080   494 _MOSI	=	0x0080
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable register banks
                                    497 ;--------------------------------------------------------
                                    498 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        499 	.ds 8
                                    500 ;--------------------------------------------------------
                                    501 ; internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area DSEG    (DATA)
      00005A                        504 _hexTab::
      00005A                        505 	.ds 16
      00006A                        506 _get_device_id_uuid_65536_51:
      00006A                        507 	.ds 1
                                    508 ;--------------------------------------------------------
                                    509 ; overlayable items in internal ram 
                                    510 ;--------------------------------------------------------
                                    511 	.area	OSEG    (OVR,DATA)
                                    512 	.area	OSEG    (OVR,DATA)
      00006B                        513 _make_packet_checksum_PARM_2:
      00006B                        514 	.ds 1
      00006C                        515 _make_packet_checksum_chksum_65536_47:
      00006C                        516 	.ds 1
                                    517 	.area	OSEG    (OVR,DATA)
      00006B                        518 _crc16_PARM_2:
      00006B                        519 	.ds 1
      00006C                        520 _crc16_PARM_3:
      00006C                        521 	.ds 4
      000070                        522 _crc16_i_65536_55:
      000070                        523 	.ds 2
                                    524 ;--------------------------------------------------------
                                    525 ; indirectly addressable internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area ISEG    (DATA)
                                    528 ;--------------------------------------------------------
                                    529 ; absolute internal ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area IABS    (ABS,DATA)
                                    532 	.area IABS    (ABS,DATA)
                                    533 ;--------------------------------------------------------
                                    534 ; bit data
                                    535 ;--------------------------------------------------------
                                    536 	.area BSEG    (BIT)
                                    537 ;--------------------------------------------------------
                                    538 ; paged external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area PSEG    (PAG,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XSEG    (XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; absolute external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XABS    (ABS,XDATA)
                                    549 ;--------------------------------------------------------
                                    550 ; external initialized ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XISEG   (XDATA)
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT0 (CODE)
                                    555 	.area GSINIT1 (CODE)
                                    556 	.area GSINIT2 (CODE)
                                    557 	.area GSINIT3 (CODE)
                                    558 	.area GSINIT4 (CODE)
                                    559 	.area GSINIT5 (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area CSEG    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; global & static initialisations
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
                                    567 	.area GSINIT  (CODE)
                                    568 	.area GSFINAL (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 ;	./src/utils.c:10: uint8_t hexTab[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', };
      00023A 75 5A 30         [24]  571 	mov	_hexTab,#0x30
      00023D 75 5B 31         [24]  572 	mov	(_hexTab + 0x0001),#0x31
      000240 75 5C 32         [24]  573 	mov	(_hexTab + 0x0002),#0x32
      000243 75 5D 33         [24]  574 	mov	(_hexTab + 0x0003),#0x33
      000246 75 5E 34         [24]  575 	mov	(_hexTab + 0x0004),#0x34
      000249 75 5F 35         [24]  576 	mov	(_hexTab + 0x0005),#0x35
      00024C 75 60 36         [24]  577 	mov	(_hexTab + 0x0006),#0x36
      00024F 75 61 37         [24]  578 	mov	(_hexTab + 0x0007),#0x37
      000252 75 62 38         [24]  579 	mov	(_hexTab + 0x0008),#0x38
      000255 75 63 39         [24]  580 	mov	(_hexTab + 0x0009),#0x39
      000258 75 64 61         [24]  581 	mov	(_hexTab + 0x000a),#0x61
      00025B 75 65 62         [24]  582 	mov	(_hexTab + 0x000b),#0x62
      00025E 75 66 63         [24]  583 	mov	(_hexTab + 0x000c),#0x63
      000261 75 67 64         [24]  584 	mov	(_hexTab + 0x000d),#0x64
      000264 75 68 65         [24]  585 	mov	(_hexTab + 0x000e),#0x65
      000267 75 69 66         [24]  586 	mov	(_hexTab + 0x000f),#0x66
                                    587 ;--------------------------------------------------------
                                    588 ; Home
                                    589 ;--------------------------------------------------------
                                    590 	.area HOME    (CODE)
                                    591 	.area HOME    (CODE)
                                    592 ;--------------------------------------------------------
                                    593 ; code
                                    594 ;--------------------------------------------------------
                                    595 	.area CSEG    (CODE)
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'print_byte'
                                    598 ;------------------------------------------------------------
                                    599 ;value                     Allocated to registers r7 
                                    600 ;------------------------------------------------------------
                                    601 ;	./src/utils.c:12: void print_byte( uint8_t value )
                                    602 ;	-----------------------------------------
                                    603 ;	 function print_byte
                                    604 ;	-----------------------------------------
      0013CB                        605 _print_byte:
                           000007   606 	ar7 = 0x07
                           000006   607 	ar6 = 0x06
                           000005   608 	ar5 = 0x05
                           000004   609 	ar4 = 0x04
                           000003   610 	ar3 = 0x03
                           000002   611 	ar2 = 0x02
                           000001   612 	ar1 = 0x01
                           000000   613 	ar0 = 0x00
                                    614 ;	./src/utils.c:15: Send_Data_To_UART0( hexTab[(value >> 4)& 0xF] );
      0013CB E5 82            [12]  615 	mov	a,dpl
      0013CD FF               [12]  616 	mov	r7,a
      0013CE C4               [12]  617 	swap	a
      0013CF 54 0F            [12]  618 	anl	a,#0x0f
      0013D1 FE               [12]  619 	mov	r6,a
      0013D2 53 06 0F         [24]  620 	anl	ar6,#0x0f
      0013D5 EE               [12]  621 	mov	a,r6
      0013D6 24 5A            [12]  622 	add	a,#_hexTab
      0013D8 F9               [12]  623 	mov	r1,a
      0013D9 87 82            [24]  624 	mov	dpl,@r1
      0013DB C0 07            [24]  625 	push	ar7
      0013DD 12 04 F6         [24]  626 	lcall	_Send_Data_To_UART0
      0013E0 D0 07            [24]  627 	pop	ar7
                                    628 ;	./src/utils.c:16: Send_Data_To_UART0( hexTab[value & 0xF] );
      0013E2 53 07 0F         [24]  629 	anl	ar7,#0x0f
      0013E5 EF               [12]  630 	mov	a,r7
      0013E6 24 5A            [12]  631 	add	a,#_hexTab
      0013E8 F9               [12]  632 	mov	r1,a
      0013E9 87 82            [24]  633 	mov	dpl,@r1
      0013EB 12 04 F6         [24]  634 	lcall	_Send_Data_To_UART0
                                    635 ;	./src/utils.c:17: Send_Data_To_UART0(' ');
      0013EE 75 82 20         [24]  636 	mov	dpl,#0x20
                                    637 ;	./src/utils.c:18: }
      0013F1 02 04 F6         [24]  638 	ljmp	_Send_Data_To_UART0
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'UID_byte'
                                    641 ;------------------------------------------------------------
                                    642 ;Addr                      Allocated to registers r7 
                                    643 ;temp                      Allocated to registers 
                                    644 ;------------------------------------------------------------
                                    645 ;	./src/utils.c:20: uint8_t UID_byte(uint8_t Addr)
                                    646 ;	-----------------------------------------
                                    647 ;	 function UID_byte
                                    648 ;	-----------------------------------------
      0013F4                        649 _UID_byte:
      0013F4 AF 82            [24]  650 	mov	r7,dpl
                                    651 ;	./src/utils.c:23: set_IAPEN;
                                    652 ;	assignBit
      0013F6 A2 AF            [12]  653 	mov	c,_EA
      0013F8 92 00            [24]  654 	mov	_BIT_TMP,c
                                    655 ;	assignBit
      0013FA C2 AF            [12]  656 	clr	_EA
      0013FC 75 C7 AA         [24]  657 	mov	_TA,#0xaa
      0013FF 75 C7 55         [24]  658 	mov	_TA,#0x55
      001402 43 9F 01         [24]  659 	orl	_CHPCON,#0x01
                                    660 ;	assignBit
      001405 A2 00            [12]  661 	mov	c,_BIT_TMP
      001407 92 AF            [24]  662 	mov	_EA,c
                                    663 ;	./src/utils.c:24: IAPAL = Addr;
      001409 8F A6            [24]  664 	mov	_IAPAL,r7
                                    665 ;	./src/utils.c:25: IAPAH = 0x00;
      00140B 75 A7 00         [24]  666 	mov	_IAPAH,#0x00
                                    667 ;	./src/utils.c:26: IAPCN = READ_UID;
      00140E 75 AF 04         [24]  668 	mov	_IAPCN,#0x04
                                    669 ;	./src/utils.c:27: set_IAPGO;
                                    670 ;	assignBit
      001411 A2 AF            [12]  671 	mov	c,_EA
      001413 92 00            [24]  672 	mov	_BIT_TMP,c
                                    673 ;	assignBit
      001415 C2 AF            [12]  674 	clr	_EA
      001417 75 C7 AA         [24]  675 	mov	_TA,#0xaa
      00141A 75 C7 55         [24]  676 	mov	_TA,#0x55
      00141D 43 A4 01         [24]  677 	orl	_IAPTRG,#0x01
                                    678 ;	assignBit
      001420 A2 00            [12]  679 	mov	c,_BIT_TMP
      001422 92 AF            [24]  680 	mov	_EA,c
                                    681 ;	./src/utils.c:28: temp = IAPFD;
      001424 85 AE 82         [24]  682 	mov	dpl,_IAPFD
                                    683 ;	./src/utils.c:29: clr_IAPEN;
                                    684 ;	assignBit
      001427 A2 AF            [12]  685 	mov	c,_EA
      001429 92 00            [24]  686 	mov	_BIT_TMP,c
                                    687 ;	assignBit
      00142B C2 AF            [12]  688 	clr	_EA
      00142D 75 C7 AA         [24]  689 	mov	_TA,#0xaa
      001430 75 C7 55         [24]  690 	mov	_TA,#0x55
      001433 53 9F FE         [24]  691 	anl	_CHPCON,#0xfe
                                    692 ;	assignBit
      001436 A2 00            [12]  693 	mov	c,_BIT_TMP
      001438 92 AF            [24]  694 	mov	_EA,c
                                    695 ;	./src/utils.c:30: return temp;
                                    696 ;	./src/utils.c:31: }
      00143A 22               [24]  697 	ret
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'make_packet_checksum'
                                    700 ;------------------------------------------------------------
                                    701 ;length                    Allocated with name '_make_packet_checksum_PARM_2'
                                    702 ;packet                    Allocated to registers 
                                    703 ;chksum                    Allocated with name '_make_packet_checksum_chksum_65536_47'
                                    704 ;ptr                       Allocated to registers r5 r6 r7 
                                    705 ;count                     Allocated to registers r3 
                                    706 ;------------------------------------------------------------
                                    707 ;	./src/utils.c:33: uint8_t make_packet_checksum(uint8_t *packet, uint8_t length)
                                    708 ;	-----------------------------------------
                                    709 ;	 function make_packet_checksum
                                    710 ;	-----------------------------------------
      00143B                        711 _make_packet_checksum:
      00143B AD 82            [24]  712 	mov	r5,dpl
      00143D AE 83            [24]  713 	mov	r6,dph
      00143F AF F0            [24]  714 	mov	r7,b
                                    715 ;	./src/utils.c:35: uint8_t chksum = 0;
      001441 75 6C 00         [24]  716 	mov	_make_packet_checksum_chksum_65536_47,#0x00
                                    717 ;	./src/utils.c:39: for (count = 0; count < length - 1; count++)
      001444 7B 00            [12]  718 	mov	r3,#0x00
      001446                        719 00103$:
      001446 A9 6B            [24]  720 	mov	r1,_make_packet_checksum_PARM_2
      001448 7A 00            [12]  721 	mov	r2,#0x00
      00144A 19               [12]  722 	dec	r1
      00144B B9 FF 01         [24]  723 	cjne	r1,#0xff,00116$
      00144E 1A               [12]  724 	dec	r2
      00144F                        725 00116$:
      00144F 8B 00            [24]  726 	mov	ar0,r3
      001451 7C 00            [12]  727 	mov	r4,#0x00
      001453 C3               [12]  728 	clr	c
      001454 E8               [12]  729 	mov	a,r0
      001455 99               [12]  730 	subb	a,r1
      001456 EC               [12]  731 	mov	a,r4
      001457 64 80            [12]  732 	xrl	a,#0x80
      001459 8A F0            [24]  733 	mov	b,r2
      00145B 63 F0 80         [24]  734 	xrl	b,#0x80
      00145E 95 F0            [12]  735 	subb	a,b
      001460 50 17            [24]  736 	jnc	00101$
                                    737 ;	./src/utils.c:41: chksum += *ptr++;
      001462 8D 82            [24]  738 	mov	dpl,r5
      001464 8E 83            [24]  739 	mov	dph,r6
      001466 8F F0            [24]  740 	mov	b,r7
      001468 12 18 89         [24]  741 	lcall	__gptrget
      00146B FC               [12]  742 	mov	r4,a
      00146C A3               [24]  743 	inc	dptr
      00146D AD 82            [24]  744 	mov	r5,dpl
      00146F AE 83            [24]  745 	mov	r6,dph
      001471 EC               [12]  746 	mov	a,r4
      001472 25 6C            [12]  747 	add	a,_make_packet_checksum_chksum_65536_47
      001474 F5 6C            [12]  748 	mov	_make_packet_checksum_chksum_65536_47,a
                                    749 ;	./src/utils.c:39: for (count = 0; count < length - 1; count++)
      001476 0B               [12]  750 	inc	r3
      001477 80 CD            [24]  751 	sjmp	00103$
      001479                        752 00101$:
                                    753 ;	./src/utils.c:43: return ~chksum;
      001479 E5 6C            [12]  754 	mov	a,_make_packet_checksum_chksum_65536_47
      00147B F4               [12]  755 	cpl	a
      00147C F5 82            [12]  756 	mov	dpl,a
                                    757 ;	./src/utils.c:44: }
      00147E 22               [24]  758 	ret
                                    759 ;------------------------------------------------------------
                                    760 ;Allocation info for local variables in function 'get_device_id'
                                    761 ;------------------------------------------------------------
                                    762 ;uuid                      Allocated with name '_get_device_id_uuid_65536_51'
                                    763 ;i                         Allocated to registers r5 
                                    764 ;crc                       Allocated to registers r6 r7 
                                    765 ;------------------------------------------------------------
                                    766 ;	./src/utils.c:45: uint16_t get_device_id(void)
                                    767 ;	-----------------------------------------
                                    768 ;	 function get_device_id
                                    769 ;	-----------------------------------------
      00147F                        770 _get_device_id:
                                    771 ;	./src/utils.c:48: uint16_t crc = 0x00;
      00147F 7E 00            [12]  772 	mov	r6,#0x00
      001481 7F 00            [12]  773 	mov	r7,#0x00
                                    774 ;	./src/utils.c:50: for (i = 0; i < 0x0b; i++)
      001483 7D 00            [12]  775 	mov	r5,#0x00
      001485                        776 00102$:
                                    777 ;	./src/utils.c:52: uuid = UID_byte(i);
      001485 8D 82            [24]  778 	mov	dpl,r5
      001487 C0 07            [24]  779 	push	ar7
      001489 C0 06            [24]  780 	push	ar6
      00148B C0 05            [24]  781 	push	ar5
      00148D 12 13 F4         [24]  782 	lcall	_UID_byte
                                    783 ;	./src/utils.c:53: print_byte(uuid);
      001490 AC 82            [24]  784 	mov	r4,dpl
      001492 8C 6A            [24]  785 	mov	_get_device_id_uuid_65536_51,r4
      001494 12 13 CB         [24]  786 	lcall	_print_byte
      001497 D0 05            [24]  787 	pop	ar5
      001499 D0 06            [24]  788 	pop	ar6
      00149B D0 07            [24]  789 	pop	ar7
                                    790 ;	./src/utils.c:54: crc = crc16(&uuid, 1, crc);
      00149D 8E 6C            [24]  791 	mov	_crc16_PARM_3,r6
      00149F 8F 6D            [24]  792 	mov	(_crc16_PARM_3 + 1),r7
      0014A1 75 6E 00         [24]  793 	mov	(_crc16_PARM_3 + 2),#0x00
      0014A4 75 6F 00         [24]  794 	mov	(_crc16_PARM_3 + 3),#0x00
      0014A7 75 6B 01         [24]  795 	mov	_crc16_PARM_2,#0x01
      0014AA 90 00 6A         [24]  796 	mov	dptr,#_get_device_id_uuid_65536_51
      0014AD 75 F0 40         [24]  797 	mov	b,#0x40
      0014B0 C0 05            [24]  798 	push	ar5
      0014B2 12 14 C6         [24]  799 	lcall	_crc16
      0014B5 AE 82            [24]  800 	mov	r6,dpl
      0014B7 AF 83            [24]  801 	mov	r7,dph
      0014B9 D0 05            [24]  802 	pop	ar5
                                    803 ;	./src/utils.c:50: for (i = 0; i < 0x0b; i++)
      0014BB 0D               [12]  804 	inc	r5
      0014BC BD 0B 00         [24]  805 	cjne	r5,#0x0b,00115$
      0014BF                        806 00115$:
      0014BF 40 C4            [24]  807 	jc	00102$
                                    808 ;	./src/utils.c:56: return crc;
      0014C1 8E 82            [24]  809 	mov	dpl,r6
      0014C3 8F 83            [24]  810 	mov	dph,r7
                                    811 ;	./src/utils.c:57: }
      0014C5 22               [24]  812 	ret
                                    813 ;------------------------------------------------------------
                                    814 ;Allocation info for local variables in function 'crc16'
                                    815 ;------------------------------------------------------------
                                    816 ;num                       Allocated with name '_crc16_PARM_2'
                                    817 ;crc                       Allocated with name '_crc16_PARM_3'
                                    818 ;addr                      Allocated to registers 
                                    819 ;i                         Allocated with name '_crc16_i_65536_55'
                                    820 ;------------------------------------------------------------
                                    821 ;	./src/utils.c:59: uint16_t crc16(char *addr, uint8_t num, uint32_t crc)
                                    822 ;	-----------------------------------------
                                    823 ;	 function crc16
                                    824 ;	-----------------------------------------
      0014C6                        825 _crc16:
      0014C6 AD 82            [24]  826 	mov	r5,dpl
      0014C8 AE 83            [24]  827 	mov	r6,dph
      0014CA AF F0            [24]  828 	mov	r7,b
                                    829 ;	./src/utils.c:74: return (crc);							 /* Return updated CRC */
      0014CC AC 6B            [24]  830 	mov	r4,_crc16_PARM_2
      0014CE                        831 00109$:
                                    832 ;	./src/utils.c:63: for (; num > 0; num--) /* Step through bytes in memory */
      0014CE EC               [12]  833 	mov	a,r4
      0014CF 60 72            [24]  834 	jz	00104$
                                    835 ;	./src/utils.c:65: crc = crc ^ (*addr++ << 8); /* Fetch byte from memory, XOR into CRC top byte*/
      0014D1 8D 82            [24]  836 	mov	dpl,r5
      0014D3 8E 83            [24]  837 	mov	dph,r6
      0014D5 8F F0            [24]  838 	mov	b,r7
      0014D7 12 18 89         [24]  839 	lcall	__gptrget
      0014DA FB               [12]  840 	mov	r3,a
      0014DB A3               [24]  841 	inc	dptr
      0014DC AD 82            [24]  842 	mov	r5,dpl
      0014DE AE 83            [24]  843 	mov	r6,dph
      0014E0 8B 02            [24]  844 	mov	ar2,r3
      0014E2 7B 00            [12]  845 	mov	r3,#0x00
      0014E4 8B 00            [24]  846 	mov	ar0,r3
      0014E6 EA               [12]  847 	mov	a,r2
      0014E7 F9               [12]  848 	mov	r1,a
      0014E8 33               [12]  849 	rlc	a
      0014E9 95 E0            [12]  850 	subb	a,acc
      0014EB FA               [12]  851 	mov	r2,a
      0014EC FB               [12]  852 	mov	r3,a
      0014ED E8               [12]  853 	mov	a,r0
      0014EE 62 6C            [12]  854 	xrl	_crc16_PARM_3,a
      0014F0 E9               [12]  855 	mov	a,r1
      0014F1 62 6D            [12]  856 	xrl	(_crc16_PARM_3 + 1),a
      0014F3 EA               [12]  857 	mov	a,r2
      0014F4 62 6E            [12]  858 	xrl	(_crc16_PARM_3 + 2),a
      0014F6 EB               [12]  859 	mov	a,r3
      0014F7 62 6F            [12]  860 	xrl	(_crc16_PARM_3 + 3),a
                                    861 ;	./src/utils.c:66: for (i = 0; i < 8; i++)		/* Prepare to rotate 8 bits */
      0014F9 75 70 08         [24]  862 	mov	_crc16_i_65536_55,#0x08
      0014FC 75 71 00         [24]  863 	mov	(_crc16_i_65536_55 + 1),#0x00
      0014FF                        864 00107$:
                                    865 ;	./src/utils.c:68: crc = crc << 1;					 /* rotate */
      0014FF E5 6C            [12]  866 	mov	a,_crc16_PARM_3
      001501 25 6C            [12]  867 	add	a,_crc16_PARM_3
      001503 F5 6C            [12]  868 	mov	_crc16_PARM_3,a
      001505 E5 6D            [12]  869 	mov	a,(_crc16_PARM_3 + 1)
      001507 33               [12]  870 	rlc	a
      001508 F5 6D            [12]  871 	mov	(_crc16_PARM_3 + 1),a
      00150A E5 6E            [12]  872 	mov	a,(_crc16_PARM_3 + 2)
      00150C 33               [12]  873 	rlc	a
      00150D F5 6E            [12]  874 	mov	(_crc16_PARM_3 + 2),a
      00150F E5 6F            [12]  875 	mov	a,(_crc16_PARM_3 + 3)
      001511 33               [12]  876 	rlc	a
      001512 F5 6F            [12]  877 	mov	(_crc16_PARM_3 + 3),a
                                    878 ;	./src/utils.c:69: if (crc & 0x10000)				 /* bit 15 was set (now bit 16)... */
      001514 E5 6E            [12]  879 	mov	a,(_crc16_PARM_3 + 2)
      001516 30 E0 18         [24]  880 	jnb	acc.0,00102$
                                    881 ;	./src/utils.c:70: crc = (crc ^ poly) & 0xFFFF; /* XOR with XMODEM polynomic */
      001519 74 21            [12]  882 	mov	a,#0x21
      00151B 65 6C            [12]  883 	xrl	a,_crc16_PARM_3
      00151D F8               [12]  884 	mov	r0,a
      00151E 74 10            [12]  885 	mov	a,#0x10
      001520 65 6D            [12]  886 	xrl	a,(_crc16_PARM_3 + 1)
      001522 F9               [12]  887 	mov	r1,a
      001523 AA 6E            [24]  888 	mov	r2,(_crc16_PARM_3 + 2)
      001525 AB 6F            [24]  889 	mov	r3,(_crc16_PARM_3 + 3)
      001527 88 6C            [24]  890 	mov	_crc16_PARM_3,r0
      001529 89 6D            [24]  891 	mov	(_crc16_PARM_3 + 1),r1
      00152B 75 6E 00         [24]  892 	mov	(_crc16_PARM_3 + 2),#0x00
      00152E 75 6F 00         [24]  893 	mov	(_crc16_PARM_3 + 3),#0x00
      001531                        894 00102$:
      001531 15 70            [12]  895 	dec	_crc16_i_65536_55
      001533 74 FF            [12]  896 	mov	a,#0xff
      001535 B5 70 02         [24]  897 	cjne	a,_crc16_i_65536_55,00139$
      001538 15 71            [12]  898 	dec	(_crc16_i_65536_55 + 1)
      00153A                        899 00139$:
                                    900 ;	./src/utils.c:66: for (i = 0; i < 8; i++)		/* Prepare to rotate 8 bits */
      00153A E5 70            [12]  901 	mov	a,_crc16_i_65536_55
      00153C 45 71            [12]  902 	orl	a,(_crc16_i_65536_55 + 1)
      00153E 70 BF            [24]  903 	jnz	00107$
                                    904 ;	./src/utils.c:63: for (; num > 0; num--) /* Step through bytes in memory */
      001540 1C               [12]  905 	dec	r4
      001541 80 8B            [24]  906 	sjmp	00109$
      001543                        907 00104$:
                                    908 ;	./src/utils.c:74: return (crc);							 /* Return updated CRC */
      001543 85 6C 82         [24]  909 	mov	dpl,_crc16_PARM_3
      001546 85 6D 83         [24]  910 	mov	dph,(_crc16_PARM_3 + 1)
                                    911 ;	./src/utils.c:75: }
      001549 22               [24]  912 	ret
                                    913 	.area CSEG    (CODE)
                                    914 	.area CONST   (CODE)
                                    915 	.area XINIT   (CODE)
                                    916 	.area CABS    (ABS,CODE)
