                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.4 #12274 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Common
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
                                    243 	.globl _InitialUART0_Timer1
                                    244 	.globl _InitialUART0_Timer3
                                    245 	.globl _Receive_Data_From_UART0
                                    246 	.globl _Send_Data_To_UART0
                                    247 	.globl _InitialUART1_Timer3
                                    248 	.globl _Receive_Data_From_UART1
                                    249 	.globl _Send_Data_To_UART1
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
                                    505 	.area	OSEG    (OVR,DATA)
                                    506 	.area	OSEG    (OVR,DATA)
                                    507 	.area	OSEG    (OVR,DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; indirectly addressable internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area ISEG    (DATA)
                                    512 ;--------------------------------------------------------
                                    513 ; absolute internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area IABS    (ABS,DATA)
                                    516 	.area IABS    (ABS,DATA)
                                    517 ;--------------------------------------------------------
                                    518 ; bit data
                                    519 ;--------------------------------------------------------
                                    520 	.area BSEG    (BIT)
                                    521 ;--------------------------------------------------------
                                    522 ; paged external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area PSEG    (PAG,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XSEG    (XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; absolute external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XABS    (ABS,XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; external initialized ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XISEG   (XDATA)
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT0 (CODE)
                                    539 	.area GSINIT1 (CODE)
                                    540 	.area GSINIT2 (CODE)
                                    541 	.area GSINIT3 (CODE)
                                    542 	.area GSINIT4 (CODE)
                                    543 	.area GSINIT5 (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.area GSFINAL (CODE)
                                    546 	.area CSEG    (CODE)
                                    547 ;--------------------------------------------------------
                                    548 ; global & static initialisations
                                    549 ;--------------------------------------------------------
                                    550 	.area HOME    (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.area GSFINAL (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; Home
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
                                    558 	.area HOME    (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; code
                                    561 ;--------------------------------------------------------
                                    562 	.area CSEG    (CODE)
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'InitialUART0_Timer1'
                                    565 ;------------------------------------------------------------
                                    566 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    567 ;------------------------------------------------------------
                                    568 ;	./libs/Common.c:23: void InitialUART0_Timer1(UINT32 u32Baudrate) //T1M = 1, SMOD = 1
                                    569 ;	-----------------------------------------
                                    570 ;	 function InitialUART0_Timer1
                                    571 ;	-----------------------------------------
      000459                        572 _InitialUART0_Timer1:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
      000459 AC 82            [24]  581 	mov	r4,dpl
      00045B AD 83            [24]  582 	mov	r5,dph
      00045D AE F0            [24]  583 	mov	r6,b
      00045F FF               [12]  584 	mov	r7,a
                                    585 ;	./libs/Common.c:25: P06_Quasi_Mode; //Setting UART pin as Quasi mode for transmit
      000460 53 B1 BF         [24]  586 	anl	_P0M1,#0xbf
      000463 53 B2 BF         [24]  587 	anl	_P0M2,#0xbf
                                    588 ;	./libs/Common.c:26: P07_Quasi_Mode; //Setting UART pin as Quasi mode for transmit
      000466 53 B1 7F         [24]  589 	anl	_P0M1,#0x7f
      000469 53 B2 7F         [24]  590 	anl	_P0M2,#0x7f
                                    591 ;	./libs/Common.c:28: SCON = 0x50;  //UART0 Mode1,REN=1,TI=1
      00046C 75 98 50         [24]  592 	mov	_SCON,#0x50
                                    593 ;	./libs/Common.c:29: TMOD |= 0x20; //Timer1 Mode1
      00046F 43 89 20         [24]  594 	orl	_TMOD,#0x20
                                    595 ;	./libs/Common.c:31: set_SMOD; //UART0 Double Rate Enable
      000472 43 87 80         [24]  596 	orl	_PCON,#0x80
                                    597 ;	./libs/Common.c:32: set_T1M;
      000475 43 8E 10         [24]  598 	orl	_CKCON,#0x10
                                    599 ;	./libs/Common.c:33: clr_BRCK; //Serial port 0 baud rate clock source = Timer1
      000478 53 C4 DF         [24]  600 	anl	_T3CON,#0xdf
                                    601 ;	./libs/Common.c:36: TH1 = 256 - (1000000 / u32Baudrate + 1); /*16 MHz */
      00047B 8C 6B            [24]  602 	mov	__divulong_PARM_2,r4
      00047D 8D 6C            [24]  603 	mov	(__divulong_PARM_2 + 1),r5
      00047F 8E 6D            [24]  604 	mov	(__divulong_PARM_2 + 2),r6
      000481 8F 6E            [24]  605 	mov	(__divulong_PARM_2 + 3),r7
      000483 90 42 40         [24]  606 	mov	dptr,#0x4240
      000486 75 F0 0F         [24]  607 	mov	b,#0x0f
      000489 E4               [12]  608 	clr	a
      00048A 12 16 44         [24]  609 	lcall	__divulong
      00048D AC 82            [24]  610 	mov	r4,dpl
      00048F 0C               [12]  611 	inc	r4
      000490 C3               [12]  612 	clr	c
      000491 E4               [12]  613 	clr	a
      000492 9C               [12]  614 	subb	a,r4
      000493 F5 8D            [12]  615 	mov	_TH1,a
                                    616 ;	./libs/Common.c:41: set_TR1;
                                    617 ;	assignBit
      000495 D2 8E            [12]  618 	setb	_TR1
                                    619 ;	./libs/Common.c:42: set_TI; //For printf function must setting TI = 1
                                    620 ;	assignBit
      000497 D2 99            [12]  621 	setb	_TI
                                    622 ;	./libs/Common.c:43: }
      000499 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'InitialUART0_Timer3'
                                    626 ;------------------------------------------------------------
                                    627 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    628 ;------------------------------------------------------------
                                    629 ;	./libs/Common.c:45: void InitialUART0_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
                                    630 ;	-----------------------------------------
                                    631 ;	 function InitialUART0_Timer3
                                    632 ;	-----------------------------------------
      00049A                        633 _InitialUART0_Timer3:
      00049A AC 82            [24]  634 	mov	r4,dpl
      00049C AD 83            [24]  635 	mov	r5,dph
      00049E AE F0            [24]  636 	mov	r6,b
      0004A0 FF               [12]  637 	mov	r7,a
                                    638 ;	./libs/Common.c:47: P06_Quasi_Mode; //Setting UART pin as Quasi mode for transmit
      0004A1 53 B1 BF         [24]  639 	anl	_P0M1,#0xbf
      0004A4 53 B2 BF         [24]  640 	anl	_P0M2,#0xbf
                                    641 ;	./libs/Common.c:48: P07_Quasi_Mode; //Setting UART pin as Quasi mode for transmit
      0004A7 53 B1 7F         [24]  642 	anl	_P0M1,#0x7f
      0004AA 53 B2 7F         [24]  643 	anl	_P0M2,#0x7f
                                    644 ;	./libs/Common.c:50: SCON = 0x50;   //UART0 Mode1,REN=1,TI=1
      0004AD 75 98 50         [24]  645 	mov	_SCON,#0x50
                                    646 ;	./libs/Common.c:51: set_SMOD;      //UART0 Double Rate Enable
      0004B0 43 87 80         [24]  647 	orl	_PCON,#0x80
                                    648 ;	./libs/Common.c:52: T3CON &= 0xF8; //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
      0004B3 53 C4 F8         [24]  649 	anl	_T3CON,#0xf8
                                    650 ;	./libs/Common.c:53: set_BRCK;      //UART0 baud rate clock source = Timer3
      0004B6 43 C4 20         [24]  651 	orl	_T3CON,#0x20
                                    652 ;	./libs/Common.c:56: RH3 = HIBYTE(65536 - (1000000 / u32Baudrate) - 1); /*16 MHz */
      0004B9 8C 6B            [24]  653 	mov	__divulong_PARM_2,r4
      0004BB 8D 6C            [24]  654 	mov	(__divulong_PARM_2 + 1),r5
      0004BD 8E 6D            [24]  655 	mov	(__divulong_PARM_2 + 2),r6
      0004BF 8F 6E            [24]  656 	mov	(__divulong_PARM_2 + 3),r7
      0004C1 90 42 40         [24]  657 	mov	dptr,#0x4240
      0004C4 75 F0 0F         [24]  658 	mov	b,#0x0f
      0004C7 E4               [12]  659 	clr	a
      0004C8 12 16 44         [24]  660 	lcall	__divulong
      0004CB AC 82            [24]  661 	mov	r4,dpl
      0004CD AD 83            [24]  662 	mov	r5,dph
      0004CF AE F0            [24]  663 	mov	r6,b
      0004D1 FF               [12]  664 	mov	r7,a
      0004D2 74 FF            [12]  665 	mov	a,#0xff
      0004D4 C3               [12]  666 	clr	c
      0004D5 9C               [12]  667 	subb	a,r4
      0004D6 74 FF            [12]  668 	mov	a,#0xff
      0004D8 9D               [12]  669 	subb	a,r5
      0004D9 F9               [12]  670 	mov	r1,a
      0004DA E4               [12]  671 	clr	a
      0004DB 9E               [12]  672 	subb	a,r6
      0004DC E4               [12]  673 	clr	a
      0004DD 9F               [12]  674 	subb	a,r7
      0004DE 89 C6            [24]  675 	mov	_RH3,r1
                                    676 ;	./libs/Common.c:57: RL3 = LOBYTE(65536 - (1000000 / u32Baudrate) - 1); /*16 MHz */
      0004E0 74 FF            [12]  677 	mov	a,#0xff
      0004E2 C3               [12]  678 	clr	c
      0004E3 9C               [12]  679 	subb	a,r4
      0004E4 FC               [12]  680 	mov	r4,a
      0004E5 8C C5            [24]  681 	mov	_RL3,r4
                                    682 ;	./libs/Common.c:63: set_TR3; //Trigger Timer3
      0004E7 43 C4 08         [24]  683 	orl	_T3CON,#0x08
                                    684 ;	./libs/Common.c:64: set_TI;  //For printf function must setting TI = 1
                                    685 ;	assignBit
      0004EA D2 99            [12]  686 	setb	_TI
                                    687 ;	./libs/Common.c:65: }
      0004EC 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'Receive_Data_From_UART0'
                                    691 ;------------------------------------------------------------
                                    692 ;c                         Allocated to registers 
                                    693 ;------------------------------------------------------------
                                    694 ;	./libs/Common.c:67: UINT8 Receive_Data_From_UART0(void)
                                    695 ;	-----------------------------------------
                                    696 ;	 function Receive_Data_From_UART0
                                    697 ;	-----------------------------------------
      0004ED                        698 _Receive_Data_From_UART0:
                                    699 ;	./libs/Common.c:70: while (!RI)
      0004ED                        700 00101$:
      0004ED 30 98 FD         [24]  701 	jnb	_RI,00101$
                                    702 ;	./libs/Common.c:72: c = SBUF;
      0004F0 85 99 82         [24]  703 	mov	dpl,_SBUF
                                    704 ;	./libs/Common.c:73: RI = 0;
                                    705 ;	assignBit
      0004F3 C2 98            [12]  706 	clr	_RI
                                    707 ;	./libs/Common.c:74: return (c);
                                    708 ;	./libs/Common.c:75: }
      0004F5 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'Send_Data_To_UART0'
                                    712 ;------------------------------------------------------------
                                    713 ;c                         Allocated to registers r7 
                                    714 ;------------------------------------------------------------
                                    715 ;	./libs/Common.c:77: void Send_Data_To_UART0(UINT8 c)
                                    716 ;	-----------------------------------------
                                    717 ;	 function Send_Data_To_UART0
                                    718 ;	-----------------------------------------
      0004F6                        719 _Send_Data_To_UART0:
      0004F6 AF 82            [24]  720 	mov	r7,dpl
                                    721 ;	./libs/Common.c:79: TI = 0;
                                    722 ;	assignBit
      0004F8 C2 99            [12]  723 	clr	_TI
                                    724 ;	./libs/Common.c:80: SBUF = c;
      0004FA 8F 99            [24]  725 	mov	_SBUF,r7
                                    726 ;	./libs/Common.c:81: while (TI == 0)
      0004FC                        727 00101$:
      0004FC 30 99 FD         [24]  728 	jnb	_TI,00101$
                                    729 ;	./libs/Common.c:83: }
      0004FF 22               [24]  730 	ret
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'InitialUART1_Timer3'
                                    733 ;------------------------------------------------------------
                                    734 ;u32Baudrate               Allocated to registers r4 r5 r6 r7 
                                    735 ;------------------------------------------------------------
                                    736 ;	./libs/Common.c:88: void InitialUART1_Timer3(UINT32 u32Baudrate) //use timer3 as Baudrate generator
                                    737 ;	-----------------------------------------
                                    738 ;	 function InitialUART1_Timer3
                                    739 ;	-----------------------------------------
      000500                        740 _InitialUART1_Timer3:
      000500 AC 82            [24]  741 	mov	r4,dpl
      000502 AD 83            [24]  742 	mov	r5,dph
      000504 AE F0            [24]  743 	mov	r6,b
      000506 FF               [12]  744 	mov	r7,a
                                    745 ;	./libs/Common.c:90: P02_Quasi_Mode; //Setting UART pin as Quasi mode for transmit
      000507 53 B1 FB         [24]  746 	anl	_P0M1,#0xfb
      00050A 53 B2 FB         [24]  747 	anl	_P0M2,#0xfb
                                    748 ;	./libs/Common.c:91: P16_Quasi_Mode; //Setting UART pin as Quasi mode for transmit
      00050D 53 B3 BF         [24]  749 	anl	_P1M1,#0xbf
      000510 53 B4 BF         [24]  750 	anl	_P1M2,#0xbf
                                    751 ;	./libs/Common.c:93: SCON_1 = 0x50; //UART1 Mode1,REN_1=1,TI_1=1
      000513 75 F8 50         [24]  752 	mov	_SCON_1,#0x50
                                    753 ;	./libs/Common.c:94: T3CON = 0x08;  //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
      000516 75 C4 08         [24]  754 	mov	_T3CON,#0x08
                                    755 ;	./libs/Common.c:95: clr_BRCK;
      000519 53 C4 DF         [24]  756 	anl	_T3CON,#0xdf
                                    757 ;	./libs/Common.c:98: RH3 = HIBYTE(65536 - (1000000 / u32Baudrate) - 1); /*16 MHz */
      00051C 8C 6B            [24]  758 	mov	__divulong_PARM_2,r4
      00051E 8D 6C            [24]  759 	mov	(__divulong_PARM_2 + 1),r5
      000520 8E 6D            [24]  760 	mov	(__divulong_PARM_2 + 2),r6
      000522 8F 6E            [24]  761 	mov	(__divulong_PARM_2 + 3),r7
      000524 90 42 40         [24]  762 	mov	dptr,#0x4240
      000527 75 F0 0F         [24]  763 	mov	b,#0x0f
      00052A E4               [12]  764 	clr	a
      00052B 12 16 44         [24]  765 	lcall	__divulong
      00052E AC 82            [24]  766 	mov	r4,dpl
      000530 AD 83            [24]  767 	mov	r5,dph
      000532 AE F0            [24]  768 	mov	r6,b
      000534 FF               [12]  769 	mov	r7,a
      000535 74 FF            [12]  770 	mov	a,#0xff
      000537 C3               [12]  771 	clr	c
      000538 9C               [12]  772 	subb	a,r4
      000539 74 FF            [12]  773 	mov	a,#0xff
      00053B 9D               [12]  774 	subb	a,r5
      00053C F9               [12]  775 	mov	r1,a
      00053D E4               [12]  776 	clr	a
      00053E 9E               [12]  777 	subb	a,r6
      00053F E4               [12]  778 	clr	a
      000540 9F               [12]  779 	subb	a,r7
      000541 89 C6            [24]  780 	mov	_RH3,r1
                                    781 ;	./libs/Common.c:99: RL3 = LOBYTE(65536 - (1000000 / u32Baudrate) - 1); /*16 MHz */
      000543 74 FF            [12]  782 	mov	a,#0xff
      000545 C3               [12]  783 	clr	c
      000546 9C               [12]  784 	subb	a,r4
      000547 FC               [12]  785 	mov	r4,a
      000548 8C C5            [24]  786 	mov	_RL3,r4
                                    787 ;	./libs/Common.c:105: set_TR3; //Trigger Timer3
      00054A 43 C4 08         [24]  788 	orl	_T3CON,#0x08
                                    789 ;	./libs/Common.c:106: }
      00054D 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'Receive_Data_From_UART1'
                                    793 ;------------------------------------------------------------
                                    794 ;c                         Allocated to registers 
                                    795 ;------------------------------------------------------------
                                    796 ;	./libs/Common.c:108: UINT8 Receive_Data_From_UART1(void)
                                    797 ;	-----------------------------------------
                                    798 ;	 function Receive_Data_From_UART1
                                    799 ;	-----------------------------------------
      00054E                        800 _Receive_Data_From_UART1:
                                    801 ;	./libs/Common.c:112: while (!RI_1)
      00054E                        802 00101$:
      00054E 30 F8 FD         [24]  803 	jnb	_RI_1,00101$
                                    804 ;	./libs/Common.c:114: c = SBUF_1;
      000551 85 9A 82         [24]  805 	mov	dpl,_SBUF_1
                                    806 ;	./libs/Common.c:115: RI_1 = 0;
                                    807 ;	assignBit
      000554 C2 F8            [12]  808 	clr	_RI_1
                                    809 ;	./libs/Common.c:116: return (c);
                                    810 ;	./libs/Common.c:117: }
      000556 22               [24]  811 	ret
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'Send_Data_To_UART1'
                                    814 ;------------------------------------------------------------
                                    815 ;c                         Allocated to registers r7 
                                    816 ;------------------------------------------------------------
                                    817 ;	./libs/Common.c:119: void Send_Data_To_UART1(UINT8 c)
                                    818 ;	-----------------------------------------
                                    819 ;	 function Send_Data_To_UART1
                                    820 ;	-----------------------------------------
      000557                        821 _Send_Data_To_UART1:
      000557 AF 82            [24]  822 	mov	r7,dpl
                                    823 ;	./libs/Common.c:121: TI_1 = 0;
                                    824 ;	assignBit
      000559 C2 F9            [12]  825 	clr	_TI_1
                                    826 ;	./libs/Common.c:122: SBUF_1 = c;
      00055B 8F 9A            [24]  827 	mov	_SBUF_1,r7
                                    828 ;	./libs/Common.c:123: while (TI_1 == 0)
      00055D                        829 00101$:
      00055D 30 F9 FD         [24]  830 	jnb	_TI_1,00101$
                                    831 ;	./libs/Common.c:125: }
      000560 22               [24]  832 	ret
                                    833 	.area CSEG    (CODE)
                                    834 	.area CONST   (CODE)
                                    835 	.area XINIT   (CODE)
                                    836 	.area CABS    (ABS,CODE)
