                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.4 #12274 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _MOSI
                                     12 	.globl _P00
                                     13 	.globl _MISO
                                     14 	.globl _P01
                                     15 	.globl _RXD_1
                                     16 	.globl _P02
                                     17 	.globl _P03
                                     18 	.globl _STADC
                                     19 	.globl _P04
                                     20 	.globl _P05
                                     21 	.globl _TXD
                                     22 	.globl _P06
                                     23 	.globl _RXD
                                     24 	.globl _P07
                                     25 	.globl _IT0
                                     26 	.globl _IE0
                                     27 	.globl _IT1
                                     28 	.globl _IE1
                                     29 	.globl _TR0
                                     30 	.globl _TF0
                                     31 	.globl _TR1
                                     32 	.globl _TF1
                                     33 	.globl _P10
                                     34 	.globl _P11
                                     35 	.globl _P12
                                     36 	.globl _SCL
                                     37 	.globl _P13
                                     38 	.globl _SDA
                                     39 	.globl _P14
                                     40 	.globl _P15
                                     41 	.globl _TXD_1
                                     42 	.globl _P16
                                     43 	.globl _P17
                                     44 	.globl _RI
                                     45 	.globl _TI
                                     46 	.globl _RB8
                                     47 	.globl _TB8
                                     48 	.globl _REN
                                     49 	.globl _SM2
                                     50 	.globl _SM1
                                     51 	.globl _FE
                                     52 	.globl _SM0
                                     53 	.globl _P20
                                     54 	.globl _EX0
                                     55 	.globl _ET0
                                     56 	.globl _EX1
                                     57 	.globl _ET1
                                     58 	.globl _ES
                                     59 	.globl _EBOD
                                     60 	.globl _EADC
                                     61 	.globl _EA
                                     62 	.globl _P30
                                     63 	.globl _PX0
                                     64 	.globl _PT0
                                     65 	.globl _PX1
                                     66 	.globl _PT1
                                     67 	.globl _PS
                                     68 	.globl _PBOD
                                     69 	.globl _PADC
                                     70 	.globl _I2CPX
                                     71 	.globl _AA
                                     72 	.globl _SI
                                     73 	.globl _STO
                                     74 	.globl _STA
                                     75 	.globl _I2CEN
                                     76 	.globl _CM_RL2
                                     77 	.globl _TR2
                                     78 	.globl _TF2
                                     79 	.globl _P
                                     80 	.globl _OV
                                     81 	.globl _RS0
                                     82 	.globl _RS1
                                     83 	.globl _F0
                                     84 	.globl _AC
                                     85 	.globl _CY
                                     86 	.globl _CLRPWM
                                     87 	.globl _PWMF
                                     88 	.globl _LOAD
                                     89 	.globl _PWMRUN
                                     90 	.globl _ADCHS0
                                     91 	.globl _ADCHS1
                                     92 	.globl _ADCHS2
                                     93 	.globl _ADCHS3
                                     94 	.globl _ETGSEL0
                                     95 	.globl _ETGSEL1
                                     96 	.globl _ADCS
                                     97 	.globl _ADCF
                                     98 	.globl _RI_1
                                     99 	.globl _TI_1
                                    100 	.globl _RB8_1
                                    101 	.globl _TB8_1
                                    102 	.globl _REN_1
                                    103 	.globl _SM2_1
                                    104 	.globl _SM1_1
                                    105 	.globl _FE_1
                                    106 	.globl _SM0_1
                                    107 	.globl _EIPH1
                                    108 	.globl _EIP1
                                    109 	.globl _PMD
                                    110 	.globl _PMEN
                                    111 	.globl _PDTCNT
                                    112 	.globl _PDTEN
                                    113 	.globl _SCON_1
                                    114 	.globl _EIPH
                                    115 	.globl _AINDIDS
                                    116 	.globl _SPDR
                                    117 	.globl _SPSR
                                    118 	.globl _SPCR2
                                    119 	.globl _SPCR
                                    120 	.globl _CAPCON4
                                    121 	.globl _CAPCON3
                                    122 	.globl _B
                                    123 	.globl _EIP
                                    124 	.globl _C2H
                                    125 	.globl _C2L
                                    126 	.globl _PIF
                                    127 	.globl _PIPEN
                                    128 	.globl _PINEN
                                    129 	.globl _PICON
                                    130 	.globl _ADCCON0
                                    131 	.globl _C1H
                                    132 	.globl _C1L
                                    133 	.globl _C0H
                                    134 	.globl _C0L
                                    135 	.globl _ADCDLY
                                    136 	.globl _ADCCON2
                                    137 	.globl _ADCCON1
                                    138 	.globl _ACC
                                    139 	.globl _PWMCON1
                                    140 	.globl _PIOCON0
                                    141 	.globl _PWM3L
                                    142 	.globl _PWM2L
                                    143 	.globl _PWM1L
                                    144 	.globl _PWM0L
                                    145 	.globl _PWMPL
                                    146 	.globl _PWMCON0
                                    147 	.globl _FBD
                                    148 	.globl _PNP
                                    149 	.globl _PWM3H
                                    150 	.globl _PWM2H
                                    151 	.globl _PWM1H
                                    152 	.globl _PWM0H
                                    153 	.globl _PWMPH
                                    154 	.globl _PSW
                                    155 	.globl _ADCMPH
                                    156 	.globl _ADCMPL
                                    157 	.globl _PWM5L
                                    158 	.globl _TH2
                                    159 	.globl _PWM4L
                                    160 	.globl _TL2
                                    161 	.globl _RCMP2H
                                    162 	.globl _RCMP2L
                                    163 	.globl _T2MOD
                                    164 	.globl _T2CON
                                    165 	.globl _TA
                                    166 	.globl _PIOCON1
                                    167 	.globl _RH3
                                    168 	.globl _PWM5H
                                    169 	.globl _RL3
                                    170 	.globl _PWM4H
                                    171 	.globl _T3CON
                                    172 	.globl _ADCRH
                                    173 	.globl _ADCRL
                                    174 	.globl _I2ADDR
                                    175 	.globl _I2CON
                                    176 	.globl _I2TOC
                                    177 	.globl _I2CLK
                                    178 	.globl _I2STAT
                                    179 	.globl _I2DAT
                                    180 	.globl _SADDR_1
                                    181 	.globl _SADEN_1
                                    182 	.globl _SADEN
                                    183 	.globl _IP
                                    184 	.globl _PWMINTC
                                    185 	.globl _IPH
                                    186 	.globl _P2S
                                    187 	.globl _P1SR
                                    188 	.globl _P1M2
                                    189 	.globl _P1S
                                    190 	.globl _P1M1
                                    191 	.globl _P0SR
                                    192 	.globl _P0M2
                                    193 	.globl _P0S
                                    194 	.globl _P0M1
                                    195 	.globl _P3
                                    196 	.globl _IAPCN
                                    197 	.globl _IAPFD
                                    198 	.globl _P3SR
                                    199 	.globl _P3M2
                                    200 	.globl _P3S
                                    201 	.globl _P3M1
                                    202 	.globl _BODCON1
                                    203 	.globl _WDCON
                                    204 	.globl _SADDR
                                    205 	.globl _IE
                                    206 	.globl _IAPAH
                                    207 	.globl _IAPAL
                                    208 	.globl _IAPUEN
                                    209 	.globl _IAPTRG
                                    210 	.globl _BODCON0
                                    211 	.globl _AUXR1
                                    212 	.globl _P2
                                    213 	.globl _CHPCON
                                    214 	.globl _EIE1
                                    215 	.globl _EIE
                                    216 	.globl _SBUF_1
                                    217 	.globl _SBUF
                                    218 	.globl _SCON
                                    219 	.globl _CKEN
                                    220 	.globl _CKSWT
                                    221 	.globl _CKDIV
                                    222 	.globl _CAPCON2
                                    223 	.globl _CAPCON1
                                    224 	.globl _CAPCON0
                                    225 	.globl _SFRS
                                    226 	.globl _P1
                                    227 	.globl _WKCON
                                    228 	.globl _CKCON
                                    229 	.globl _TH1
                                    230 	.globl _TH0
                                    231 	.globl _TL1
                                    232 	.globl _TL0
                                    233 	.globl _TMOD
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _RWK
                                    237 	.globl _RCTRIM1
                                    238 	.globl _RCTRIM0
                                    239 	.globl _DPH
                                    240 	.globl _DPL
                                    241 	.globl _SP
                                    242 	.globl _P0
                                    243 	.globl _spi_read_data_PARM_2
                                    244 	.globl _spi_write_data_PARM_2
                                    245 	.globl _spi_init
                                    246 	.globl _spi_setDataMode
                                    247 	.globl _spi_write_data
                                    248 	.globl _spi_transfer
                                    249 	.globl _spi_read_data
                                    250 ;--------------------------------------------------------
                                    251 ; special function registers
                                    252 ;--------------------------------------------------------
                                    253 	.area RSEG    (ABS,DATA)
      000000                        254 	.org 0x0000
                           000080   255 _P0	=	0x0080
                           000081   256 _SP	=	0x0081
                           000082   257 _DPL	=	0x0082
                           000083   258 _DPH	=	0x0083
                           000084   259 _RCTRIM0	=	0x0084
                           000085   260 _RCTRIM1	=	0x0085
                           000086   261 _RWK	=	0x0086
                           000087   262 _PCON	=	0x0087
                           000088   263 _TCON	=	0x0088
                           000089   264 _TMOD	=	0x0089
                           00008A   265 _TL0	=	0x008a
                           00008B   266 _TL1	=	0x008b
                           00008C   267 _TH0	=	0x008c
                           00008D   268 _TH1	=	0x008d
                           00008E   269 _CKCON	=	0x008e
                           00008F   270 _WKCON	=	0x008f
                           000090   271 _P1	=	0x0090
                           000091   272 _SFRS	=	0x0091
                           000092   273 _CAPCON0	=	0x0092
                           000093   274 _CAPCON1	=	0x0093
                           000094   275 _CAPCON2	=	0x0094
                           000095   276 _CKDIV	=	0x0095
                           000096   277 _CKSWT	=	0x0096
                           000097   278 _CKEN	=	0x0097
                           000098   279 _SCON	=	0x0098
                           000099   280 _SBUF	=	0x0099
                           00009A   281 _SBUF_1	=	0x009a
                           00009B   282 _EIE	=	0x009b
                           00009C   283 _EIE1	=	0x009c
                           00009F   284 _CHPCON	=	0x009f
                           0000A0   285 _P2	=	0x00a0
                           0000A2   286 _AUXR1	=	0x00a2
                           0000A3   287 _BODCON0	=	0x00a3
                           0000A4   288 _IAPTRG	=	0x00a4
                           0000A5   289 _IAPUEN	=	0x00a5
                           0000A6   290 _IAPAL	=	0x00a6
                           0000A7   291 _IAPAH	=	0x00a7
                           0000A8   292 _IE	=	0x00a8
                           0000A9   293 _SADDR	=	0x00a9
                           0000AA   294 _WDCON	=	0x00aa
                           0000AB   295 _BODCON1	=	0x00ab
                           0000AC   296 _P3M1	=	0x00ac
                           0000AC   297 _P3S	=	0x00ac
                           0000AD   298 _P3M2	=	0x00ad
                           0000AD   299 _P3SR	=	0x00ad
                           0000AE   300 _IAPFD	=	0x00ae
                           0000AF   301 _IAPCN	=	0x00af
                           0000B0   302 _P3	=	0x00b0
                           0000B1   303 _P0M1	=	0x00b1
                           0000B1   304 _P0S	=	0x00b1
                           0000B2   305 _P0M2	=	0x00b2
                           0000B2   306 _P0SR	=	0x00b2
                           0000B3   307 _P1M1	=	0x00b3
                           0000B3   308 _P1S	=	0x00b3
                           0000B4   309 _P1M2	=	0x00b4
                           0000B4   310 _P1SR	=	0x00b4
                           0000B5   311 _P2S	=	0x00b5
                           0000B7   312 _IPH	=	0x00b7
                           0000B7   313 _PWMINTC	=	0x00b7
                           0000B8   314 _IP	=	0x00b8
                           0000B9   315 _SADEN	=	0x00b9
                           0000BA   316 _SADEN_1	=	0x00ba
                           0000BB   317 _SADDR_1	=	0x00bb
                           0000BC   318 _I2DAT	=	0x00bc
                           0000BD   319 _I2STAT	=	0x00bd
                           0000BE   320 _I2CLK	=	0x00be
                           0000BF   321 _I2TOC	=	0x00bf
                           0000C0   322 _I2CON	=	0x00c0
                           0000C1   323 _I2ADDR	=	0x00c1
                           0000C2   324 _ADCRL	=	0x00c2
                           0000C3   325 _ADCRH	=	0x00c3
                           0000C4   326 _T3CON	=	0x00c4
                           0000C4   327 _PWM4H	=	0x00c4
                           0000C5   328 _RL3	=	0x00c5
                           0000C5   329 _PWM5H	=	0x00c5
                           0000C6   330 _RH3	=	0x00c6
                           0000C6   331 _PIOCON1	=	0x00c6
                           0000C7   332 _TA	=	0x00c7
                           0000C8   333 _T2CON	=	0x00c8
                           0000C9   334 _T2MOD	=	0x00c9
                           0000CA   335 _RCMP2L	=	0x00ca
                           0000CB   336 _RCMP2H	=	0x00cb
                           0000CC   337 _TL2	=	0x00cc
                           0000CC   338 _PWM4L	=	0x00cc
                           0000CD   339 _TH2	=	0x00cd
                           0000CD   340 _PWM5L	=	0x00cd
                           0000CE   341 _ADCMPL	=	0x00ce
                           0000CF   342 _ADCMPH	=	0x00cf
                           0000D0   343 _PSW	=	0x00d0
                           0000D1   344 _PWMPH	=	0x00d1
                           0000D2   345 _PWM0H	=	0x00d2
                           0000D3   346 _PWM1H	=	0x00d3
                           0000D4   347 _PWM2H	=	0x00d4
                           0000D5   348 _PWM3H	=	0x00d5
                           0000D6   349 _PNP	=	0x00d6
                           0000D7   350 _FBD	=	0x00d7
                           0000D8   351 _PWMCON0	=	0x00d8
                           0000D9   352 _PWMPL	=	0x00d9
                           0000DA   353 _PWM0L	=	0x00da
                           0000DB   354 _PWM1L	=	0x00db
                           0000DC   355 _PWM2L	=	0x00dc
                           0000DD   356 _PWM3L	=	0x00dd
                           0000DE   357 _PIOCON0	=	0x00de
                           0000DF   358 _PWMCON1	=	0x00df
                           0000E0   359 _ACC	=	0x00e0
                           0000E1   360 _ADCCON1	=	0x00e1
                           0000E2   361 _ADCCON2	=	0x00e2
                           0000E3   362 _ADCDLY	=	0x00e3
                           0000E4   363 _C0L	=	0x00e4
                           0000E5   364 _C0H	=	0x00e5
                           0000E6   365 _C1L	=	0x00e6
                           0000E7   366 _C1H	=	0x00e7
                           0000E8   367 _ADCCON0	=	0x00e8
                           0000E9   368 _PICON	=	0x00e9
                           0000EA   369 _PINEN	=	0x00ea
                           0000EB   370 _PIPEN	=	0x00eb
                           0000EC   371 _PIF	=	0x00ec
                           0000ED   372 _C2L	=	0x00ed
                           0000EE   373 _C2H	=	0x00ee
                           0000EF   374 _EIP	=	0x00ef
                           0000F0   375 _B	=	0x00f0
                           0000F1   376 _CAPCON3	=	0x00f1
                           0000F2   377 _CAPCON4	=	0x00f2
                           0000F3   378 _SPCR	=	0x00f3
                           0000F3   379 _SPCR2	=	0x00f3
                           0000F4   380 _SPSR	=	0x00f4
                           0000F5   381 _SPDR	=	0x00f5
                           0000F6   382 _AINDIDS	=	0x00f6
                           0000F7   383 _EIPH	=	0x00f7
                           0000F8   384 _SCON_1	=	0x00f8
                           0000F9   385 _PDTEN	=	0x00f9
                           0000FA   386 _PDTCNT	=	0x00fa
                           0000FB   387 _PMEN	=	0x00fb
                           0000FC   388 _PMD	=	0x00fc
                           0000FE   389 _EIP1	=	0x00fe
                           0000FF   390 _EIPH1	=	0x00ff
                                    391 ;--------------------------------------------------------
                                    392 ; special function bits
                                    393 ;--------------------------------------------------------
                                    394 	.area RSEG    (ABS,DATA)
      000000                        395 	.org 0x0000
                           0000FF   396 _SM0_1	=	0x00ff
                           0000FF   397 _FE_1	=	0x00ff
                           0000FE   398 _SM1_1	=	0x00fe
                           0000FD   399 _SM2_1	=	0x00fd
                           0000FC   400 _REN_1	=	0x00fc
                           0000FB   401 _TB8_1	=	0x00fb
                           0000FA   402 _RB8_1	=	0x00fa
                           0000F9   403 _TI_1	=	0x00f9
                           0000F8   404 _RI_1	=	0x00f8
                           0000EF   405 _ADCF	=	0x00ef
                           0000EE   406 _ADCS	=	0x00ee
                           0000ED   407 _ETGSEL1	=	0x00ed
                           0000EC   408 _ETGSEL0	=	0x00ec
                           0000EB   409 _ADCHS3	=	0x00eb
                           0000EA   410 _ADCHS2	=	0x00ea
                           0000E9   411 _ADCHS1	=	0x00e9
                           0000E8   412 _ADCHS0	=	0x00e8
                           0000DF   413 _PWMRUN	=	0x00df
                           0000DE   414 _LOAD	=	0x00de
                           0000DD   415 _PWMF	=	0x00dd
                           0000DC   416 _CLRPWM	=	0x00dc
                           0000D7   417 _CY	=	0x00d7
                           0000D6   418 _AC	=	0x00d6
                           0000D5   419 _F0	=	0x00d5
                           0000D4   420 _RS1	=	0x00d4
                           0000D3   421 _RS0	=	0x00d3
                           0000D2   422 _OV	=	0x00d2
                           0000D0   423 _P	=	0x00d0
                           0000CF   424 _TF2	=	0x00cf
                           0000CA   425 _TR2	=	0x00ca
                           0000C8   426 _CM_RL2	=	0x00c8
                           0000C6   427 _I2CEN	=	0x00c6
                           0000C5   428 _STA	=	0x00c5
                           0000C4   429 _STO	=	0x00c4
                           0000C3   430 _SI	=	0x00c3
                           0000C2   431 _AA	=	0x00c2
                           0000C0   432 _I2CPX	=	0x00c0
                           0000BE   433 _PADC	=	0x00be
                           0000BD   434 _PBOD	=	0x00bd
                           0000BC   435 _PS	=	0x00bc
                           0000BB   436 _PT1	=	0x00bb
                           0000BA   437 _PX1	=	0x00ba
                           0000B9   438 _PT0	=	0x00b9
                           0000B8   439 _PX0	=	0x00b8
                           0000B0   440 _P30	=	0x00b0
                           0000AF   441 _EA	=	0x00af
                           0000AE   442 _EADC	=	0x00ae
                           0000AD   443 _EBOD	=	0x00ad
                           0000AC   444 _ES	=	0x00ac
                           0000AB   445 _ET1	=	0x00ab
                           0000AA   446 _EX1	=	0x00aa
                           0000A9   447 _ET0	=	0x00a9
                           0000A8   448 _EX0	=	0x00a8
                           0000A0   449 _P20	=	0x00a0
                           00009F   450 _SM0	=	0x009f
                           00009F   451 _FE	=	0x009f
                           00009E   452 _SM1	=	0x009e
                           00009D   453 _SM2	=	0x009d
                           00009C   454 _REN	=	0x009c
                           00009B   455 _TB8	=	0x009b
                           00009A   456 _RB8	=	0x009a
                           000099   457 _TI	=	0x0099
                           000098   458 _RI	=	0x0098
                           000097   459 _P17	=	0x0097
                           000096   460 _P16	=	0x0096
                           000096   461 _TXD_1	=	0x0096
                           000095   462 _P15	=	0x0095
                           000094   463 _P14	=	0x0094
                           000094   464 _SDA	=	0x0094
                           000093   465 _P13	=	0x0093
                           000093   466 _SCL	=	0x0093
                           000092   467 _P12	=	0x0092
                           000091   468 _P11	=	0x0091
                           000090   469 _P10	=	0x0090
                           00008F   470 _TF1	=	0x008f
                           00008E   471 _TR1	=	0x008e
                           00008D   472 _TF0	=	0x008d
                           00008C   473 _TR0	=	0x008c
                           00008B   474 _IE1	=	0x008b
                           00008A   475 _IT1	=	0x008a
                           000089   476 _IE0	=	0x0089
                           000088   477 _IT0	=	0x0088
                           000087   478 _P07	=	0x0087
                           000087   479 _RXD	=	0x0087
                           000086   480 _P06	=	0x0086
                           000086   481 _TXD	=	0x0086
                           000085   482 _P05	=	0x0085
                           000084   483 _P04	=	0x0084
                           000084   484 _STADC	=	0x0084
                           000083   485 _P03	=	0x0083
                           000082   486 _P02	=	0x0082
                           000082   487 _RXD_1	=	0x0082
                           000081   488 _P01	=	0x0081
                           000081   489 _MISO	=	0x0081
                           000080   490 _P00	=	0x0080
                           000080   491 _MOSI	=	0x0080
                                    492 ;--------------------------------------------------------
                                    493 ; overlayable register banks
                                    494 ;--------------------------------------------------------
                                    495 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        496 	.ds 8
                                    497 ;--------------------------------------------------------
                                    498 ; internal ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area DSEG    (DATA)
      000058                        501 _spi_write_data_PARM_2:
      000058                        502 	.ds 1
      000059                        503 _spi_read_data_PARM_2:
      000059                        504 	.ds 1
                                    505 ;--------------------------------------------------------
                                    506 ; overlayable items in internal ram 
                                    507 ;--------------------------------------------------------
                                    508 	.area	OSEG    (OVR,DATA)
                                    509 	.area	OSEG    (OVR,DATA)
                                    510 ;--------------------------------------------------------
                                    511 ; indirectly addressable internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area ISEG    (DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; absolute internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area IABS    (ABS,DATA)
                                    518 	.area IABS    (ABS,DATA)
                                    519 ;--------------------------------------------------------
                                    520 ; bit data
                                    521 ;--------------------------------------------------------
                                    522 	.area BSEG    (BIT)
                                    523 ;--------------------------------------------------------
                                    524 ; paged external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area PSEG    (PAG,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XSEG    (XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; external initialized ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT0 (CODE)
                                    541 	.area GSINIT1 (CODE)
                                    542 	.area GSINIT2 (CODE)
                                    543 	.area GSINIT3 (CODE)
                                    544 	.area GSINIT4 (CODE)
                                    545 	.area GSINIT5 (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area CSEG    (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; global & static initialisations
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 	.area GSFINAL (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'spi_init'
                                    567 ;------------------------------------------------------------
                                    568 ;	./src/spi.c:21: void spi_init(void)
                                    569 ;	-----------------------------------------
                                    570 ;	 function spi_init
                                    571 ;	-----------------------------------------
      001189                        572 _spi_init:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
                                    581 ;	./src/spi.c:24: clr_SPR1;
      001189 53 F3 FD         [24]  582 	anl	_SPCR,#0xfd
                                    583 ;	./src/spi.c:25: clr_SPR0;
      00118C 53 F3 FE         [24]  584 	anl	_SPCR,#0xfe
                                    585 ;	./src/spi.c:38: set_DISMODF;
      00118F 43 F4 08         [24]  586 	orl	_SPSR,#0x08
                                    587 ;	./src/spi.c:39: clr_SSOE;
      001192 53 F3 7F         [24]  588 	anl	_SPCR,#0x7f
                                    589 ;	./src/spi.c:42: set_MSTR;
      001195 43 F3 10         [24]  590 	orl	_SPCR,#0x10
                                    591 ;	./src/spi.c:45: clr_LSBFE;
      001198 53 F3 DF         [24]  592 	anl	_SPCR,#0xdf
                                    593 ;	./src/spi.c:47: clr_CPOL;
      00119B 53 F3 F7         [24]  594 	anl	_SPCR,#0xf7
                                    595 ;	./src/spi.c:48: clr_CPHA;
      00119E 53 F3 FB         [24]  596 	anl	_SPCR,#0xfb
                                    597 ;	./src/spi.c:51: set_SPIEN;
      0011A1 43 F3 40         [24]  598 	orl	_SPCR,#0x40
                                    599 ;	./src/spi.c:52: }
      0011A4 22               [24]  600 	ret
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'spi_setDataMode'
                                    603 ;------------------------------------------------------------
                                    604 ;spiDataMode               Allocated to registers 
                                    605 ;------------------------------------------------------------
                                    606 ;	./src/spi.c:54: void spi_setDataMode(uint8_t spiDataMode)
                                    607 ;	-----------------------------------------
                                    608 ;	 function spi_setDataMode
                                    609 ;	-----------------------------------------
      0011A5                        610 _spi_setDataMode:
                                    611 ;	./src/spi.c:58: return;
                                    612 ;	./src/spi.c:59: }
      0011A5 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'spi_write_data'
                                    616 ;------------------------------------------------------------
                                    617 ;len                       Allocated with name '_spi_write_data_PARM_2'
                                    618 ;dataout                   Allocated to registers r5 r6 r7 
                                    619 ;i                         Allocated to registers r4 
                                    620 ;------------------------------------------------------------
                                    621 ;	./src/spi.c:62: void spi_write_data(uint8_t *dataout, uint8_t len)
                                    622 ;	-----------------------------------------
                                    623 ;	 function spi_write_data
                                    624 ;	-----------------------------------------
      0011A6                        625 _spi_write_data:
      0011A6 AD 82            [24]  626 	mov	r5,dpl
      0011A8 AE 83            [24]  627 	mov	r6,dph
      0011AA AF F0            [24]  628 	mov	r7,b
                                    629 ;	./src/spi.c:65: for (i = 0; i < len; i++)
      0011AC 7C 00            [12]  630 	mov	r4,#0x00
      0011AE                        631 00103$:
      0011AE C3               [12]  632 	clr	c
      0011AF EC               [12]  633 	mov	a,r4
      0011B0 95 58            [12]  634 	subb	a,_spi_write_data_PARM_2
      0011B2 50 29            [24]  635 	jnc	00105$
                                    636 ;	./src/spi.c:67: spi_transfer(dataout[i]);
      0011B4 EC               [12]  637 	mov	a,r4
      0011B5 2D               [12]  638 	add	a,r5
      0011B6 F9               [12]  639 	mov	r1,a
      0011B7 E4               [12]  640 	clr	a
      0011B8 3E               [12]  641 	addc	a,r6
      0011B9 FA               [12]  642 	mov	r2,a
      0011BA 8F 03            [24]  643 	mov	ar3,r7
      0011BC 89 82            [24]  644 	mov	dpl,r1
      0011BE 8A 83            [24]  645 	mov	dph,r2
      0011C0 8B F0            [24]  646 	mov	b,r3
      0011C2 12 18 89         [24]  647 	lcall	__gptrget
      0011C5 F5 82            [12]  648 	mov	dpl,a
      0011C7 C0 07            [24]  649 	push	ar7
      0011C9 C0 06            [24]  650 	push	ar6
      0011CB C0 05            [24]  651 	push	ar5
      0011CD C0 04            [24]  652 	push	ar4
      0011CF 12 11 DE         [24]  653 	lcall	_spi_transfer
      0011D2 D0 04            [24]  654 	pop	ar4
      0011D4 D0 05            [24]  655 	pop	ar5
      0011D6 D0 06            [24]  656 	pop	ar6
      0011D8 D0 07            [24]  657 	pop	ar7
                                    658 ;	./src/spi.c:65: for (i = 0; i < len; i++)
      0011DA 0C               [12]  659 	inc	r4
      0011DB 80 D1            [24]  660 	sjmp	00103$
      0011DD                        661 00105$:
                                    662 ;	./src/spi.c:69: }
      0011DD 22               [24]  663 	ret
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'spi_transfer'
                                    666 ;------------------------------------------------------------
                                    667 ;spiData                   Allocated to registers 
                                    668 ;result                    Allocated to registers 
                                    669 ;------------------------------------------------------------
                                    670 ;	./src/spi.c:71: uint8_t spi_transfer(uint8_t spiData)
                                    671 ;	-----------------------------------------
                                    672 ;	 function spi_transfer
                                    673 ;	-----------------------------------------
      0011DE                        674 _spi_transfer:
      0011DE 85 82 F5         [24]  675 	mov	_SPDR,dpl
                                    676 ;	./src/spi.c:75: while ((SPSR & 0x80) == 0x00)
      0011E1                        677 00101$:
      0011E1 E5 F4            [12]  678 	mov	a,_SPSR
      0011E3 30 E7 FB         [24]  679 	jnb	acc.7,00101$
                                    680 ;	./src/spi.c:77: result = SPDR;
      0011E6 85 F5 82         [24]  681 	mov	dpl,_SPDR
                                    682 ;	./src/spi.c:78: clr_SPIF;
      0011E9 53 F4 7F         [24]  683 	anl	_SPSR,#0x7f
                                    684 ;	./src/spi.c:79: return result;
                                    685 ;	./src/spi.c:80: }
      0011EC 22               [24]  686 	ret
                                    687 ;------------------------------------------------------------
                                    688 ;Allocation info for local variables in function 'spi_read_data'
                                    689 ;------------------------------------------------------------
                                    690 ;len                       Allocated with name '_spi_read_data_PARM_2'
                                    691 ;datain                    Allocated to registers r5 r6 r7 
                                    692 ;i                         Allocated to registers r4 
                                    693 ;------------------------------------------------------------
                                    694 ;	./src/spi.c:83: void spi_read_data(uint8_t *datain, uint8_t len)
                                    695 ;	-----------------------------------------
                                    696 ;	 function spi_read_data
                                    697 ;	-----------------------------------------
      0011ED                        698 _spi_read_data:
      0011ED AD 82            [24]  699 	mov	r5,dpl
      0011EF AE 83            [24]  700 	mov	r6,dph
      0011F1 AF F0            [24]  701 	mov	r7,b
                                    702 ;	./src/spi.c:86: for (i = 0; i < len; i++)
      0011F3 7C 00            [12]  703 	mov	r4,#0x00
      0011F5                        704 00103$:
      0011F5 C3               [12]  705 	clr	c
      0011F6 EC               [12]  706 	mov	a,r4
      0011F7 95 59            [12]  707 	subb	a,_spi_read_data_PARM_2
      0011F9 50 39            [24]  708 	jnc	00105$
                                    709 ;	./src/spi.c:88: datain[i] = spi_transfer(0x00);
      0011FB EC               [12]  710 	mov	a,r4
      0011FC 2D               [12]  711 	add	a,r5
      0011FD F9               [12]  712 	mov	r1,a
      0011FE E4               [12]  713 	clr	a
      0011FF 3E               [12]  714 	addc	a,r6
      001200 FA               [12]  715 	mov	r2,a
      001201 8F 03            [24]  716 	mov	ar3,r7
      001203 75 82 00         [24]  717 	mov	dpl,#0x00
      001206 C0 07            [24]  718 	push	ar7
      001208 C0 06            [24]  719 	push	ar6
      00120A C0 05            [24]  720 	push	ar5
      00120C C0 04            [24]  721 	push	ar4
      00120E C0 03            [24]  722 	push	ar3
      001210 C0 02            [24]  723 	push	ar2
      001212 C0 01            [24]  724 	push	ar1
      001214 12 11 DE         [24]  725 	lcall	_spi_transfer
      001217 A8 82            [24]  726 	mov	r0,dpl
      001219 D0 01            [24]  727 	pop	ar1
      00121B D0 02            [24]  728 	pop	ar2
      00121D D0 03            [24]  729 	pop	ar3
      00121F D0 04            [24]  730 	pop	ar4
      001221 D0 05            [24]  731 	pop	ar5
      001223 D0 06            [24]  732 	pop	ar6
      001225 D0 07            [24]  733 	pop	ar7
      001227 89 82            [24]  734 	mov	dpl,r1
      001229 8A 83            [24]  735 	mov	dph,r2
      00122B 8B F0            [24]  736 	mov	b,r3
      00122D E8               [12]  737 	mov	a,r0
      00122E 12 17 44         [24]  738 	lcall	__gptrput
                                    739 ;	./src/spi.c:86: for (i = 0; i < len; i++)
      001231 0C               [12]  740 	inc	r4
      001232 80 C1            [24]  741 	sjmp	00103$
      001234                        742 00105$:
                                    743 ;	./src/spi.c:90: }
      001234 22               [24]  744 	ret
                                    745 	.area CSEG    (CODE)
                                    746 	.area CONST   (CODE)
                                    747 	.area XINIT   (CODE)
                                    748 	.area CABS    (ABS,CODE)
