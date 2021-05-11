                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.4 #12274 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module battery
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC_Bypass
                                     12 	.globl _READ_BANDGAP
                                     13 	.globl _MOSI
                                     14 	.globl _P00
                                     15 	.globl _MISO
                                     16 	.globl _P01
                                     17 	.globl _RXD_1
                                     18 	.globl _P02
                                     19 	.globl _P03
                                     20 	.globl _STADC
                                     21 	.globl _P04
                                     22 	.globl _P05
                                     23 	.globl _TXD
                                     24 	.globl _P06
                                     25 	.globl _RXD
                                     26 	.globl _P07
                                     27 	.globl _IT0
                                     28 	.globl _IE0
                                     29 	.globl _IT1
                                     30 	.globl _IE1
                                     31 	.globl _TR0
                                     32 	.globl _TF0
                                     33 	.globl _TR1
                                     34 	.globl _TF1
                                     35 	.globl _P10
                                     36 	.globl _P11
                                     37 	.globl _P12
                                     38 	.globl _SCL
                                     39 	.globl _P13
                                     40 	.globl _SDA
                                     41 	.globl _P14
                                     42 	.globl _P15
                                     43 	.globl _TXD_1
                                     44 	.globl _P16
                                     45 	.globl _P17
                                     46 	.globl _RI
                                     47 	.globl _TI
                                     48 	.globl _RB8
                                     49 	.globl _TB8
                                     50 	.globl _REN
                                     51 	.globl _SM2
                                     52 	.globl _SM1
                                     53 	.globl _FE
                                     54 	.globl _SM0
                                     55 	.globl _P20
                                     56 	.globl _EX0
                                     57 	.globl _ET0
                                     58 	.globl _EX1
                                     59 	.globl _ET1
                                     60 	.globl _ES
                                     61 	.globl _EBOD
                                     62 	.globl _EADC
                                     63 	.globl _EA
                                     64 	.globl _P30
                                     65 	.globl _PX0
                                     66 	.globl _PT0
                                     67 	.globl _PX1
                                     68 	.globl _PT1
                                     69 	.globl _PS
                                     70 	.globl _PBOD
                                     71 	.globl _PADC
                                     72 	.globl _I2CPX
                                     73 	.globl _AA
                                     74 	.globl _SI
                                     75 	.globl _STO
                                     76 	.globl _STA
                                     77 	.globl _I2CEN
                                     78 	.globl _CM_RL2
                                     79 	.globl _TR2
                                     80 	.globl _TF2
                                     81 	.globl _P
                                     82 	.globl _OV
                                     83 	.globl _RS0
                                     84 	.globl _RS1
                                     85 	.globl _F0
                                     86 	.globl _AC
                                     87 	.globl _CY
                                     88 	.globl _CLRPWM
                                     89 	.globl _PWMF
                                     90 	.globl _LOAD
                                     91 	.globl _PWMRUN
                                     92 	.globl _ADCHS0
                                     93 	.globl _ADCHS1
                                     94 	.globl _ADCHS2
                                     95 	.globl _ADCHS3
                                     96 	.globl _ETGSEL0
                                     97 	.globl _ETGSEL1
                                     98 	.globl _ADCS
                                     99 	.globl _ADCF
                                    100 	.globl _RI_1
                                    101 	.globl _TI_1
                                    102 	.globl _RB8_1
                                    103 	.globl _TB8_1
                                    104 	.globl _REN_1
                                    105 	.globl _SM2_1
                                    106 	.globl _SM1_1
                                    107 	.globl _FE_1
                                    108 	.globl _SM0_1
                                    109 	.globl _EIPH1
                                    110 	.globl _EIP1
                                    111 	.globl _PMD
                                    112 	.globl _PMEN
                                    113 	.globl _PDTCNT
                                    114 	.globl _PDTEN
                                    115 	.globl _SCON_1
                                    116 	.globl _EIPH
                                    117 	.globl _AINDIDS
                                    118 	.globl _SPDR
                                    119 	.globl _SPSR
                                    120 	.globl _SPCR2
                                    121 	.globl _SPCR
                                    122 	.globl _CAPCON4
                                    123 	.globl _CAPCON3
                                    124 	.globl _B
                                    125 	.globl _EIP
                                    126 	.globl _C2H
                                    127 	.globl _C2L
                                    128 	.globl _PIF
                                    129 	.globl _PIPEN
                                    130 	.globl _PINEN
                                    131 	.globl _PICON
                                    132 	.globl _ADCCON0
                                    133 	.globl _C1H
                                    134 	.globl _C1L
                                    135 	.globl _C0H
                                    136 	.globl _C0L
                                    137 	.globl _ADCDLY
                                    138 	.globl _ADCCON2
                                    139 	.globl _ADCCON1
                                    140 	.globl _ACC
                                    141 	.globl _PWMCON1
                                    142 	.globl _PIOCON0
                                    143 	.globl _PWM3L
                                    144 	.globl _PWM2L
                                    145 	.globl _PWM1L
                                    146 	.globl _PWM0L
                                    147 	.globl _PWMPL
                                    148 	.globl _PWMCON0
                                    149 	.globl _FBD
                                    150 	.globl _PNP
                                    151 	.globl _PWM3H
                                    152 	.globl _PWM2H
                                    153 	.globl _PWM1H
                                    154 	.globl _PWM0H
                                    155 	.globl _PWMPH
                                    156 	.globl _PSW
                                    157 	.globl _ADCMPH
                                    158 	.globl _ADCMPL
                                    159 	.globl _PWM5L
                                    160 	.globl _TH2
                                    161 	.globl _PWM4L
                                    162 	.globl _TL2
                                    163 	.globl _RCMP2H
                                    164 	.globl _RCMP2L
                                    165 	.globl _T2MOD
                                    166 	.globl _T2CON
                                    167 	.globl _TA
                                    168 	.globl _PIOCON1
                                    169 	.globl _RH3
                                    170 	.globl _PWM5H
                                    171 	.globl _RL3
                                    172 	.globl _PWM4H
                                    173 	.globl _T3CON
                                    174 	.globl _ADCRH
                                    175 	.globl _ADCRL
                                    176 	.globl _I2ADDR
                                    177 	.globl _I2CON
                                    178 	.globl _I2TOC
                                    179 	.globl _I2CLK
                                    180 	.globl _I2STAT
                                    181 	.globl _I2DAT
                                    182 	.globl _SADDR_1
                                    183 	.globl _SADEN_1
                                    184 	.globl _SADEN
                                    185 	.globl _IP
                                    186 	.globl _PWMINTC
                                    187 	.globl _IPH
                                    188 	.globl _P2S
                                    189 	.globl _P1SR
                                    190 	.globl _P1M2
                                    191 	.globl _P1S
                                    192 	.globl _P1M1
                                    193 	.globl _P0SR
                                    194 	.globl _P0M2
                                    195 	.globl _P0S
                                    196 	.globl _P0M1
                                    197 	.globl _P3
                                    198 	.globl _IAPCN
                                    199 	.globl _IAPFD
                                    200 	.globl _P3SR
                                    201 	.globl _P3M2
                                    202 	.globl _P3S
                                    203 	.globl _P3M1
                                    204 	.globl _BODCON1
                                    205 	.globl _WDCON
                                    206 	.globl _SADDR
                                    207 	.globl _IE
                                    208 	.globl _IAPAH
                                    209 	.globl _IAPAL
                                    210 	.globl _IAPUEN
                                    211 	.globl _IAPTRG
                                    212 	.globl _BODCON0
                                    213 	.globl _AUXR1
                                    214 	.globl _P2
                                    215 	.globl _CHPCON
                                    216 	.globl _EIE1
                                    217 	.globl _EIE
                                    218 	.globl _SBUF_1
                                    219 	.globl _SBUF
                                    220 	.globl _SCON
                                    221 	.globl _CKEN
                                    222 	.globl _CKSWT
                                    223 	.globl _CKDIV
                                    224 	.globl _CAPCON2
                                    225 	.globl _CAPCON1
                                    226 	.globl _CAPCON0
                                    227 	.globl _SFRS
                                    228 	.globl _P1
                                    229 	.globl _WKCON
                                    230 	.globl _CKCON
                                    231 	.globl _TH1
                                    232 	.globl _TH0
                                    233 	.globl _TL1
                                    234 	.globl _TL0
                                    235 	.globl _TMOD
                                    236 	.globl _TCON
                                    237 	.globl _PCON
                                    238 	.globl _RWK
                                    239 	.globl _RCTRIM1
                                    240 	.globl _RCTRIM0
                                    241 	.globl _DPH
                                    242 	.globl _DPL
                                    243 	.globl _SP
                                    244 	.globl _P0
                                    245 	.globl _BandgapLow
                                    246 	.globl _BandgapHigh
                                    247 	.globl _Bandgap_Value
                                    248 	.globl _Bandgap_Voltage
                                    249 	.globl _read_battery_voltage
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
                                    501 ;--------------------------------------------------------
                                    502 ; overlayable items in internal ram 
                                    503 ;--------------------------------------------------------
                                    504 	.area	OSEG    (OVR,DATA)
                                    505 ;--------------------------------------------------------
                                    506 ; indirectly addressable internal ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area ISEG    (DATA)
                                    509 ;--------------------------------------------------------
                                    510 ; absolute internal ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area IABS    (ABS,DATA)
                                    513 	.area IABS    (ABS,DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; bit data
                                    516 ;--------------------------------------------------------
                                    517 	.area BSEG    (BIT)
                                    518 ;--------------------------------------------------------
                                    519 ; paged external ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area PSEG    (PAG,XDATA)
                                    522 ;--------------------------------------------------------
                                    523 ; external ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area XSEG    (XDATA)
      000020                        526 _Bandgap_Voltage::
      000020                        527 	.ds 4
      000024                        528 _Bandgap_Value::
      000024                        529 	.ds 4
      000028                        530 _BandgapHigh::
      000028                        531 	.ds 1
      000029                        532 _BandgapLow::
      000029                        533 	.ds 1
                                    534 ;--------------------------------------------------------
                                    535 ; absolute external ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area XABS    (ABS,XDATA)
                                    538 ;--------------------------------------------------------
                                    539 ; external initialized ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XISEG   (XDATA)
                                    542 	.area HOME    (CODE)
                                    543 	.area GSINIT0 (CODE)
                                    544 	.area GSINIT1 (CODE)
                                    545 	.area GSINIT2 (CODE)
                                    546 	.area GSINIT3 (CODE)
                                    547 	.area GSINIT4 (CODE)
                                    548 	.area GSINIT5 (CODE)
                                    549 	.area GSINIT  (CODE)
                                    550 	.area GSFINAL (CODE)
                                    551 	.area CSEG    (CODE)
                                    552 ;--------------------------------------------------------
                                    553 ; global & static initialisations
                                    554 ;--------------------------------------------------------
                                    555 	.area HOME    (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.area GSFINAL (CODE)
                                    558 	.area GSINIT  (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; Home
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area HOME    (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; code
                                    566 ;--------------------------------------------------------
                                    567 	.area CSEG    (CODE)
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'READ_BANDGAP'
                                    570 ;------------------------------------------------------------
                                    571 ;	./src/battery.c:17: void READ_BANDGAP()
                                    572 ;	-----------------------------------------
                                    573 ;	 function READ_BANDGAP
                                    574 ;	-----------------------------------------
      001235                        575 _READ_BANDGAP:
                           000007   576 	ar7 = 0x07
                           000006   577 	ar6 = 0x06
                           000005   578 	ar5 = 0x05
                           000004   579 	ar4 = 0x04
                           000003   580 	ar3 = 0x03
                           000002   581 	ar2 = 0x02
                           000001   582 	ar1 = 0x01
                           000000   583 	ar0 = 0x00
                                    584 ;	./src/battery.c:19: set_IAPEN;
                                    585 ;	assignBit
      001235 A2 AF            [12]  586 	mov	c,_EA
      001237 92 00            [24]  587 	mov	_BIT_TMP,c
                                    588 ;	assignBit
      001239 C2 AF            [12]  589 	clr	_EA
      00123B 75 C7 AA         [24]  590 	mov	_TA,#0xaa
      00123E 75 C7 55         [24]  591 	mov	_TA,#0x55
      001241 43 9F 01         [24]  592 	orl	_CHPCON,#0x01
                                    593 ;	assignBit
      001244 A2 00            [12]  594 	mov	c,_BIT_TMP
      001246 92 AF            [24]  595 	mov	_EA,c
                                    596 ;	./src/battery.c:20: IAPAL = 0x0C;
      001248 75 A6 0C         [24]  597 	mov	_IAPAL,#0x0c
                                    598 ;	./src/battery.c:21: IAPAH = 0x00;
      00124B 75 A7 00         [24]  599 	mov	_IAPAH,#0x00
                                    600 ;	./src/battery.c:22: IAPCN = READ_UID;
      00124E 75 AF 04         [24]  601 	mov	_IAPCN,#0x04
                                    602 ;	./src/battery.c:23: set_IAPGO;
                                    603 ;	assignBit
      001251 A2 AF            [12]  604 	mov	c,_EA
      001253 92 00            [24]  605 	mov	_BIT_TMP,c
                                    606 ;	assignBit
      001255 C2 AF            [12]  607 	clr	_EA
      001257 75 C7 AA         [24]  608 	mov	_TA,#0xaa
      00125A 75 C7 55         [24]  609 	mov	_TA,#0x55
      00125D 43 A4 01         [24]  610 	orl	_IAPTRG,#0x01
                                    611 ;	assignBit
      001260 A2 00            [12]  612 	mov	c,_BIT_TMP
      001262 92 AF            [24]  613 	mov	_EA,c
                                    614 ;	./src/battery.c:24: BandgapHigh = IAPFD;
      001264 AF AE            [24]  615 	mov	r7,_IAPFD
      001266 90 00 28         [24]  616 	mov	dptr,#_BandgapHigh
      001269 EF               [12]  617 	mov	a,r7
      00126A F0               [24]  618 	movx	@dptr,a
                                    619 ;	./src/battery.c:25: IAPAL = 0x0d;
      00126B 75 A6 0D         [24]  620 	mov	_IAPAL,#0x0d
                                    621 ;	./src/battery.c:26: IAPAH = 0x00;
      00126E 75 A7 00         [24]  622 	mov	_IAPAH,#0x00
                                    623 ;	./src/battery.c:27: IAPCN = READ_UID;
      001271 75 AF 04         [24]  624 	mov	_IAPCN,#0x04
                                    625 ;	./src/battery.c:28: set_IAPGO;
                                    626 ;	assignBit
      001274 A2 AF            [12]  627 	mov	c,_EA
      001276 92 00            [24]  628 	mov	_BIT_TMP,c
                                    629 ;	assignBit
      001278 C2 AF            [12]  630 	clr	_EA
      00127A 75 C7 AA         [24]  631 	mov	_TA,#0xaa
      00127D 75 C7 55         [24]  632 	mov	_TA,#0x55
      001280 43 A4 01         [24]  633 	orl	_IAPTRG,#0x01
                                    634 ;	assignBit
      001283 A2 00            [12]  635 	mov	c,_BIT_TMP
      001285 92 AF            [24]  636 	mov	_EA,c
                                    637 ;	./src/battery.c:29: BandgapLow = IAPFD;
      001287 E5 AE            [12]  638 	mov	a,_IAPFD
                                    639 ;	./src/battery.c:30: BandgapLow = BandgapLow & 0x0F;
      001289 54 0F            [12]  640 	anl	a,#0x0f
      00128B FE               [12]  641 	mov	r6,a
      00128C 90 00 29         [24]  642 	mov	dptr,#_BandgapLow
      00128F F0               [24]  643 	movx	@dptr,a
                                    644 ;	./src/battery.c:31: clr_IAPEN;
                                    645 ;	assignBit
      001290 A2 AF            [12]  646 	mov	c,_EA
      001292 92 00            [24]  647 	mov	_BIT_TMP,c
                                    648 ;	assignBit
      001294 C2 AF            [12]  649 	clr	_EA
      001296 75 C7 AA         [24]  650 	mov	_TA,#0xaa
      001299 75 C7 55         [24]  651 	mov	_TA,#0x55
      00129C 53 9F FE         [24]  652 	anl	_CHPCON,#0xfe
                                    653 ;	assignBit
      00129F A2 00            [12]  654 	mov	c,_BIT_TMP
      0012A1 92 AF            [24]  655 	mov	_EA,c
                                    656 ;	./src/battery.c:32: Bandgap_Value = (BandgapHigh << 4) + BandgapLow;
      0012A3 E4               [12]  657 	clr	a
      0012A4 C4               [12]  658 	swap	a
      0012A5 54 F0            [12]  659 	anl	a,#0xf0
      0012A7 CF               [12]  660 	xch	a,r7
      0012A8 C4               [12]  661 	swap	a
      0012A9 CF               [12]  662 	xch	a,r7
      0012AA 6F               [12]  663 	xrl	a,r7
      0012AB CF               [12]  664 	xch	a,r7
      0012AC 54 F0            [12]  665 	anl	a,#0xf0
      0012AE CF               [12]  666 	xch	a,r7
      0012AF 6F               [12]  667 	xrl	a,r7
      0012B0 FD               [12]  668 	mov	r5,a
      0012B1 7C 00            [12]  669 	mov	r4,#0x00
      0012B3 EE               [12]  670 	mov	a,r6
      0012B4 2F               [12]  671 	add	a,r7
      0012B5 FF               [12]  672 	mov	r7,a
      0012B6 EC               [12]  673 	mov	a,r4
      0012B7 3D               [12]  674 	addc	a,r5
      0012B8 FD               [12]  675 	mov	r5,a
      0012B9 33               [12]  676 	rlc	a
      0012BA 95 E0            [12]  677 	subb	a,acc
      0012BC FE               [12]  678 	mov	r6,a
      0012BD FC               [12]  679 	mov	r4,a
      0012BE 90 00 24         [24]  680 	mov	dptr,#_Bandgap_Value
      0012C1 EF               [12]  681 	mov	a,r7
      0012C2 F0               [24]  682 	movx	@dptr,a
      0012C3 ED               [12]  683 	mov	a,r5
      0012C4 A3               [24]  684 	inc	dptr
      0012C5 F0               [24]  685 	movx	@dptr,a
      0012C6 EE               [12]  686 	mov	a,r6
      0012C7 A3               [24]  687 	inc	dptr
      0012C8 F0               [24]  688 	movx	@dptr,a
      0012C9 EC               [12]  689 	mov	a,r4
      0012CA A3               [24]  690 	inc	dptr
      0012CB F0               [24]  691 	movx	@dptr,a
                                    692 ;	./src/battery.c:33: Bandgap_Voltage = 3072.0 / (4095.0 / Bandgap_Value);
      0012CC 8F 82            [24]  693 	mov	dpl,r7
      0012CE 8D 83            [24]  694 	mov	dph,r5
      0012D0 8E F0            [24]  695 	mov	b,r6
      0012D2 EC               [12]  696 	mov	a,r4
      0012D3 12 17 31         [24]  697 	lcall	___ulong2fs
      0012D6 AC 82            [24]  698 	mov	r4,dpl
      0012D8 AD 83            [24]  699 	mov	r5,dph
      0012DA AE F0            [24]  700 	mov	r6,b
      0012DC FF               [12]  701 	mov	r7,a
      0012DD C0 04            [24]  702 	push	ar4
      0012DF C0 05            [24]  703 	push	ar5
      0012E1 C0 06            [24]  704 	push	ar6
      0012E3 C0 07            [24]  705 	push	ar7
      0012E5 90 F0 00         [24]  706 	mov	dptr,#0xf000
      0012E8 75 F0 7F         [24]  707 	mov	b,#0x7f
      0012EB 74 45            [12]  708 	mov	a,#0x45
      0012ED 12 17 C6         [24]  709 	lcall	___fsdiv
      0012F0 AC 82            [24]  710 	mov	r4,dpl
      0012F2 AD 83            [24]  711 	mov	r5,dph
      0012F4 AE F0            [24]  712 	mov	r6,b
      0012F6 FF               [12]  713 	mov	r7,a
      0012F7 E5 81            [12]  714 	mov	a,sp
      0012F9 24 FC            [12]  715 	add	a,#0xfc
      0012FB F5 81            [12]  716 	mov	sp,a
      0012FD C0 04            [24]  717 	push	ar4
      0012FF C0 05            [24]  718 	push	ar5
      001301 C0 06            [24]  719 	push	ar6
      001303 C0 07            [24]  720 	push	ar7
      001305 90 00 00         [24]  721 	mov	dptr,#0x0000
      001308 75 F0 40         [24]  722 	mov	b,#0x40
      00130B 74 45            [12]  723 	mov	a,#0x45
      00130D 12 17 C6         [24]  724 	lcall	___fsdiv
      001310 AC 82            [24]  725 	mov	r4,dpl
      001312 AD 83            [24]  726 	mov	r5,dph
      001314 AE F0            [24]  727 	mov	r6,b
      001316 FF               [12]  728 	mov	r7,a
      001317 E5 81            [12]  729 	mov	a,sp
      001319 24 FC            [12]  730 	add	a,#0xfc
      00131B F5 81            [12]  731 	mov	sp,a
      00131D 90 00 20         [24]  732 	mov	dptr,#_Bandgap_Voltage
      001320 EC               [12]  733 	mov	a,r4
      001321 F0               [24]  734 	movx	@dptr,a
      001322 ED               [12]  735 	mov	a,r5
      001323 A3               [24]  736 	inc	dptr
      001324 F0               [24]  737 	movx	@dptr,a
      001325 EE               [12]  738 	mov	a,r6
      001326 A3               [24]  739 	inc	dptr
      001327 F0               [24]  740 	movx	@dptr,a
      001328 EF               [12]  741 	mov	a,r7
      001329 A3               [24]  742 	inc	dptr
      00132A F0               [24]  743 	movx	@dptr,a
                                    744 ;	./src/battery.c:34: }
      00132B 22               [24]  745 	ret
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'ADC_Bypass'
                                    748 ;------------------------------------------------------------
                                    749 ;ozc                       Allocated to registers r7 
                                    750 ;------------------------------------------------------------
                                    751 ;	./src/battery.c:36: void ADC_Bypass(void) // The first three times convert should be bypass
                                    752 ;	-----------------------------------------
                                    753 ;	 function ADC_Bypass
                                    754 ;	-----------------------------------------
      00132C                        755 _ADC_Bypass:
                                    756 ;	./src/battery.c:39: for (ozc = 0; ozc < 0x03; ozc++)
      00132C 7F 00            [12]  757 	mov	r7,#0x00
      00132E                        758 00105$:
                                    759 ;	./src/battery.c:41: clr_ADCF;
                                    760 ;	assignBit
      00132E C2 EF            [12]  761 	clr	_ADCF
                                    762 ;	./src/battery.c:42: set_ADCS;
                                    763 ;	assignBit
      001330 D2 EE            [12]  764 	setb	_ADCS
                                    765 ;	./src/battery.c:43: while (ADCF == 0)
      001332                        766 00101$:
      001332 30 EF FD         [24]  767 	jnb	_ADCF,00101$
                                    768 ;	./src/battery.c:39: for (ozc = 0; ozc < 0x03; ozc++)
      001335 0F               [12]  769 	inc	r7
      001336 BF 03 00         [24]  770 	cjne	r7,#0x03,00123$
      001339                        771 00123$:
      001339 40 F3            [24]  772 	jc	00105$
                                    773 ;	./src/battery.c:46: }
      00133B 22               [24]  774 	ret
                                    775 ;------------------------------------------------------------
                                    776 ;Allocation info for local variables in function 'read_battery_voltage'
                                    777 ;------------------------------------------------------------
                                    778 ;bgvalue                   Allocated to registers r4 r5 r6 r7 
                                    779 ;------------------------------------------------------------
                                    780 ;	./src/battery.c:48: uint16_t read_battery_voltage(void)
                                    781 ;	-----------------------------------------
                                    782 ;	 function read_battery_voltage
                                    783 ;	-----------------------------------------
      00133C                        784 _read_battery_voltage:
                                    785 ;	./src/battery.c:51: READ_BANDGAP();
      00133C 12 12 35         [24]  786 	lcall	_READ_BANDGAP
                                    787 ;	./src/battery.c:52: Enable_ADC_BandGap;
      00133F 43 E8 08         [24]  788 	orl	_ADCCON0,#0x08
      001342 53 E8 F8         [24]  789 	anl	_ADCCON0,#0xf8
      001345 43 E1 01         [24]  790 	orl	_ADCCON1,#0x01
                                    791 ;	./src/battery.c:53: ADC_Bypass();
      001348 12 13 2C         [24]  792 	lcall	_ADC_Bypass
                                    793 ;	./src/battery.c:54: clr_ADCF;
                                    794 ;	assignBit
      00134B C2 EF            [12]  795 	clr	_ADCF
                                    796 ;	./src/battery.c:55: set_ADCS;
                                    797 ;	assignBit
      00134D D2 EE            [12]  798 	setb	_ADCS
                                    799 ;	./src/battery.c:56: while (ADCF == 0);
      00134F                        800 00101$:
      00134F 30 EF FD         [24]  801 	jnb	_ADCF,00101$
                                    802 ;	./src/battery.c:57: bgvalue = (ADCRH << 4) + ADCRL;
      001352 AE C3            [24]  803 	mov	r6,_ADCRH
      001354 E4               [12]  804 	clr	a
      001355 C4               [12]  805 	swap	a
      001356 54 F0            [12]  806 	anl	a,#0xf0
      001358 CE               [12]  807 	xch	a,r6
      001359 C4               [12]  808 	swap	a
      00135A CE               [12]  809 	xch	a,r6
      00135B 6E               [12]  810 	xrl	a,r6
      00135C CE               [12]  811 	xch	a,r6
      00135D 54 F0            [12]  812 	anl	a,#0xf0
      00135F CE               [12]  813 	xch	a,r6
      001360 6E               [12]  814 	xrl	a,r6
      001361 FF               [12]  815 	mov	r7,a
      001362 AC C2            [24]  816 	mov	r4,_ADCRL
      001364 7D 00            [12]  817 	mov	r5,#0x00
      001366 EC               [12]  818 	mov	a,r4
      001367 2E               [12]  819 	add	a,r6
      001368 F5 82            [12]  820 	mov	dpl,a
      00136A ED               [12]  821 	mov	a,r5
      00136B 3F               [12]  822 	addc	a,r7
      00136C F5 83            [12]  823 	mov	dph,a
      00136E 12 17 5F         [24]  824 	lcall	___sint2fs
      001371 AC 82            [24]  825 	mov	r4,dpl
      001373 AD 83            [24]  826 	mov	r5,dph
      001375 AE F0            [24]  827 	mov	r6,b
      001377 FF               [12]  828 	mov	r7,a
                                    829 ;	./src/battery.c:58: return (0Xfff / bgvalue) * Bandgap_Voltage;
      001378 C0 04            [24]  830 	push	ar4
      00137A C0 05            [24]  831 	push	ar5
      00137C C0 06            [24]  832 	push	ar6
      00137E C0 07            [24]  833 	push	ar7
      001380 90 F0 00         [24]  834 	mov	dptr,#0xf000
      001383 75 F0 7F         [24]  835 	mov	b,#0x7f
      001386 74 45            [12]  836 	mov	a,#0x45
      001388 12 17 C6         [24]  837 	lcall	___fsdiv
      00138B AC 82            [24]  838 	mov	r4,dpl
      00138D AD 83            [24]  839 	mov	r5,dph
      00138F AE F0            [24]  840 	mov	r6,b
      001391 FF               [12]  841 	mov	r7,a
      001392 E5 81            [12]  842 	mov	a,sp
      001394 24 FC            [12]  843 	add	a,#0xfc
      001396 F5 81            [12]  844 	mov	sp,a
      001398 90 00 20         [24]  845 	mov	dptr,#_Bandgap_Voltage
      00139B E0               [24]  846 	movx	a,@dptr
      00139C C0 E0            [24]  847 	push	acc
      00139E A3               [24]  848 	inc	dptr
      00139F E0               [24]  849 	movx	a,@dptr
      0013A0 C0 E0            [24]  850 	push	acc
      0013A2 A3               [24]  851 	inc	dptr
      0013A3 E0               [24]  852 	movx	a,@dptr
      0013A4 C0 E0            [24]  853 	push	acc
      0013A6 A3               [24]  854 	inc	dptr
      0013A7 E0               [24]  855 	movx	a,@dptr
      0013A8 C0 E0            [24]  856 	push	acc
      0013AA 8C 82            [24]  857 	mov	dpl,r4
      0013AC 8D 83            [24]  858 	mov	dph,r5
      0013AE 8E F0            [24]  859 	mov	b,r6
      0013B0 EF               [12]  860 	mov	a,r7
      0013B1 12 15 73         [24]  861 	lcall	___fsmul
      0013B4 AC 82            [24]  862 	mov	r4,dpl
      0013B6 AD 83            [24]  863 	mov	r5,dph
      0013B8 AE F0            [24]  864 	mov	r6,b
      0013BA FF               [12]  865 	mov	r7,a
      0013BB E5 81            [12]  866 	mov	a,sp
      0013BD 24 FC            [12]  867 	add	a,#0xfc
      0013BF F5 81            [12]  868 	mov	sp,a
      0013C1 8C 82            [24]  869 	mov	dpl,r4
      0013C3 8D 83            [24]  870 	mov	dph,r5
      0013C5 8E F0            [24]  871 	mov	b,r6
      0013C7 EF               [12]  872 	mov	a,r7
                                    873 ;	./src/battery.c:59: }
      0013C8 02 17 6C         [24]  874 	ljmp	___fs2uint
                                    875 	.area CSEG    (CODE)
                                    876 	.area CONST   (CODE)
                                    877 	.area XINIT   (CODE)
                                    878 	.area CABS    (ABS,CODE)
