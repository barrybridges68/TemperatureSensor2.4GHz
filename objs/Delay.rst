                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.4 #12274 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Delay
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
                                    243 	.globl _BIT_TMP
                                    244 	.globl _Timer0_Delay100us
                                    245 	.globl _Timer0_Delay1ms
                                    246 	.globl _Timer1_Delay10ms
                                    247 	.globl _Timer2_Delay500us
                                    248 	.globl _Timer3_Delay100ms
                                    249 	.globl _Timer3_Delay10us
                                    250 	.globl _Stimer_10u
                                    251 ;--------------------------------------------------------
                                    252 ; special function registers
                                    253 ;--------------------------------------------------------
                                    254 	.area RSEG    (ABS,DATA)
      000000                        255 	.org 0x0000
                           000080   256 _P0	=	0x0080
                           000081   257 _SP	=	0x0081
                           000082   258 _DPL	=	0x0082
                           000083   259 _DPH	=	0x0083
                           000084   260 _RCTRIM0	=	0x0084
                           000085   261 _RCTRIM1	=	0x0085
                           000086   262 _RWK	=	0x0086
                           000087   263 _PCON	=	0x0087
                           000088   264 _TCON	=	0x0088
                           000089   265 _TMOD	=	0x0089
                           00008A   266 _TL0	=	0x008a
                           00008B   267 _TL1	=	0x008b
                           00008C   268 _TH0	=	0x008c
                           00008D   269 _TH1	=	0x008d
                           00008E   270 _CKCON	=	0x008e
                           00008F   271 _WKCON	=	0x008f
                           000090   272 _P1	=	0x0090
                           000091   273 _SFRS	=	0x0091
                           000092   274 _CAPCON0	=	0x0092
                           000093   275 _CAPCON1	=	0x0093
                           000094   276 _CAPCON2	=	0x0094
                           000095   277 _CKDIV	=	0x0095
                           000096   278 _CKSWT	=	0x0096
                           000097   279 _CKEN	=	0x0097
                           000098   280 _SCON	=	0x0098
                           000099   281 _SBUF	=	0x0099
                           00009A   282 _SBUF_1	=	0x009a
                           00009B   283 _EIE	=	0x009b
                           00009C   284 _EIE1	=	0x009c
                           00009F   285 _CHPCON	=	0x009f
                           0000A0   286 _P2	=	0x00a0
                           0000A2   287 _AUXR1	=	0x00a2
                           0000A3   288 _BODCON0	=	0x00a3
                           0000A4   289 _IAPTRG	=	0x00a4
                           0000A5   290 _IAPUEN	=	0x00a5
                           0000A6   291 _IAPAL	=	0x00a6
                           0000A7   292 _IAPAH	=	0x00a7
                           0000A8   293 _IE	=	0x00a8
                           0000A9   294 _SADDR	=	0x00a9
                           0000AA   295 _WDCON	=	0x00aa
                           0000AB   296 _BODCON1	=	0x00ab
                           0000AC   297 _P3M1	=	0x00ac
                           0000AC   298 _P3S	=	0x00ac
                           0000AD   299 _P3M2	=	0x00ad
                           0000AD   300 _P3SR	=	0x00ad
                           0000AE   301 _IAPFD	=	0x00ae
                           0000AF   302 _IAPCN	=	0x00af
                           0000B0   303 _P3	=	0x00b0
                           0000B1   304 _P0M1	=	0x00b1
                           0000B1   305 _P0S	=	0x00b1
                           0000B2   306 _P0M2	=	0x00b2
                           0000B2   307 _P0SR	=	0x00b2
                           0000B3   308 _P1M1	=	0x00b3
                           0000B3   309 _P1S	=	0x00b3
                           0000B4   310 _P1M2	=	0x00b4
                           0000B4   311 _P1SR	=	0x00b4
                           0000B5   312 _P2S	=	0x00b5
                           0000B7   313 _IPH	=	0x00b7
                           0000B7   314 _PWMINTC	=	0x00b7
                           0000B8   315 _IP	=	0x00b8
                           0000B9   316 _SADEN	=	0x00b9
                           0000BA   317 _SADEN_1	=	0x00ba
                           0000BB   318 _SADDR_1	=	0x00bb
                           0000BC   319 _I2DAT	=	0x00bc
                           0000BD   320 _I2STAT	=	0x00bd
                           0000BE   321 _I2CLK	=	0x00be
                           0000BF   322 _I2TOC	=	0x00bf
                           0000C0   323 _I2CON	=	0x00c0
                           0000C1   324 _I2ADDR	=	0x00c1
                           0000C2   325 _ADCRL	=	0x00c2
                           0000C3   326 _ADCRH	=	0x00c3
                           0000C4   327 _T3CON	=	0x00c4
                           0000C4   328 _PWM4H	=	0x00c4
                           0000C5   329 _RL3	=	0x00c5
                           0000C5   330 _PWM5H	=	0x00c5
                           0000C6   331 _RH3	=	0x00c6
                           0000C6   332 _PIOCON1	=	0x00c6
                           0000C7   333 _TA	=	0x00c7
                           0000C8   334 _T2CON	=	0x00c8
                           0000C9   335 _T2MOD	=	0x00c9
                           0000CA   336 _RCMP2L	=	0x00ca
                           0000CB   337 _RCMP2H	=	0x00cb
                           0000CC   338 _TL2	=	0x00cc
                           0000CC   339 _PWM4L	=	0x00cc
                           0000CD   340 _TH2	=	0x00cd
                           0000CD   341 _PWM5L	=	0x00cd
                           0000CE   342 _ADCMPL	=	0x00ce
                           0000CF   343 _ADCMPH	=	0x00cf
                           0000D0   344 _PSW	=	0x00d0
                           0000D1   345 _PWMPH	=	0x00d1
                           0000D2   346 _PWM0H	=	0x00d2
                           0000D3   347 _PWM1H	=	0x00d3
                           0000D4   348 _PWM2H	=	0x00d4
                           0000D5   349 _PWM3H	=	0x00d5
                           0000D6   350 _PNP	=	0x00d6
                           0000D7   351 _FBD	=	0x00d7
                           0000D8   352 _PWMCON0	=	0x00d8
                           0000D9   353 _PWMPL	=	0x00d9
                           0000DA   354 _PWM0L	=	0x00da
                           0000DB   355 _PWM1L	=	0x00db
                           0000DC   356 _PWM2L	=	0x00dc
                           0000DD   357 _PWM3L	=	0x00dd
                           0000DE   358 _PIOCON0	=	0x00de
                           0000DF   359 _PWMCON1	=	0x00df
                           0000E0   360 _ACC	=	0x00e0
                           0000E1   361 _ADCCON1	=	0x00e1
                           0000E2   362 _ADCCON2	=	0x00e2
                           0000E3   363 _ADCDLY	=	0x00e3
                           0000E4   364 _C0L	=	0x00e4
                           0000E5   365 _C0H	=	0x00e5
                           0000E6   366 _C1L	=	0x00e6
                           0000E7   367 _C1H	=	0x00e7
                           0000E8   368 _ADCCON0	=	0x00e8
                           0000E9   369 _PICON	=	0x00e9
                           0000EA   370 _PINEN	=	0x00ea
                           0000EB   371 _PIPEN	=	0x00eb
                           0000EC   372 _PIF	=	0x00ec
                           0000ED   373 _C2L	=	0x00ed
                           0000EE   374 _C2H	=	0x00ee
                           0000EF   375 _EIP	=	0x00ef
                           0000F0   376 _B	=	0x00f0
                           0000F1   377 _CAPCON3	=	0x00f1
                           0000F2   378 _CAPCON4	=	0x00f2
                           0000F3   379 _SPCR	=	0x00f3
                           0000F3   380 _SPCR2	=	0x00f3
                           0000F4   381 _SPSR	=	0x00f4
                           0000F5   382 _SPDR	=	0x00f5
                           0000F6   383 _AINDIDS	=	0x00f6
                           0000F7   384 _EIPH	=	0x00f7
                           0000F8   385 _SCON_1	=	0x00f8
                           0000F9   386 _PDTEN	=	0x00f9
                           0000FA   387 _PDTCNT	=	0x00fa
                           0000FB   388 _PMEN	=	0x00fb
                           0000FC   389 _PMD	=	0x00fc
                           0000FE   390 _EIP1	=	0x00fe
                           0000FF   391 _EIPH1	=	0x00ff
                                    392 ;--------------------------------------------------------
                                    393 ; special function bits
                                    394 ;--------------------------------------------------------
                                    395 	.area RSEG    (ABS,DATA)
      000000                        396 	.org 0x0000
                           0000FF   397 _SM0_1	=	0x00ff
                           0000FF   398 _FE_1	=	0x00ff
                           0000FE   399 _SM1_1	=	0x00fe
                           0000FD   400 _SM2_1	=	0x00fd
                           0000FC   401 _REN_1	=	0x00fc
                           0000FB   402 _TB8_1	=	0x00fb
                           0000FA   403 _RB8_1	=	0x00fa
                           0000F9   404 _TI_1	=	0x00f9
                           0000F8   405 _RI_1	=	0x00f8
                           0000EF   406 _ADCF	=	0x00ef
                           0000EE   407 _ADCS	=	0x00ee
                           0000ED   408 _ETGSEL1	=	0x00ed
                           0000EC   409 _ETGSEL0	=	0x00ec
                           0000EB   410 _ADCHS3	=	0x00eb
                           0000EA   411 _ADCHS2	=	0x00ea
                           0000E9   412 _ADCHS1	=	0x00e9
                           0000E8   413 _ADCHS0	=	0x00e8
                           0000DF   414 _PWMRUN	=	0x00df
                           0000DE   415 _LOAD	=	0x00de
                           0000DD   416 _PWMF	=	0x00dd
                           0000DC   417 _CLRPWM	=	0x00dc
                           0000D7   418 _CY	=	0x00d7
                           0000D6   419 _AC	=	0x00d6
                           0000D5   420 _F0	=	0x00d5
                           0000D4   421 _RS1	=	0x00d4
                           0000D3   422 _RS0	=	0x00d3
                           0000D2   423 _OV	=	0x00d2
                           0000D0   424 _P	=	0x00d0
                           0000CF   425 _TF2	=	0x00cf
                           0000CA   426 _TR2	=	0x00ca
                           0000C8   427 _CM_RL2	=	0x00c8
                           0000C6   428 _I2CEN	=	0x00c6
                           0000C5   429 _STA	=	0x00c5
                           0000C4   430 _STO	=	0x00c4
                           0000C3   431 _SI	=	0x00c3
                           0000C2   432 _AA	=	0x00c2
                           0000C0   433 _I2CPX	=	0x00c0
                           0000BE   434 _PADC	=	0x00be
                           0000BD   435 _PBOD	=	0x00bd
                           0000BC   436 _PS	=	0x00bc
                           0000BB   437 _PT1	=	0x00bb
                           0000BA   438 _PX1	=	0x00ba
                           0000B9   439 _PT0	=	0x00b9
                           0000B8   440 _PX0	=	0x00b8
                           0000B0   441 _P30	=	0x00b0
                           0000AF   442 _EA	=	0x00af
                           0000AE   443 _EADC	=	0x00ae
                           0000AD   444 _EBOD	=	0x00ad
                           0000AC   445 _ES	=	0x00ac
                           0000AB   446 _ET1	=	0x00ab
                           0000AA   447 _EX1	=	0x00aa
                           0000A9   448 _ET0	=	0x00a9
                           0000A8   449 _EX0	=	0x00a8
                           0000A0   450 _P20	=	0x00a0
                           00009F   451 _SM0	=	0x009f
                           00009F   452 _FE	=	0x009f
                           00009E   453 _SM1	=	0x009e
                           00009D   454 _SM2	=	0x009d
                           00009C   455 _REN	=	0x009c
                           00009B   456 _TB8	=	0x009b
                           00009A   457 _RB8	=	0x009a
                           000099   458 _TI	=	0x0099
                           000098   459 _RI	=	0x0098
                           000097   460 _P17	=	0x0097
                           000096   461 _P16	=	0x0096
                           000096   462 _TXD_1	=	0x0096
                           000095   463 _P15	=	0x0095
                           000094   464 _P14	=	0x0094
                           000094   465 _SDA	=	0x0094
                           000093   466 _P13	=	0x0093
                           000093   467 _SCL	=	0x0093
                           000092   468 _P12	=	0x0092
                           000091   469 _P11	=	0x0091
                           000090   470 _P10	=	0x0090
                           00008F   471 _TF1	=	0x008f
                           00008E   472 _TR1	=	0x008e
                           00008D   473 _TF0	=	0x008d
                           00008C   474 _TR0	=	0x008c
                           00008B   475 _IE1	=	0x008b
                           00008A   476 _IT1	=	0x008a
                           000089   477 _IE0	=	0x0089
                           000088   478 _IT0	=	0x0088
                           000087   479 _P07	=	0x0087
                           000087   480 _RXD	=	0x0087
                           000086   481 _P06	=	0x0086
                           000086   482 _TXD	=	0x0086
                           000085   483 _P05	=	0x0085
                           000084   484 _P04	=	0x0084
                           000084   485 _STADC	=	0x0084
                           000083   486 _P03	=	0x0083
                           000082   487 _P02	=	0x0082
                           000082   488 _RXD_1	=	0x0082
                           000081   489 _P01	=	0x0081
                           000081   490 _MISO	=	0x0081
                           000080   491 _P00	=	0x0080
                           000080   492 _MOSI	=	0x0080
                                    493 ;--------------------------------------------------------
                                    494 ; overlayable register banks
                                    495 ;--------------------------------------------------------
                                    496 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        497 	.ds 8
                                    498 ;--------------------------------------------------------
                                    499 ; internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area DSEG    (DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; overlayable items in internal ram 
                                    504 ;--------------------------------------------------------
                                    505 	.area	OSEG    (OVR,DATA)
                                    506 	.area	OSEG    (OVR,DATA)
                                    507 	.area	OSEG    (OVR,DATA)
                                    508 	.area	OSEG    (OVR,DATA)
                                    509 	.area	OSEG    (OVR,DATA)
                                    510 	.area	OSEG    (OVR,DATA)
                                    511 	.area	OSEG    (OVR,DATA)
                                    512 ;--------------------------------------------------------
                                    513 ; indirectly addressable internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area ISEG    (DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; absolute internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area IABS    (ABS,DATA)
                                    520 	.area IABS    (ABS,DATA)
                                    521 ;--------------------------------------------------------
                                    522 ; bit data
                                    523 ;--------------------------------------------------------
                                    524 	.area BSEG    (BIT)
      000000                        525 _BIT_TMP::
      000000                        526 	.ds 1
                                    527 ;--------------------------------------------------------
                                    528 ; paged external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area PSEG    (PAG,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XSEG    (XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; absolute external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XABS    (ABS,XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; external initialized ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area XISEG   (XDATA)
                                    543 	.area HOME    (CODE)
                                    544 	.area GSINIT0 (CODE)
                                    545 	.area GSINIT1 (CODE)
                                    546 	.area GSINIT2 (CODE)
                                    547 	.area GSINIT3 (CODE)
                                    548 	.area GSINIT4 (CODE)
                                    549 	.area GSINIT5 (CODE)
                                    550 	.area GSINIT  (CODE)
                                    551 	.area GSFINAL (CODE)
                                    552 	.area CSEG    (CODE)
                                    553 ;--------------------------------------------------------
                                    554 ; global & static initialisations
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.area GSFINAL (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 ;--------------------------------------------------------
                                    561 ; Home
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area HOME    (CODE)
                                    565 ;--------------------------------------------------------
                                    566 ; code
                                    567 ;--------------------------------------------------------
                                    568 	.area CSEG    (CODE)
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'Timer0_Delay100us'
                                    571 ;------------------------------------------------------------
                                    572 ;u32CNT                    Allocated to registers r4 r5 r6 r7 
                                    573 ;------------------------------------------------------------
                                    574 ;	./libs/Delay.c:23: void Timer0_Delay100us(UINT32 u32CNT)
                                    575 ;	-----------------------------------------
                                    576 ;	 function Timer0_Delay100us
                                    577 ;	-----------------------------------------
      000561                        578 _Timer0_Delay100us:
                           000007   579 	ar7 = 0x07
                           000006   580 	ar6 = 0x06
                           000005   581 	ar5 = 0x05
                           000004   582 	ar4 = 0x04
                           000003   583 	ar3 = 0x03
                           000002   584 	ar2 = 0x02
                           000001   585 	ar1 = 0x01
                           000000   586 	ar0 = 0x00
      000561 AC 82            [24]  587 	mov	r4,dpl
      000563 AD 83            [24]  588 	mov	r5,dph
      000565 AE F0            [24]  589 	mov	r6,b
      000567 FF               [12]  590 	mov	r7,a
                                    591 ;	./libs/Delay.c:25: clr_T0M;      //T0M=0, Timer0 Clock = Fsys/12
      000568 53 8E F7         [24]  592 	anl	_CKCON,#0xf7
                                    593 ;	./libs/Delay.c:26: TMOD |= 0x01; //Timer0 is 16-bit mode
      00056B 43 89 01         [24]  594 	orl	_TMOD,#0x01
                                    595 ;	./libs/Delay.c:27: set_TR0;      //Start Timer0
                                    596 ;	assignBit
      00056E D2 8C            [12]  597 	setb	_TR0
                                    598 ;	./libs/Delay.c:28: while (u32CNT != 0)
      000570                        599 00104$:
      000570 EC               [12]  600 	mov	a,r4
      000571 4D               [12]  601 	orl	a,r5
      000572 4E               [12]  602 	orl	a,r6
      000573 4F               [12]  603 	orl	a,r7
      000574 60 1A            [24]  604 	jz	00106$
                                    605 ;	./libs/Delay.c:30: TL0 = LOBYTE(TIMER_DIV12_VALUE_100us); //Find  define in "Function_define.h" "TIMER VALUE"
      000576 75 8A 7E         [24]  606 	mov	_TL0,#0x7e
                                    607 ;	./libs/Delay.c:31: TH0 = HIBYTE(TIMER_DIV12_VALUE_100us);
      000579 75 8C FF         [24]  608 	mov	_TH0,#0xff
                                    609 ;	./libs/Delay.c:32: while (TF0 != 1)
      00057C                        610 00101$:
                                    611 ;	./libs/Delay.c:34: clr_TF0;
                                    612 ;	assignBit
      00057C 10 8D 02         [24]  613 	jbc	_TF0,00127$
      00057F 80 FB            [24]  614 	sjmp	00101$
      000581                        615 00127$:
                                    616 ;	./libs/Delay.c:35: u32CNT--;
      000581 1C               [12]  617 	dec	r4
      000582 BC FF 09         [24]  618 	cjne	r4,#0xff,00128$
      000585 1D               [12]  619 	dec	r5
      000586 BD FF 05         [24]  620 	cjne	r5,#0xff,00128$
      000589 1E               [12]  621 	dec	r6
      00058A BE FF 01         [24]  622 	cjne	r6,#0xff,00128$
      00058D 1F               [12]  623 	dec	r7
      00058E                        624 00128$:
      00058E 80 E0            [24]  625 	sjmp	00104$
      000590                        626 00106$:
                                    627 ;	./libs/Delay.c:37: clr_TR0; //Stop Timer0
                                    628 ;	assignBit
      000590 C2 8C            [12]  629 	clr	_TR0
                                    630 ;	./libs/Delay.c:38: }
      000592 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'Timer0_Delay1ms'
                                    634 ;------------------------------------------------------------
                                    635 ;u32CNT                    Allocated to registers r4 r5 r6 r7 
                                    636 ;------------------------------------------------------------
                                    637 ;	./libs/Delay.c:40: void Timer0_Delay1ms(UINT32 u32CNT)
                                    638 ;	-----------------------------------------
                                    639 ;	 function Timer0_Delay1ms
                                    640 ;	-----------------------------------------
      000593                        641 _Timer0_Delay1ms:
      000593 AC 82            [24]  642 	mov	r4,dpl
      000595 AD 83            [24]  643 	mov	r5,dph
      000597 AE F0            [24]  644 	mov	r6,b
      000599 FF               [12]  645 	mov	r7,a
                                    646 ;	./libs/Delay.c:42: clr_T0M;      //T0M=0, Timer0 Clock = Fsys/12
      00059A 53 8E F7         [24]  647 	anl	_CKCON,#0xf7
                                    648 ;	./libs/Delay.c:43: TMOD |= 0x01; //Timer0 is 16-bit mode
      00059D 43 89 01         [24]  649 	orl	_TMOD,#0x01
                                    650 ;	./libs/Delay.c:44: set_TR0;      //Start Timer0
                                    651 ;	assignBit
      0005A0 D2 8C            [12]  652 	setb	_TR0
                                    653 ;	./libs/Delay.c:45: while (u32CNT != 0)
      0005A2                        654 00104$:
      0005A2 EC               [12]  655 	mov	a,r4
      0005A3 4D               [12]  656 	orl	a,r5
      0005A4 4E               [12]  657 	orl	a,r6
      0005A5 4F               [12]  658 	orl	a,r7
      0005A6 60 1A            [24]  659 	jz	00106$
                                    660 ;	./libs/Delay.c:47: TL0 = LOBYTE(TIMER_DIV12_VALUE_1ms); //Find  define in "Function_define.h" "TIMER VALUE"
      0005A8 75 8A CA         [24]  661 	mov	_TL0,#0xca
                                    662 ;	./libs/Delay.c:48: TH0 = HIBYTE(TIMER_DIV12_VALUE_1ms);
      0005AB 75 8C FA         [24]  663 	mov	_TH0,#0xfa
                                    664 ;	./libs/Delay.c:49: while (TF0 != 1)
      0005AE                        665 00101$:
                                    666 ;	./libs/Delay.c:51: clr_TF0;
                                    667 ;	assignBit
      0005AE 10 8D 02         [24]  668 	jbc	_TF0,00127$
      0005B1 80 FB            [24]  669 	sjmp	00101$
      0005B3                        670 00127$:
                                    671 ;	./libs/Delay.c:52: u32CNT--;
      0005B3 1C               [12]  672 	dec	r4
      0005B4 BC FF 09         [24]  673 	cjne	r4,#0xff,00128$
      0005B7 1D               [12]  674 	dec	r5
      0005B8 BD FF 05         [24]  675 	cjne	r5,#0xff,00128$
      0005BB 1E               [12]  676 	dec	r6
      0005BC BE FF 01         [24]  677 	cjne	r6,#0xff,00128$
      0005BF 1F               [12]  678 	dec	r7
      0005C0                        679 00128$:
      0005C0 80 E0            [24]  680 	sjmp	00104$
      0005C2                        681 00106$:
                                    682 ;	./libs/Delay.c:54: clr_TR0; //Stop Timer0
                                    683 ;	assignBit
      0005C2 C2 8C            [12]  684 	clr	_TR0
                                    685 ;	./libs/Delay.c:55: }
      0005C4 22               [24]  686 	ret
                                    687 ;------------------------------------------------------------
                                    688 ;Allocation info for local variables in function 'Timer1_Delay10ms'
                                    689 ;------------------------------------------------------------
                                    690 ;u32CNT                    Allocated to registers r4 r5 r6 r7 
                                    691 ;------------------------------------------------------------
                                    692 ;	./libs/Delay.c:58: void Timer1_Delay10ms(UINT32 u32CNT)
                                    693 ;	-----------------------------------------
                                    694 ;	 function Timer1_Delay10ms
                                    695 ;	-----------------------------------------
      0005C5                        696 _Timer1_Delay10ms:
      0005C5 AC 82            [24]  697 	mov	r4,dpl
      0005C7 AD 83            [24]  698 	mov	r5,dph
      0005C9 AE F0            [24]  699 	mov	r6,b
      0005CB FF               [12]  700 	mov	r7,a
                                    701 ;	./libs/Delay.c:60: clr_T1M;      //T1M=0, Timer1 Clock = Fsys/12
      0005CC 53 8E EF         [24]  702 	anl	_CKCON,#0xef
                                    703 ;	./libs/Delay.c:61: TMOD |= 0x10; //Timer1 is 16-bit mode
      0005CF 43 89 10         [24]  704 	orl	_TMOD,#0x10
                                    705 ;	./libs/Delay.c:62: set_TR1;      //Start Timer1
                                    706 ;	assignBit
      0005D2 D2 8E            [12]  707 	setb	_TR1
                                    708 ;	./libs/Delay.c:63: while (u32CNT != 0)
      0005D4                        709 00104$:
      0005D4 EC               [12]  710 	mov	a,r4
      0005D5 4D               [12]  711 	orl	a,r5
      0005D6 4E               [12]  712 	orl	a,r6
      0005D7 4F               [12]  713 	orl	a,r7
      0005D8 60 1A            [24]  714 	jz	00106$
                                    715 ;	./libs/Delay.c:65: TL1 = LOBYTE(TIMER_DIV12_VALUE_10ms); //Find  define in "Function_define.h" "TIMER VALUE"
      0005DA 75 8B EA         [24]  716 	mov	_TL1,#0xea
                                    717 ;	./libs/Delay.c:66: TH1 = HIBYTE(TIMER_DIV12_VALUE_10ms);
      0005DD 75 8D CB         [24]  718 	mov	_TH1,#0xcb
                                    719 ;	./libs/Delay.c:67: while (TF1 != 1)
      0005E0                        720 00101$:
                                    721 ;	./libs/Delay.c:69: clr_TF1;
                                    722 ;	assignBit
      0005E0 10 8F 02         [24]  723 	jbc	_TF1,00127$
      0005E3 80 FB            [24]  724 	sjmp	00101$
      0005E5                        725 00127$:
                                    726 ;	./libs/Delay.c:70: u32CNT--;
      0005E5 1C               [12]  727 	dec	r4
      0005E6 BC FF 09         [24]  728 	cjne	r4,#0xff,00128$
      0005E9 1D               [12]  729 	dec	r5
      0005EA BD FF 05         [24]  730 	cjne	r5,#0xff,00128$
      0005ED 1E               [12]  731 	dec	r6
      0005EE BE FF 01         [24]  732 	cjne	r6,#0xff,00128$
      0005F1 1F               [12]  733 	dec	r7
      0005F2                        734 00128$:
      0005F2 80 E0            [24]  735 	sjmp	00104$
      0005F4                        736 00106$:
                                    737 ;	./libs/Delay.c:72: clr_TR1; //Stop Timer1
                                    738 ;	assignBit
      0005F4 C2 8E            [12]  739 	clr	_TR1
                                    740 ;	./libs/Delay.c:73: }
      0005F6 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'Timer2_Delay500us'
                                    744 ;------------------------------------------------------------
                                    745 ;u32CNT                    Allocated to registers r4 r5 r6 r7 
                                    746 ;------------------------------------------------------------
                                    747 ;	./libs/Delay.c:75: void Timer2_Delay500us(UINT32 u32CNT)
                                    748 ;	-----------------------------------------
                                    749 ;	 function Timer2_Delay500us
                                    750 ;	-----------------------------------------
      0005F7                        751 _Timer2_Delay500us:
      0005F7 AC 82            [24]  752 	mov	r4,dpl
      0005F9 AD 83            [24]  753 	mov	r5,dph
      0005FB AE F0            [24]  754 	mov	r6,b
      0005FD FF               [12]  755 	mov	r7,a
                                    756 ;	./libs/Delay.c:77: clr_T2DIV2; //Timer2 Clock = Fsys/4
      0005FE 53 C9 BF         [24]  757 	anl	_T2MOD,#0xbf
                                    758 ;	./libs/Delay.c:78: clr_T2DIV1;
      000601 53 C9 DF         [24]  759 	anl	_T2MOD,#0xdf
                                    760 ;	./libs/Delay.c:79: set_T2DIV0;
      000604 43 C9 10         [24]  761 	orl	_T2MOD,#0x10
                                    762 ;	./libs/Delay.c:80: set_TR2; //Start Timer2
                                    763 ;	assignBit
      000607 D2 CA            [12]  764 	setb	_TR2
                                    765 ;	./libs/Delay.c:81: while (u32CNT != 0)
      000609                        766 00104$:
      000609 EC               [12]  767 	mov	a,r4
      00060A 4D               [12]  768 	orl	a,r5
      00060B 4E               [12]  769 	orl	a,r6
      00060C 4F               [12]  770 	orl	a,r7
      00060D 60 1A            [24]  771 	jz	00106$
                                    772 ;	./libs/Delay.c:83: TL2 = LOBYTE(TIMER_DIV4_VALUE_500us); //Find  define in "Function_define.h" "TIMER VALUE"
      00060F 75 CC 30         [24]  773 	mov	_TL2,#0x30
                                    774 ;	./libs/Delay.c:84: TH2 = HIBYTE(TIMER_DIV4_VALUE_500us);
      000612 75 CD F8         [24]  775 	mov	_TH2,#0xf8
                                    776 ;	./libs/Delay.c:85: while (TF2 != 1)
      000615                        777 00101$:
                                    778 ;	./libs/Delay.c:87: clr_TF2;
                                    779 ;	assignBit
      000615 10 CF 02         [24]  780 	jbc	_TF2,00127$
      000618 80 FB            [24]  781 	sjmp	00101$
      00061A                        782 00127$:
                                    783 ;	./libs/Delay.c:88: u32CNT--;
      00061A 1C               [12]  784 	dec	r4
      00061B BC FF 09         [24]  785 	cjne	r4,#0xff,00128$
      00061E 1D               [12]  786 	dec	r5
      00061F BD FF 05         [24]  787 	cjne	r5,#0xff,00128$
      000622 1E               [12]  788 	dec	r6
      000623 BE FF 01         [24]  789 	cjne	r6,#0xff,00128$
      000626 1F               [12]  790 	dec	r7
      000627                        791 00128$:
      000627 80 E0            [24]  792 	sjmp	00104$
      000629                        793 00106$:
                                    794 ;	./libs/Delay.c:90: clr_TR2; //Stop Timer2
                                    795 ;	assignBit
      000629 C2 CA            [12]  796 	clr	_TR2
                                    797 ;	./libs/Delay.c:91: }
      00062B 22               [24]  798 	ret
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'Timer3_Delay100ms'
                                    801 ;------------------------------------------------------------
                                    802 ;u32CNT                    Allocated to registers r4 r5 r6 r7 
                                    803 ;------------------------------------------------------------
                                    804 ;	./libs/Delay.c:93: void Timer3_Delay100ms(UINT32 u32CNT)
                                    805 ;	-----------------------------------------
                                    806 ;	 function Timer3_Delay100ms
                                    807 ;	-----------------------------------------
      00062C                        808 _Timer3_Delay100ms:
      00062C AC 82            [24]  809 	mov	r4,dpl
      00062E AD 83            [24]  810 	mov	r5,dph
      000630 AE F0            [24]  811 	mov	r6,b
      000632 FF               [12]  812 	mov	r7,a
                                    813 ;	./libs/Delay.c:95: T3CON = 0x07; //Timer3 Clock = Fsys/128
      000633 75 C4 07         [24]  814 	mov	_T3CON,#0x07
                                    815 ;	./libs/Delay.c:96: set_TR3;      //Trigger Timer3
      000636 43 C4 08         [24]  816 	orl	_T3CON,#0x08
                                    817 ;	./libs/Delay.c:97: while (u32CNT != 0)
      000639                        818 00104$:
      000639 EC               [12]  819 	mov	a,r4
      00063A 4D               [12]  820 	orl	a,r5
      00063B 4E               [12]  821 	orl	a,r6
      00063C 4F               [12]  822 	orl	a,r7
      00063D 60 25            [24]  823 	jz	00106$
                                    824 ;	./libs/Delay.c:99: RL3 = LOBYTE(TIMER_DIV128_VALUE_100ms); //Find  define in "Function_define.h" "TIMER VALUE"
      00063F 75 C5 2C         [24]  825 	mov	_RL3,#0x2c
                                    826 ;	./libs/Delay.c:100: RH3 = HIBYTE(TIMER_DIV128_VALUE_100ms);
      000642 75 C6 CF         [24]  827 	mov	_RH3,#0xcf
                                    828 ;	./libs/Delay.c:101: while ((T3CON & SET_BIT4) != SET_BIT4)
      000645                        829 00101$:
      000645 AA C4            [24]  830 	mov	r2,_T3CON
      000647 53 02 10         [24]  831 	anl	ar2,#0x10
      00064A 7B 00            [12]  832 	mov	r3,#0x00
      00064C BA 10 F6         [24]  833 	cjne	r2,#0x10,00101$
      00064F BB 00 F3         [24]  834 	cjne	r3,#0x00,00101$
                                    835 ;	./libs/Delay.c:103: clr_TF3;
      000652 53 C4 EF         [24]  836 	anl	_T3CON,#0xef
                                    837 ;	./libs/Delay.c:104: u32CNT--;
      000655 1C               [12]  838 	dec	r4
      000656 BC FF 09         [24]  839 	cjne	r4,#0xff,00129$
      000659 1D               [12]  840 	dec	r5
      00065A BD FF 05         [24]  841 	cjne	r5,#0xff,00129$
      00065D 1E               [12]  842 	dec	r6
      00065E BE FF 01         [24]  843 	cjne	r6,#0xff,00129$
      000661 1F               [12]  844 	dec	r7
      000662                        845 00129$:
      000662 80 D5            [24]  846 	sjmp	00104$
      000664                        847 00106$:
                                    848 ;	./libs/Delay.c:106: clr_TR3; //Stop Timer3
      000664 53 C4 F7         [24]  849 	anl	_T3CON,#0xf7
                                    850 ;	./libs/Delay.c:107: }
      000667 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'Timer3_Delay10us'
                                    854 ;------------------------------------------------------------
                                    855 ;u32CNT                    Allocated to registers r4 r5 r6 r7 
                                    856 ;------------------------------------------------------------
                                    857 ;	./libs/Delay.c:109: void Timer3_Delay10us(UINT32 u32CNT)
                                    858 ;	-----------------------------------------
                                    859 ;	 function Timer3_Delay10us
                                    860 ;	-----------------------------------------
      000668                        861 _Timer3_Delay10us:
      000668 AC 82            [24]  862 	mov	r4,dpl
      00066A AD 83            [24]  863 	mov	r5,dph
      00066C AE F0            [24]  864 	mov	r6,b
      00066E FF               [12]  865 	mov	r7,a
                                    866 ;	./libs/Delay.c:111: T3CON = 0x07; //Timer3 Clock = Fsys/128
      00066F 75 C4 07         [24]  867 	mov	_T3CON,#0x07
                                    868 ;	./libs/Delay.c:112: set_TR3;      //Trigger Timer3
      000672 43 C4 08         [24]  869 	orl	_T3CON,#0x08
                                    870 ;	./libs/Delay.c:113: while (u32CNT != 0)
      000675                        871 00104$:
      000675 EC               [12]  872 	mov	a,r4
      000676 4D               [12]  873 	orl	a,r5
      000677 4E               [12]  874 	orl	a,r6
      000678 4F               [12]  875 	orl	a,r7
      000679 60 25            [24]  876 	jz	00106$
                                    877 ;	./libs/Delay.c:115: RL3 = LOBYTE(TIMER_DIV4_VALUE_10us); //Find  define in "Function_define.h" "TIMER VALUE"
      00067B 75 C5 D8         [24]  878 	mov	_RL3,#0xd8
                                    879 ;	./libs/Delay.c:116: RH3 = HIBYTE(TIMER_DIV4_VALUE_10us);
      00067E 75 C6 FF         [24]  880 	mov	_RH3,#0xff
                                    881 ;	./libs/Delay.c:117: while ((T3CON & SET_BIT4) != SET_BIT4)
      000681                        882 00101$:
      000681 AA C4            [24]  883 	mov	r2,_T3CON
      000683 53 02 10         [24]  884 	anl	ar2,#0x10
      000686 7B 00            [12]  885 	mov	r3,#0x00
      000688 BA 10 F6         [24]  886 	cjne	r2,#0x10,00101$
      00068B BB 00 F3         [24]  887 	cjne	r3,#0x00,00101$
                                    888 ;	./libs/Delay.c:119: clr_TF3;
      00068E 53 C4 EF         [24]  889 	anl	_T3CON,#0xef
                                    890 ;	./libs/Delay.c:120: u32CNT--;
      000691 1C               [12]  891 	dec	r4
      000692 BC FF 09         [24]  892 	cjne	r4,#0xff,00129$
      000695 1D               [12]  893 	dec	r5
      000696 BD FF 05         [24]  894 	cjne	r5,#0xff,00129$
      000699 1E               [12]  895 	dec	r6
      00069A BE FF 01         [24]  896 	cjne	r6,#0xff,00129$
      00069D 1F               [12]  897 	dec	r7
      00069E                        898 00129$:
      00069E 80 D5            [24]  899 	sjmp	00104$
      0006A0                        900 00106$:
                                    901 ;	./libs/Delay.c:122: clr_TR3; //Stop Timer3
      0006A0 53 C4 F7         [24]  902 	anl	_T3CON,#0xf7
                                    903 ;	./libs/Delay.c:123: }
      0006A3 22               [24]  904 	ret
                                    905 ;------------------------------------------------------------
                                    906 ;Allocation info for local variables in function 'Stimer_10u'
                                    907 ;------------------------------------------------------------
                                    908 ;count                     Allocated to registers 
                                    909 ;counth                    Allocated to registers r5 
                                    910 ;------------------------------------------------------------
                                    911 ;	./libs/Delay.c:124: void Stimer_10u(uint16_t count)
                                    912 ;	-----------------------------------------
                                    913 ;	 function Stimer_10u
                                    914 ;	-----------------------------------------
      0006A4                        915 _Stimer_10u:
      0006A4 AE 82            [24]  916 	mov	r6,dpl
      0006A6 AF 83            [24]  917 	mov	r7,dph
                                    918 ;	./libs/Delay.c:127: while (count--)
      0006A8                        919 00104$:
      0006A8 8E 04            [24]  920 	mov	ar4,r6
      0006AA 8F 05            [24]  921 	mov	ar5,r7
      0006AC 1E               [12]  922 	dec	r6
      0006AD BE FF 01         [24]  923 	cjne	r6,#0xff,00126$
      0006B0 1F               [12]  924 	dec	r7
      0006B1                        925 00126$:
      0006B1 EC               [12]  926 	mov	a,r4
      0006B2 4D               [12]  927 	orl	a,r5
      0006B3 60 0F            [24]  928 	jz	00107$
                                    929 ;	./libs/Delay.c:130: while (counth--)
      0006B5 7D 06            [12]  930 	mov	r5,#0x06
      0006B7                        931 00101$:
      0006B7 8D 04            [24]  932 	mov	ar4,r5
      0006B9 1D               [12]  933 	dec	r5
      0006BA EC               [12]  934 	mov	a,r4
      0006BB 60 EB            [24]  935 	jz	00104$
                                    936 ;	./libs/Delay.c:132: __asm NOP __endasm;
      0006BD 00               [12]  937 	NOP	
                                    938 ;	./libs/Delay.c:133: __asm NOP __endasm;
      0006BE 00               [12]  939 	NOP	
                                    940 ;	./libs/Delay.c:134: __asm NOP __endasm;
      0006BF 00               [12]  941 	NOP	
                                    942 ;	./libs/Delay.c:135: __asm NOP __endasm;
      0006C0 00               [12]  943 	NOP	
                                    944 ;	./libs/Delay.c:136: __asm NOP __endasm;
      0006C1 00               [12]  945 	NOP	
      0006C2 80 F3            [24]  946 	sjmp	00101$
      0006C4                        947 00107$:
                                    948 ;	./libs/Delay.c:139: }
      0006C4 22               [24]  949 	ret
                                    950 	.area CSEG    (CODE)
                                    951 	.area CONST   (CODE)
                                    952 	.area XINIT   (CODE)
                                    953 	.area CABS    (ABS,CODE)
