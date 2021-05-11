                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.4 #12274 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _trigger_packet_send
                                     13 	.globl _startup_packet_send
                                     14 	.globl _pin_int07
                                     15 	.globl _get_device_id
                                     16 	.globl _make_packet_checksum
                                     17 	.globl _Stimer_10u
                                     18 	.globl _read_battery_voltage
                                     19 	.globl _enableDynamicPayloads
                                     20 	.globl _openReadingPipe
                                     21 	.globl _openWritingPipe
                                     22 	.globl _write
                                     23 	.globl _powerUp
                                     24 	.globl _powerDown
                                     25 	.globl _begin
                                     26 	.globl _spi_init
                                     27 	.globl _MOSI
                                     28 	.globl _P00
                                     29 	.globl _MISO
                                     30 	.globl _P01
                                     31 	.globl _RXD_1
                                     32 	.globl _P02
                                     33 	.globl _P03
                                     34 	.globl _STADC
                                     35 	.globl _P04
                                     36 	.globl _P05
                                     37 	.globl _TXD
                                     38 	.globl _P06
                                     39 	.globl _RXD
                                     40 	.globl _P07
                                     41 	.globl _IT0
                                     42 	.globl _IE0
                                     43 	.globl _IT1
                                     44 	.globl _IE1
                                     45 	.globl _TR0
                                     46 	.globl _TF0
                                     47 	.globl _TR1
                                     48 	.globl _TF1
                                     49 	.globl _P10
                                     50 	.globl _P11
                                     51 	.globl _P12
                                     52 	.globl _SCL
                                     53 	.globl _P13
                                     54 	.globl _SDA
                                     55 	.globl _P14
                                     56 	.globl _P15
                                     57 	.globl _TXD_1
                                     58 	.globl _P16
                                     59 	.globl _P17
                                     60 	.globl _RI
                                     61 	.globl _TI
                                     62 	.globl _RB8
                                     63 	.globl _TB8
                                     64 	.globl _REN
                                     65 	.globl _SM2
                                     66 	.globl _SM1
                                     67 	.globl _FE
                                     68 	.globl _SM0
                                     69 	.globl _P20
                                     70 	.globl _EX0
                                     71 	.globl _ET0
                                     72 	.globl _EX1
                                     73 	.globl _ET1
                                     74 	.globl _ES
                                     75 	.globl _EBOD
                                     76 	.globl _EADC
                                     77 	.globl _EA
                                     78 	.globl _P30
                                     79 	.globl _PX0
                                     80 	.globl _PT0
                                     81 	.globl _PX1
                                     82 	.globl _PT1
                                     83 	.globl _PS
                                     84 	.globl _PBOD
                                     85 	.globl _PADC
                                     86 	.globl _I2CPX
                                     87 	.globl _AA
                                     88 	.globl _SI
                                     89 	.globl _STO
                                     90 	.globl _STA
                                     91 	.globl _I2CEN
                                     92 	.globl _CM_RL2
                                     93 	.globl _TR2
                                     94 	.globl _TF2
                                     95 	.globl _P
                                     96 	.globl _OV
                                     97 	.globl _RS0
                                     98 	.globl _RS1
                                     99 	.globl _F0
                                    100 	.globl _AC
                                    101 	.globl _CY
                                    102 	.globl _CLRPWM
                                    103 	.globl _PWMF
                                    104 	.globl _LOAD
                                    105 	.globl _PWMRUN
                                    106 	.globl _ADCHS0
                                    107 	.globl _ADCHS1
                                    108 	.globl _ADCHS2
                                    109 	.globl _ADCHS3
                                    110 	.globl _ETGSEL0
                                    111 	.globl _ETGSEL1
                                    112 	.globl _ADCS
                                    113 	.globl _ADCF
                                    114 	.globl _RI_1
                                    115 	.globl _TI_1
                                    116 	.globl _RB8_1
                                    117 	.globl _TB8_1
                                    118 	.globl _REN_1
                                    119 	.globl _SM2_1
                                    120 	.globl _SM1_1
                                    121 	.globl _FE_1
                                    122 	.globl _SM0_1
                                    123 	.globl _EIPH1
                                    124 	.globl _EIP1
                                    125 	.globl _PMD
                                    126 	.globl _PMEN
                                    127 	.globl _PDTCNT
                                    128 	.globl _PDTEN
                                    129 	.globl _SCON_1
                                    130 	.globl _EIPH
                                    131 	.globl _AINDIDS
                                    132 	.globl _SPDR
                                    133 	.globl _SPSR
                                    134 	.globl _SPCR2
                                    135 	.globl _SPCR
                                    136 	.globl _CAPCON4
                                    137 	.globl _CAPCON3
                                    138 	.globl _B
                                    139 	.globl _EIP
                                    140 	.globl _C2H
                                    141 	.globl _C2L
                                    142 	.globl _PIF
                                    143 	.globl _PIPEN
                                    144 	.globl _PINEN
                                    145 	.globl _PICON
                                    146 	.globl _ADCCON0
                                    147 	.globl _C1H
                                    148 	.globl _C1L
                                    149 	.globl _C0H
                                    150 	.globl _C0L
                                    151 	.globl _ADCDLY
                                    152 	.globl _ADCCON2
                                    153 	.globl _ADCCON1
                                    154 	.globl _ACC
                                    155 	.globl _PWMCON1
                                    156 	.globl _PIOCON0
                                    157 	.globl _PWM3L
                                    158 	.globl _PWM2L
                                    159 	.globl _PWM1L
                                    160 	.globl _PWM0L
                                    161 	.globl _PWMPL
                                    162 	.globl _PWMCON0
                                    163 	.globl _FBD
                                    164 	.globl _PNP
                                    165 	.globl _PWM3H
                                    166 	.globl _PWM2H
                                    167 	.globl _PWM1H
                                    168 	.globl _PWM0H
                                    169 	.globl _PWMPH
                                    170 	.globl _PSW
                                    171 	.globl _ADCMPH
                                    172 	.globl _ADCMPL
                                    173 	.globl _PWM5L
                                    174 	.globl _TH2
                                    175 	.globl _PWM4L
                                    176 	.globl _TL2
                                    177 	.globl _RCMP2H
                                    178 	.globl _RCMP2L
                                    179 	.globl _T2MOD
                                    180 	.globl _T2CON
                                    181 	.globl _TA
                                    182 	.globl _PIOCON1
                                    183 	.globl _RH3
                                    184 	.globl _PWM5H
                                    185 	.globl _RL3
                                    186 	.globl _PWM4H
                                    187 	.globl _T3CON
                                    188 	.globl _ADCRH
                                    189 	.globl _ADCRL
                                    190 	.globl _I2ADDR
                                    191 	.globl _I2CON
                                    192 	.globl _I2TOC
                                    193 	.globl _I2CLK
                                    194 	.globl _I2STAT
                                    195 	.globl _I2DAT
                                    196 	.globl _SADDR_1
                                    197 	.globl _SADEN_1
                                    198 	.globl _SADEN
                                    199 	.globl _IP
                                    200 	.globl _PWMINTC
                                    201 	.globl _IPH
                                    202 	.globl _P2S
                                    203 	.globl _P1SR
                                    204 	.globl _P1M2
                                    205 	.globl _P1S
                                    206 	.globl _P1M1
                                    207 	.globl _P0SR
                                    208 	.globl _P0M2
                                    209 	.globl _P0S
                                    210 	.globl _P0M1
                                    211 	.globl _P3
                                    212 	.globl _IAPCN
                                    213 	.globl _IAPFD
                                    214 	.globl _P3SR
                                    215 	.globl _P3M2
                                    216 	.globl _P3S
                                    217 	.globl _P3M1
                                    218 	.globl _BODCON1
                                    219 	.globl _WDCON
                                    220 	.globl _SADDR
                                    221 	.globl _IE
                                    222 	.globl _IAPAH
                                    223 	.globl _IAPAL
                                    224 	.globl _IAPUEN
                                    225 	.globl _IAPTRG
                                    226 	.globl _BODCON0
                                    227 	.globl _AUXR1
                                    228 	.globl _P2
                                    229 	.globl _CHPCON
                                    230 	.globl _EIE1
                                    231 	.globl _EIE
                                    232 	.globl _SBUF_1
                                    233 	.globl _SBUF
                                    234 	.globl _SCON
                                    235 	.globl _CKEN
                                    236 	.globl _CKSWT
                                    237 	.globl _CKDIV
                                    238 	.globl _CAPCON2
                                    239 	.globl _CAPCON1
                                    240 	.globl _CAPCON0
                                    241 	.globl _SFRS
                                    242 	.globl _P1
                                    243 	.globl _WKCON
                                    244 	.globl _CKCON
                                    245 	.globl _TH1
                                    246 	.globl _TH0
                                    247 	.globl _TL1
                                    248 	.globl _TL0
                                    249 	.globl _TMOD
                                    250 	.globl _TCON
                                    251 	.globl _PCON
                                    252 	.globl _RWK
                                    253 	.globl _RCTRIM1
                                    254 	.globl _RCTRIM0
                                    255 	.globl _DPH
                                    256 	.globl _DPL
                                    257 	.globl _SP
                                    258 	.globl _P0
                                    259 	.globl _pipeRx
                                    260 	.globl _pipeTx
                                    261 	.globl _TriggerPacket
                                    262 	.globl _IdentPacket
                                    263 	.globl _flags
                                    264 	.globl _battery_count
                                    265 	.globl _wake_count
                                    266 ;--------------------------------------------------------
                                    267 ; special function registers
                                    268 ;--------------------------------------------------------
                                    269 	.area RSEG    (ABS,DATA)
      000000                        270 	.org 0x0000
                           000080   271 _P0	=	0x0080
                           000081   272 _SP	=	0x0081
                           000082   273 _DPL	=	0x0082
                           000083   274 _DPH	=	0x0083
                           000084   275 _RCTRIM0	=	0x0084
                           000085   276 _RCTRIM1	=	0x0085
                           000086   277 _RWK	=	0x0086
                           000087   278 _PCON	=	0x0087
                           000088   279 _TCON	=	0x0088
                           000089   280 _TMOD	=	0x0089
                           00008A   281 _TL0	=	0x008a
                           00008B   282 _TL1	=	0x008b
                           00008C   283 _TH0	=	0x008c
                           00008D   284 _TH1	=	0x008d
                           00008E   285 _CKCON	=	0x008e
                           00008F   286 _WKCON	=	0x008f
                           000090   287 _P1	=	0x0090
                           000091   288 _SFRS	=	0x0091
                           000092   289 _CAPCON0	=	0x0092
                           000093   290 _CAPCON1	=	0x0093
                           000094   291 _CAPCON2	=	0x0094
                           000095   292 _CKDIV	=	0x0095
                           000096   293 _CKSWT	=	0x0096
                           000097   294 _CKEN	=	0x0097
                           000098   295 _SCON	=	0x0098
                           000099   296 _SBUF	=	0x0099
                           00009A   297 _SBUF_1	=	0x009a
                           00009B   298 _EIE	=	0x009b
                           00009C   299 _EIE1	=	0x009c
                           00009F   300 _CHPCON	=	0x009f
                           0000A0   301 _P2	=	0x00a0
                           0000A2   302 _AUXR1	=	0x00a2
                           0000A3   303 _BODCON0	=	0x00a3
                           0000A4   304 _IAPTRG	=	0x00a4
                           0000A5   305 _IAPUEN	=	0x00a5
                           0000A6   306 _IAPAL	=	0x00a6
                           0000A7   307 _IAPAH	=	0x00a7
                           0000A8   308 _IE	=	0x00a8
                           0000A9   309 _SADDR	=	0x00a9
                           0000AA   310 _WDCON	=	0x00aa
                           0000AB   311 _BODCON1	=	0x00ab
                           0000AC   312 _P3M1	=	0x00ac
                           0000AC   313 _P3S	=	0x00ac
                           0000AD   314 _P3M2	=	0x00ad
                           0000AD   315 _P3SR	=	0x00ad
                           0000AE   316 _IAPFD	=	0x00ae
                           0000AF   317 _IAPCN	=	0x00af
                           0000B0   318 _P3	=	0x00b0
                           0000B1   319 _P0M1	=	0x00b1
                           0000B1   320 _P0S	=	0x00b1
                           0000B2   321 _P0M2	=	0x00b2
                           0000B2   322 _P0SR	=	0x00b2
                           0000B3   323 _P1M1	=	0x00b3
                           0000B3   324 _P1S	=	0x00b3
                           0000B4   325 _P1M2	=	0x00b4
                           0000B4   326 _P1SR	=	0x00b4
                           0000B5   327 _P2S	=	0x00b5
                           0000B7   328 _IPH	=	0x00b7
                           0000B7   329 _PWMINTC	=	0x00b7
                           0000B8   330 _IP	=	0x00b8
                           0000B9   331 _SADEN	=	0x00b9
                           0000BA   332 _SADEN_1	=	0x00ba
                           0000BB   333 _SADDR_1	=	0x00bb
                           0000BC   334 _I2DAT	=	0x00bc
                           0000BD   335 _I2STAT	=	0x00bd
                           0000BE   336 _I2CLK	=	0x00be
                           0000BF   337 _I2TOC	=	0x00bf
                           0000C0   338 _I2CON	=	0x00c0
                           0000C1   339 _I2ADDR	=	0x00c1
                           0000C2   340 _ADCRL	=	0x00c2
                           0000C3   341 _ADCRH	=	0x00c3
                           0000C4   342 _T3CON	=	0x00c4
                           0000C4   343 _PWM4H	=	0x00c4
                           0000C5   344 _RL3	=	0x00c5
                           0000C5   345 _PWM5H	=	0x00c5
                           0000C6   346 _RH3	=	0x00c6
                           0000C6   347 _PIOCON1	=	0x00c6
                           0000C7   348 _TA	=	0x00c7
                           0000C8   349 _T2CON	=	0x00c8
                           0000C9   350 _T2MOD	=	0x00c9
                           0000CA   351 _RCMP2L	=	0x00ca
                           0000CB   352 _RCMP2H	=	0x00cb
                           0000CC   353 _TL2	=	0x00cc
                           0000CC   354 _PWM4L	=	0x00cc
                           0000CD   355 _TH2	=	0x00cd
                           0000CD   356 _PWM5L	=	0x00cd
                           0000CE   357 _ADCMPL	=	0x00ce
                           0000CF   358 _ADCMPH	=	0x00cf
                           0000D0   359 _PSW	=	0x00d0
                           0000D1   360 _PWMPH	=	0x00d1
                           0000D2   361 _PWM0H	=	0x00d2
                           0000D3   362 _PWM1H	=	0x00d3
                           0000D4   363 _PWM2H	=	0x00d4
                           0000D5   364 _PWM3H	=	0x00d5
                           0000D6   365 _PNP	=	0x00d6
                           0000D7   366 _FBD	=	0x00d7
                           0000D8   367 _PWMCON0	=	0x00d8
                           0000D9   368 _PWMPL	=	0x00d9
                           0000DA   369 _PWM0L	=	0x00da
                           0000DB   370 _PWM1L	=	0x00db
                           0000DC   371 _PWM2L	=	0x00dc
                           0000DD   372 _PWM3L	=	0x00dd
                           0000DE   373 _PIOCON0	=	0x00de
                           0000DF   374 _PWMCON1	=	0x00df
                           0000E0   375 _ACC	=	0x00e0
                           0000E1   376 _ADCCON1	=	0x00e1
                           0000E2   377 _ADCCON2	=	0x00e2
                           0000E3   378 _ADCDLY	=	0x00e3
                           0000E4   379 _C0L	=	0x00e4
                           0000E5   380 _C0H	=	0x00e5
                           0000E6   381 _C1L	=	0x00e6
                           0000E7   382 _C1H	=	0x00e7
                           0000E8   383 _ADCCON0	=	0x00e8
                           0000E9   384 _PICON	=	0x00e9
                           0000EA   385 _PINEN	=	0x00ea
                           0000EB   386 _PIPEN	=	0x00eb
                           0000EC   387 _PIF	=	0x00ec
                           0000ED   388 _C2L	=	0x00ed
                           0000EE   389 _C2H	=	0x00ee
                           0000EF   390 _EIP	=	0x00ef
                           0000F0   391 _B	=	0x00f0
                           0000F1   392 _CAPCON3	=	0x00f1
                           0000F2   393 _CAPCON4	=	0x00f2
                           0000F3   394 _SPCR	=	0x00f3
                           0000F3   395 _SPCR2	=	0x00f3
                           0000F4   396 _SPSR	=	0x00f4
                           0000F5   397 _SPDR	=	0x00f5
                           0000F6   398 _AINDIDS	=	0x00f6
                           0000F7   399 _EIPH	=	0x00f7
                           0000F8   400 _SCON_1	=	0x00f8
                           0000F9   401 _PDTEN	=	0x00f9
                           0000FA   402 _PDTCNT	=	0x00fa
                           0000FB   403 _PMEN	=	0x00fb
                           0000FC   404 _PMD	=	0x00fc
                           0000FE   405 _EIP1	=	0x00fe
                           0000FF   406 _EIPH1	=	0x00ff
                                    407 ;--------------------------------------------------------
                                    408 ; special function bits
                                    409 ;--------------------------------------------------------
                                    410 	.area RSEG    (ABS,DATA)
      000000                        411 	.org 0x0000
                           0000FF   412 _SM0_1	=	0x00ff
                           0000FF   413 _FE_1	=	0x00ff
                           0000FE   414 _SM1_1	=	0x00fe
                           0000FD   415 _SM2_1	=	0x00fd
                           0000FC   416 _REN_1	=	0x00fc
                           0000FB   417 _TB8_1	=	0x00fb
                           0000FA   418 _RB8_1	=	0x00fa
                           0000F9   419 _TI_1	=	0x00f9
                           0000F8   420 _RI_1	=	0x00f8
                           0000EF   421 _ADCF	=	0x00ef
                           0000EE   422 _ADCS	=	0x00ee
                           0000ED   423 _ETGSEL1	=	0x00ed
                           0000EC   424 _ETGSEL0	=	0x00ec
                           0000EB   425 _ADCHS3	=	0x00eb
                           0000EA   426 _ADCHS2	=	0x00ea
                           0000E9   427 _ADCHS1	=	0x00e9
                           0000E8   428 _ADCHS0	=	0x00e8
                           0000DF   429 _PWMRUN	=	0x00df
                           0000DE   430 _LOAD	=	0x00de
                           0000DD   431 _PWMF	=	0x00dd
                           0000DC   432 _CLRPWM	=	0x00dc
                           0000D7   433 _CY	=	0x00d7
                           0000D6   434 _AC	=	0x00d6
                           0000D5   435 _F0	=	0x00d5
                           0000D4   436 _RS1	=	0x00d4
                           0000D3   437 _RS0	=	0x00d3
                           0000D2   438 _OV	=	0x00d2
                           0000D0   439 _P	=	0x00d0
                           0000CF   440 _TF2	=	0x00cf
                           0000CA   441 _TR2	=	0x00ca
                           0000C8   442 _CM_RL2	=	0x00c8
                           0000C6   443 _I2CEN	=	0x00c6
                           0000C5   444 _STA	=	0x00c5
                           0000C4   445 _STO	=	0x00c4
                           0000C3   446 _SI	=	0x00c3
                           0000C2   447 _AA	=	0x00c2
                           0000C0   448 _I2CPX	=	0x00c0
                           0000BE   449 _PADC	=	0x00be
                           0000BD   450 _PBOD	=	0x00bd
                           0000BC   451 _PS	=	0x00bc
                           0000BB   452 _PT1	=	0x00bb
                           0000BA   453 _PX1	=	0x00ba
                           0000B9   454 _PT0	=	0x00b9
                           0000B8   455 _PX0	=	0x00b8
                           0000B0   456 _P30	=	0x00b0
                           0000AF   457 _EA	=	0x00af
                           0000AE   458 _EADC	=	0x00ae
                           0000AD   459 _EBOD	=	0x00ad
                           0000AC   460 _ES	=	0x00ac
                           0000AB   461 _ET1	=	0x00ab
                           0000AA   462 _EX1	=	0x00aa
                           0000A9   463 _ET0	=	0x00a9
                           0000A8   464 _EX0	=	0x00a8
                           0000A0   465 _P20	=	0x00a0
                           00009F   466 _SM0	=	0x009f
                           00009F   467 _FE	=	0x009f
                           00009E   468 _SM1	=	0x009e
                           00009D   469 _SM2	=	0x009d
                           00009C   470 _REN	=	0x009c
                           00009B   471 _TB8	=	0x009b
                           00009A   472 _RB8	=	0x009a
                           000099   473 _TI	=	0x0099
                           000098   474 _RI	=	0x0098
                           000097   475 _P17	=	0x0097
                           000096   476 _P16	=	0x0096
                           000096   477 _TXD_1	=	0x0096
                           000095   478 _P15	=	0x0095
                           000094   479 _P14	=	0x0094
                           000094   480 _SDA	=	0x0094
                           000093   481 _P13	=	0x0093
                           000093   482 _SCL	=	0x0093
                           000092   483 _P12	=	0x0092
                           000091   484 _P11	=	0x0091
                           000090   485 _P10	=	0x0090
                           00008F   486 _TF1	=	0x008f
                           00008E   487 _TR1	=	0x008e
                           00008D   488 _TF0	=	0x008d
                           00008C   489 _TR0	=	0x008c
                           00008B   490 _IE1	=	0x008b
                           00008A   491 _IT1	=	0x008a
                           000089   492 _IE0	=	0x0089
                           000088   493 _IT0	=	0x0088
                           000087   494 _P07	=	0x0087
                           000087   495 _RXD	=	0x0087
                           000086   496 _P06	=	0x0086
                           000086   497 _TXD	=	0x0086
                           000085   498 _P05	=	0x0085
                           000084   499 _P04	=	0x0084
                           000084   500 _STADC	=	0x0084
                           000083   501 _P03	=	0x0083
                           000082   502 _P02	=	0x0082
                           000082   503 _RXD_1	=	0x0082
                           000081   504 _P01	=	0x0081
                           000081   505 _MISO	=	0x0081
                           000080   506 _P00	=	0x0080
                           000080   507 _MOSI	=	0x0080
                                    508 ;--------------------------------------------------------
                                    509 ; overlayable register banks
                                    510 ;--------------------------------------------------------
                                    511 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        512 	.ds 8
                                    513 ;--------------------------------------------------------
                                    514 ; internal ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area DSEG    (DATA)
      000021                        517 _wake_count::
      000021                        518 	.ds 1
      000022                        519 _battery_count::
      000022                        520 	.ds 1
      000023                        521 _flags::
      000023                        522 	.ds 1
                                    523 ;--------------------------------------------------------
                                    524 ; overlayable items in internal ram 
                                    525 ;--------------------------------------------------------
                                    526 ;--------------------------------------------------------
                                    527 ; Stack segment in internal ram 
                                    528 ;--------------------------------------------------------
                                    529 	.area	SSEG
      000080                        530 __start__stack:
      000080                        531 	.ds	1
                                    532 
                                    533 ;--------------------------------------------------------
                                    534 ; indirectly addressable internal ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area ISEG    (DATA)
                                    537 ;--------------------------------------------------------
                                    538 ; absolute internal ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area IABS    (ABS,DATA)
                                    541 	.area IABS    (ABS,DATA)
                                    542 ;--------------------------------------------------------
                                    543 ; bit data
                                    544 ;--------------------------------------------------------
                                    545 	.area BSEG    (BIT)
                                    546 ;--------------------------------------------------------
                                    547 ; paged external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area PSEG    (PAG,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XSEG    (XDATA)
      000001                        554 _IdentPacket::
      000001                        555 	.ds 19
      000014                        556 _TriggerPacket::
      000014                        557 	.ds 12
                                    558 ;--------------------------------------------------------
                                    559 ; absolute external ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XABS    (ABS,XDATA)
                                    562 ;--------------------------------------------------------
                                    563 ; external initialized ram data
                                    564 ;--------------------------------------------------------
                                    565 	.area XISEG   (XDATA)
      00002A                        566 _pipeTx::
      00002A                        567 	.ds 5
      00002F                        568 _pipeRx::
      00002F                        569 	.ds 5
                                    570 	.area HOME    (CODE)
                                    571 	.area GSINIT0 (CODE)
                                    572 	.area GSINIT1 (CODE)
                                    573 	.area GSINIT2 (CODE)
                                    574 	.area GSINIT3 (CODE)
                                    575 	.area GSINIT4 (CODE)
                                    576 	.area GSINIT5 (CODE)
                                    577 	.area GSINIT  (CODE)
                                    578 	.area GSFINAL (CODE)
                                    579 	.area CSEG    (CODE)
                                    580 ;--------------------------------------------------------
                                    581 ; interrupt vector 
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
      000000                        584 __interrupt_vect:
      000000 02 01 E1         [24]  585 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  586 	reti
      000004                        587 	.ds	7
      00000B 32               [24]  588 	reti
      00000C                        589 	.ds	7
      000013 32               [24]  590 	reti
      000014                        591 	.ds	7
      00001B 32               [24]  592 	reti
      00001C                        593 	.ds	7
      000023 32               [24]  594 	reti
      000024                        595 	.ds	7
      00002B 32               [24]  596 	reti
      00002C                        597 	.ds	7
      000033 32               [24]  598 	reti
      000034                        599 	.ds	7
      00003B 32               [24]  600 	reti
      00003C                        601 	.ds	7
      000043 32               [24]  602 	reti
      000044                        603 	.ds	7
      00004B 32               [24]  604 	reti
      00004C                        605 	.ds	7
      000053 32               [24]  606 	reti
      000054                        607 	.ds	7
      00005B 32               [24]  608 	reti
      00005C                        609 	.ds	7
      000063 32               [24]  610 	reti
      000064                        611 	.ds	7
      00006B 32               [24]  612 	reti
      00006C                        613 	.ds	7
      000073 32               [24]  614 	reti
      000074                        615 	.ds	7
      00007B 32               [24]  616 	reti
      00007C                        617 	.ds	7
      000083 32               [24]  618 	reti
      000084                        619 	.ds	7
      00008B 32               [24]  620 	reti
      00008C                        621 	.ds	7
      000093 32               [24]  622 	reti
      000094                        623 	.ds	7
      00009B 32               [24]  624 	reti
      00009C                        625 	.ds	7
      0000A3 32               [24]  626 	reti
      0000A4                        627 	.ds	7
      0000AB 32               [24]  628 	reti
      0000AC                        629 	.ds	7
      0000B3 32               [24]  630 	reti
      0000B4                        631 	.ds	7
      0000BB 32               [24]  632 	reti
      0000BC                        633 	.ds	7
      0000C3 32               [24]  634 	reti
      0000C4                        635 	.ds	7
      0000CB 32               [24]  636 	reti
      0000CC                        637 	.ds	7
      0000D3 32               [24]  638 	reti
      0000D4                        639 	.ds	7
      0000DB 32               [24]  640 	reti
      0000DC                        641 	.ds	7
      0000E3 32               [24]  642 	reti
      0000E4                        643 	.ds	7
      0000EB 32               [24]  644 	reti
      0000EC                        645 	.ds	7
      0000F3 32               [24]  646 	reti
      0000F4                        647 	.ds	7
      0000FB 32               [24]  648 	reti
      0000FC                        649 	.ds	7
      000103 32               [24]  650 	reti
      000104                        651 	.ds	7
      00010B 32               [24]  652 	reti
      00010C                        653 	.ds	7
      000113 32               [24]  654 	reti
      000114                        655 	.ds	7
      00011B 32               [24]  656 	reti
      00011C                        657 	.ds	7
      000123 32               [24]  658 	reti
      000124                        659 	.ds	7
      00012B 32               [24]  660 	reti
      00012C                        661 	.ds	7
      000133 32               [24]  662 	reti
      000134                        663 	.ds	7
      00013B 32               [24]  664 	reti
      00013C                        665 	.ds	7
      000143 32               [24]  666 	reti
      000144                        667 	.ds	7
      00014B 32               [24]  668 	reti
      00014C                        669 	.ds	7
      000153 32               [24]  670 	reti
      000154                        671 	.ds	7
      00015B 32               [24]  672 	reti
      00015C                        673 	.ds	7
      000163 32               [24]  674 	reti
      000164                        675 	.ds	7
      00016B 32               [24]  676 	reti
      00016C                        677 	.ds	7
      000173 32               [24]  678 	reti
      000174                        679 	.ds	7
      00017B 32               [24]  680 	reti
      00017C                        681 	.ds	7
      000183 32               [24]  682 	reti
      000184                        683 	.ds	7
      00018B 32               [24]  684 	reti
      00018C                        685 	.ds	7
      000193 32               [24]  686 	reti
      000194                        687 	.ds	7
      00019B 32               [24]  688 	reti
      00019C                        689 	.ds	7
      0001A3 32               [24]  690 	reti
      0001A4                        691 	.ds	7
      0001AB 32               [24]  692 	reti
      0001AC                        693 	.ds	7
      0001B3 32               [24]  694 	reti
      0001B4                        695 	.ds	7
      0001BB 32               [24]  696 	reti
      0001BC                        697 	.ds	7
      0001C3 32               [24]  698 	reti
      0001C4                        699 	.ds	7
      0001CB 32               [24]  700 	reti
      0001CC                        701 	.ds	7
      0001D3 32               [24]  702 	reti
      0001D4                        703 	.ds	7
      0001DB 02 02 6D         [24]  704 	ljmp	_pin_int07
                                    705 ;--------------------------------------------------------
                                    706 ; global & static initialisations
                                    707 ;--------------------------------------------------------
                                    708 	.area HOME    (CODE)
                                    709 	.area GSINIT  (CODE)
                                    710 	.area GSFINAL (CODE)
                                    711 	.area GSINIT  (CODE)
                                    712 	.globl __sdcc_gsinit_startup
                                    713 	.globl __sdcc_program_startup
                                    714 	.globl __start__stack
                                    715 	.globl __mcs51_genXINIT
                                    716 	.globl __mcs51_genXRAMCLEAR
                                    717 	.globl __mcs51_genRAMCLEAR
                                    718 	.area GSFINAL (CODE)
      00026A 02 01 DE         [24]  719 	ljmp	__sdcc_program_startup
                                    720 ;--------------------------------------------------------
                                    721 ; Home
                                    722 ;--------------------------------------------------------
                                    723 	.area HOME    (CODE)
                                    724 	.area HOME    (CODE)
      0001DE                        725 __sdcc_program_startup:
      0001DE 02 03 82         [24]  726 	ljmp	_main
                                    727 ;	return from main will return to caller
                                    728 ;--------------------------------------------------------
                                    729 ; code
                                    730 ;--------------------------------------------------------
                                    731 	.area CSEG    (CODE)
                                    732 ;------------------------------------------------------------
                                    733 ;Allocation info for local variables in function 'pin_int07'
                                    734 ;------------------------------------------------------------
                                    735 ;	main.c:63: void pin_int07(void) __interrupt 0x3B
                                    736 ;	-----------------------------------------
                                    737 ;	 function pin_int07
                                    738 ;	-----------------------------------------
      00026D                        739 _pin_int07:
                           000007   740 	ar7 = 0x07
                           000006   741 	ar6 = 0x06
                           000005   742 	ar5 = 0x05
                           000004   743 	ar4 = 0x04
                           000003   744 	ar3 = 0x03
                           000002   745 	ar2 = 0x02
                           000001   746 	ar1 = 0x01
                           000000   747 	ar0 = 0x00
      00026D C0 E0            [24]  748 	push	acc
      00026F C0 00            [24]  749 	push	ar0
      000271 C0 D0            [24]  750 	push	psw
      000273 75 D0 00         [24]  751 	mov	psw,#0x00
                                    752 ;	main.c:66: if (PIF & 0x08 )
      000276 E5 EC            [12]  753 	mov	a,_PIF
      000278 30 E3 0C         [24]  754 	jnb	acc.3,00102$
                                    755 ;	main.c:68: flags.triggerflag = 1;
      00027B 78 23            [12]  756 	mov	r0,#_flags
      00027D E6               [12]  757 	mov	a,@r0
      00027E 44 01            [12]  758 	orl	a,#0x01
      000280 F6               [12]  759 	mov	@r0,a
                                    760 ;	main.c:69: flags.triggerstate = 1;
      000281 78 23            [12]  761 	mov	r0,#_flags
      000283 E6               [12]  762 	mov	a,@r0
      000284 44 02            [12]  763 	orl	a,#0x02
      000286 F6               [12]  764 	mov	@r0,a
      000287                        765 00102$:
                                    766 ;	main.c:72: PIF = 0x00;
      000287 75 EC 00         [24]  767 	mov	_PIF,#0x00
                                    768 ;	main.c:74: }
      00028A D0 D0            [24]  769 	pop	psw
      00028C D0 00            [24]  770 	pop	ar0
      00028E D0 E0            [24]  771 	pop	acc
      000290 32               [24]  772 	reti
                                    773 ;	eliminated unneeded push/pop ar1
                                    774 ;	eliminated unneeded push/pop dpl
                                    775 ;	eliminated unneeded push/pop dph
                                    776 ;	eliminated unneeded push/pop b
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'startup_packet_send'
                                    779 ;------------------------------------------------------------
                                    780 ;	main.c:132: void startup_packet_send(void)
                                    781 ;	-----------------------------------------
                                    782 ;	 function startup_packet_send
                                    783 ;	-----------------------------------------
      000291                        784 _startup_packet_send:
                                    785 ;	main.c:136: IdentPacket.mHeader.mStart = PACKET_START;
      000291 90 00 01         [24]  786 	mov	dptr,#_IdentPacket
      000294 74 80            [12]  787 	mov	a,#0x80
      000296 F0               [24]  788 	movx	@dptr,a
                                    789 ;	main.c:137: IdentPacket.mHeader.mVersion = PACKET_VERSION;
      000297 90 00 02         [24]  790 	mov	dptr,#(_IdentPacket + 0x0001)
      00029A 74 04            [12]  791 	mov	a,#0x04
      00029C F0               [24]  792 	movx	@dptr,a
                                    793 ;	main.c:138: IdentPacket.mHeader.mPacketType = ePacketTypeIdent;
      00029D 90 00 03         [24]  794 	mov	dptr,#(_IdentPacket + 0x0002)
      0002A0 74 AA            [12]  795 	mov	a,#0xaa
      0002A2 F0               [24]  796 	movx	@dptr,a
                                    797 ;	main.c:139: IdentPacket.mHeader.mNodeId = get_device_id();
      0002A3 12 14 7F         [24]  798 	lcall	_get_device_id
      0002A6 AE 82            [24]  799 	mov	r6,dpl
      0002A8 AF 83            [24]  800 	mov	r7,dph
      0002AA 90 00 04         [24]  801 	mov	dptr,#(_IdentPacket + 0x0003)
      0002AD EE               [12]  802 	mov	a,r6
      0002AE F0               [24]  803 	movx	@dptr,a
      0002AF EF               [12]  804 	mov	a,r7
      0002B0 A3               [24]  805 	inc	dptr
      0002B1 F0               [24]  806 	movx	@dptr,a
                                    807 ;	main.c:140: IdentPacket.mHeader.mCounter =0x00;
      0002B2 90 00 07         [24]  808 	mov	dptr,#(_IdentPacket + 0x0006)
      0002B5 E4               [12]  809 	clr	a
      0002B6 F0               [24]  810 	movx	@dptr,a
      0002B7 A3               [24]  811 	inc	dptr
      0002B8 F0               [24]  812 	movx	@dptr,a
      0002B9 A3               [24]  813 	inc	dptr
      0002BA F0               [24]  814 	movx	@dptr,a
      0002BB A3               [24]  815 	inc	dptr
      0002BC F0               [24]  816 	movx	@dptr,a
                                    817 ;	main.c:141: IdentPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
      0002BD 12 13 3C         [24]  818 	lcall	_read_battery_voltage
      0002C0 75 6B 64         [24]  819 	mov	__divuint_PARM_2,#0x64
      0002C3 75 6C 00         [24]  820 	mov	(__divuint_PARM_2 + 1),#0x00
      0002C6 12 15 4A         [24]  821 	lcall	__divuint
      0002C9 AE 82            [24]  822 	mov	r6,dpl
      0002CB 90 00 06         [24]  823 	mov	dptr,#(_IdentPacket + 0x0005)
      0002CE EE               [12]  824 	mov	a,r6
      0002CF F0               [24]  825 	movx	@dptr,a
                                    826 ;	main.c:142: IdentPacket.BuildData.mDay = BUILD_DAY;
      0002D0 90 00 0B         [24]  827 	mov	dptr,#(_IdentPacket + 0x000a)
      0002D3 74 0B            [12]  828 	mov	a,#0x0b
      0002D5 F0               [24]  829 	movx	@dptr,a
                                    830 ;	main.c:143: IdentPacket.BuildData.mMonth = BUILD_MONTH;
      0002D6 90 00 0C         [24]  831 	mov	dptr,#(_IdentPacket + 0x000b)
      0002D9 74 05            [12]  832 	mov	a,#0x05
      0002DB F0               [24]  833 	movx	@dptr,a
                                    834 ;	main.c:144: IdentPacket.BuildData.mYear = BUILD_YEAR;
      0002DC 90 00 0D         [24]  835 	mov	dptr,#(_IdentPacket + 0x000c)
      0002DF 74 15            [12]  836 	mov	a,#0x15
      0002E1 F0               [24]  837 	movx	@dptr,a
                                    838 ;	main.c:145: IdentPacket.BuildData.mHour = BUILD_HOUR;
      0002E2 90 00 0E         [24]  839 	mov	dptr,#(_IdentPacket + 0x000d)
      0002E5 74 10            [12]  840 	mov	a,#0x10
      0002E7 F0               [24]  841 	movx	@dptr,a
                                    842 ;	main.c:146: IdentPacket.BuildData.mMmin = BUILD_MIN;
      0002E8 90 00 0F         [24]  843 	mov	dptr,#(_IdentPacket + 0x000e)
      0002EB 74 34            [12]  844 	mov	a,#0x34
      0002ED F0               [24]  845 	movx	@dptr,a
                                    846 ;	main.c:147: IdentPacket.BuildData.mSec = BUILD_SEC;
      0002EE 90 00 10         [24]  847 	mov	dptr,#(_IdentPacket + 0x000f)
      0002F1 74 0F            [12]  848 	mov	a,#0x0f
      0002F3 F0               [24]  849 	movx	@dptr,a
                                    850 ;	main.c:148: IdentPacket.BuildData.mVersioHi = BUILD_VER_HI;
      0002F4 90 00 11         [24]  851 	mov	dptr,#(_IdentPacket + 0x0010)
      0002F7 74 02            [12]  852 	mov	a,#0x02
      0002F9 F0               [24]  853 	movx	@dptr,a
                                    854 ;	main.c:149: IdentPacket.BuildData.mVersionLo = BUILD_VER_LO;
      0002FA 90 00 12         [24]  855 	mov	dptr,#(_IdentPacket + 0x0011)
      0002FD 74 0D            [12]  856 	mov	a,#0x0d
      0002FF F0               [24]  857 	movx	@dptr,a
                                    858 ;	main.c:150: IdentPacket.mChecksum = make_packet_checksum((uint8_t *)&IdentPacket, sizeof(IdentPacket));
      000300 75 6B 13         [24]  859 	mov	_make_packet_checksum_PARM_2,#0x13
      000303 90 00 01         [24]  860 	mov	dptr,#_IdentPacket
      000306 75 F0 00         [24]  861 	mov	b,#0x00
      000309 12 14 3B         [24]  862 	lcall	_make_packet_checksum
      00030C AF 82            [24]  863 	mov	r7,dpl
      00030E 90 00 13         [24]  864 	mov	dptr,#(_IdentPacket + 0x0012)
      000311 EF               [12]  865 	mov	a,r7
      000312 F0               [24]  866 	movx	@dptr,a
                                    867 ;	main.c:151: write((uint8_t *)&IdentPacket, sizeof(IdentPacket));
      000313 75 3A 13         [24]  868 	mov	_write_PARM_2,#0x13
      000316 90 00 01         [24]  869 	mov	dptr,#_IdentPacket
      000319 75 F0 00         [24]  870 	mov	b,#0x00
                                    871 ;	main.c:152: }
      00031C 02 0A A2         [24]  872 	ljmp	_write
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'trigger_packet_send'
                                    875 ;------------------------------------------------------------
                                    876 ;	main.c:171: void trigger_packet_send(void)
                                    877 ;	-----------------------------------------
                                    878 ;	 function trigger_packet_send
                                    879 ;	-----------------------------------------
      00031F                        880 _trigger_packet_send:
                                    881 ;	main.c:173: TriggerPacket.mHeader.mCounter += 1;
      00031F 90 00 1A         [24]  882 	mov	dptr,#(_TriggerPacket + 0x0006)
      000322 E0               [24]  883 	movx	a,@dptr
      000323 FC               [12]  884 	mov	r4,a
      000324 A3               [24]  885 	inc	dptr
      000325 E0               [24]  886 	movx	a,@dptr
      000326 FD               [12]  887 	mov	r5,a
      000327 A3               [24]  888 	inc	dptr
      000328 E0               [24]  889 	movx	a,@dptr
      000329 FE               [12]  890 	mov	r6,a
      00032A A3               [24]  891 	inc	dptr
      00032B E0               [24]  892 	movx	a,@dptr
      00032C FF               [12]  893 	mov	r7,a
      00032D 0C               [12]  894 	inc	r4
      00032E BC 00 09         [24]  895 	cjne	r4,#0x00,00103$
      000331 0D               [12]  896 	inc	r5
      000332 BD 00 05         [24]  897 	cjne	r5,#0x00,00103$
      000335 0E               [12]  898 	inc	r6
      000336 BE 00 01         [24]  899 	cjne	r6,#0x00,00103$
      000339 0F               [12]  900 	inc	r7
      00033A                        901 00103$:
      00033A 90 00 1A         [24]  902 	mov	dptr,#(_TriggerPacket + 0x0006)
      00033D EC               [12]  903 	mov	a,r4
      00033E F0               [24]  904 	movx	@dptr,a
      00033F ED               [12]  905 	mov	a,r5
      000340 A3               [24]  906 	inc	dptr
      000341 F0               [24]  907 	movx	@dptr,a
      000342 EE               [12]  908 	mov	a,r6
      000343 A3               [24]  909 	inc	dptr
      000344 F0               [24]  910 	movx	@dptr,a
      000345 EF               [12]  911 	mov	a,r7
      000346 A3               [24]  912 	inc	dptr
      000347 F0               [24]  913 	movx	@dptr,a
                                    914 ;	main.c:174: TriggerPacket.mTriggerData.triggerstate = P13;// (uint8_t) flags.triggerstate;
      000348 A2 93            [12]  915 	mov	c,_P13
      00034A E4               [12]  916 	clr	a
      00034B 33               [12]  917 	rlc	a
      00034C 90 00 1E         [24]  918 	mov	dptr,#(_TriggerPacket + 0x000a)
      00034F F0               [24]  919 	movx	@dptr,a
                                    920 ;	main.c:175: TriggerPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
      000350 12 13 3C         [24]  921 	lcall	_read_battery_voltage
      000353 75 6B 64         [24]  922 	mov	__divuint_PARM_2,#0x64
      000356 75 6C 00         [24]  923 	mov	(__divuint_PARM_2 + 1),#0x00
      000359 12 15 4A         [24]  924 	lcall	__divuint
      00035C AE 82            [24]  925 	mov	r6,dpl
      00035E 90 00 19         [24]  926 	mov	dptr,#(_TriggerPacket + 0x0005)
      000361 EE               [12]  927 	mov	a,r6
      000362 F0               [24]  928 	movx	@dptr,a
                                    929 ;	main.c:176: TriggerPacket.mChecksum = make_packet_checksum((uint8_t *)&TriggerPacket, sizeof(TriggerPacket));
      000363 75 6B 0C         [24]  930 	mov	_make_packet_checksum_PARM_2,#0x0c
      000366 90 00 14         [24]  931 	mov	dptr,#_TriggerPacket
      000369 75 F0 00         [24]  932 	mov	b,#0x00
      00036C 12 14 3B         [24]  933 	lcall	_make_packet_checksum
      00036F AF 82            [24]  934 	mov	r7,dpl
      000371 90 00 1F         [24]  935 	mov	dptr,#(_TriggerPacket + 0x000b)
      000374 EF               [12]  936 	mov	a,r7
      000375 F0               [24]  937 	movx	@dptr,a
                                    938 ;	main.c:177: write((uint8_t *)&TriggerPacket, sizeof(TriggerPacket));
      000376 75 3A 0C         [24]  939 	mov	_write_PARM_2,#0x0c
      000379 90 00 14         [24]  940 	mov	dptr,#_TriggerPacket
      00037C 75 F0 00         [24]  941 	mov	b,#0x00
                                    942 ;	main.c:178: }
      00037F 02 0A A2         [24]  943 	ljmp	_write
                                    944 ;------------------------------------------------------------
                                    945 ;Allocation info for local variables in function 'main'
                                    946 ;------------------------------------------------------------
                                    947 ;	main.c:187: void main(void)
                                    948 ;	-----------------------------------------
                                    949 ;	 function main
                                    950 ;	-----------------------------------------
      000382                        951 _main:
                                    952 ;	main.c:189: clr_BODEN;				 // Kill brown out
                                    953 ;	assignBit
      000382 A2 AF            [12]  954 	mov	c,_EA
      000384 92 00            [24]  955 	mov	_BIT_TMP,c
                                    956 ;	assignBit
      000386 C2 AF            [12]  957 	clr	_EA
      000388 75 C7 AA         [24]  958 	mov	_TA,#0xaa
      00038B 75 C7 55         [24]  959 	mov	_TA,#0x55
      00038E 53 A3 7F         [24]  960 	anl	_BODCON0,#0x7f
                                    961 ;	assignBit
      000391 A2 00            [12]  962 	mov	c,_BIT_TMP
      000393 92 AF            [24]  963 	mov	_EA,c
                                    964 ;	main.c:190: ADCCON1 = 0x00;			 // turn off the ADC
      000395 75 E1 00         [24]  965 	mov	_ADCCON1,#0x00
                                    966 ;	main.c:191: Set_All_GPIO_Quasi_Mode; // Set port drivers
      000398 75 B1 00         [24]  967 	mov	_P0M1,#0x00
      00039B 75 B2 00         [24]  968 	mov	_P0M2,#0x00
      00039E 75 B3 00         [24]  969 	mov	_P1M1,#0x00
      0003A1 75 B4 00         [24]  970 	mov	_P1M2,#0x00
      0003A4 75 AC 00         [24]  971 	mov	_P3M1,#0x00
      0003A7 75 AD 00         [24]  972 	mov	_P3M2,#0x00
                                    973 ;	main.c:197: P13_Input_Mode;		// Input mode.
      0003AA 43 B3 08         [24]  974 	orl	_P1M1,#0x08
      0003AD 53 B4 F7         [24]  975 	anl	_P1M2,#0xf7
                                    976 ;	main.c:199: PICON |= 0x21;		// Edge triggered.
      0003B0 43 E9 21         [24]  977 	orl	_PICON,#0x21
                                    978 ;	main.c:200: set_PINEN3;			// Neg edge detection.
      0003B3 43 EA 08         [24]  979 	orl	_PINEN,#0x08
                                    980 ;	main.c:201: set_PIPEN3;			// Pos edge detection.
      0003B6 43 EB 08         [24]  981 	orl	_PIPEN,#0x08
                                    982 ;	main.c:205: set_EPI;
      0003B9 43 9B 02         [24]  983 	orl	_EIE,#0x02
                                    984 ;	main.c:221: EA = 1;					   // Enable irq's
                                    985 ;	assignBit
      0003BC D2 AF            [12]  986 	setb	_EA
                                    987 ;	main.c:228: spi_init();
      0003BE 12 11 89         [24]  988 	lcall	_spi_init
                                    989 ;	main.c:232: begin();
      0003C1 12 09 BC         [24]  990 	lcall	_begin
                                    991 ;	main.c:233: enableDynamicPayloads();
      0003C4 12 0D 1F         [24]  992 	lcall	_enableDynamicPayloads
                                    993 ;	main.c:234: openWritingPipe(pipeTx);
      0003C7 90 00 2A         [24]  994 	mov	dptr,#_pipeTx
      0003CA 75 F0 00         [24]  995 	mov	b,#0x00
      0003CD 12 0C 2B         [24]  996 	lcall	_openWritingPipe
                                    997 ;	main.c:235: openReadingPipe(1, pipeRx);
      0003D0 75 46 2F         [24]  998 	mov	_openReadingPipe_PARM_2,#_pipeRx
      0003D3 75 47 00         [24]  999 	mov	(_openReadingPipe_PARM_2 + 1),#(_pipeRx >> 8)
      0003D6 75 48 00         [24] 1000 	mov	(_openReadingPipe_PARM_2 + 2),#0x00
      0003D9 75 82 01         [24] 1001 	mov	dpl,#0x01
      0003DC 12 0C 6D         [24] 1002 	lcall	_openReadingPipe
                                   1003 ;	main.c:236: powerUp();
      0003DF 12 0A 87         [24] 1004 	lcall	_powerUp
                                   1005 ;	main.c:238: Stimer_10u(10);
      0003E2 90 00 0A         [24] 1006 	mov	dptr,#0x000a
      0003E5 12 06 A4         [24] 1007 	lcall	_Stimer_10u
                                   1008 ;	main.c:239: startup_packet_send();
      0003E8 12 02 91         [24] 1009 	lcall	_startup_packet_send
                                   1010 ;	main.c:244: TriggerPacket.mHeader.mStart = PACKET_START;
      0003EB 90 00 14         [24] 1011 	mov	dptr,#_TriggerPacket
      0003EE 74 80            [12] 1012 	mov	a,#0x80
      0003F0 F0               [24] 1013 	movx	@dptr,a
                                   1014 ;	main.c:245: TriggerPacket.mHeader.mVersion = PACKET_VERSION;
      0003F1 90 00 15         [24] 1015 	mov	dptr,#(_TriggerPacket + 0x0001)
      0003F4 74 04            [12] 1016 	mov	a,#0x04
      0003F6 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	main.c:246: TriggerPacket.mHeader.mPacketType = ePacketTypeTrigger;
      0003F7 90 00 16         [24] 1019 	mov	dptr,#(_TriggerPacket + 0x0002)
      0003FA 74 22            [12] 1020 	mov	a,#0x22
      0003FC F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	main.c:247: TriggerPacket.mHeader.mNodeId = get_device_id();
      0003FD 12 14 7F         [24] 1023 	lcall	_get_device_id
      000400 AE 82            [24] 1024 	mov	r6,dpl
      000402 AF 83            [24] 1025 	mov	r7,dph
      000404 90 00 17         [24] 1026 	mov	dptr,#(_TriggerPacket + 0x0003)
      000407 EE               [12] 1027 	mov	a,r6
      000408 F0               [24] 1028 	movx	@dptr,a
      000409 EF               [12] 1029 	mov	a,r7
      00040A A3               [24] 1030 	inc	dptr
      00040B F0               [24] 1031 	movx	@dptr,a
                                   1032 ;	main.c:248: TriggerPacket.mHeader.mCounter = 0;
      00040C 90 00 1A         [24] 1033 	mov	dptr,#(_TriggerPacket + 0x0006)
      00040F E4               [12] 1034 	clr	a
      000410 F0               [24] 1035 	movx	@dptr,a
      000411 A3               [24] 1036 	inc	dptr
      000412 F0               [24] 1037 	movx	@dptr,a
      000413 A3               [24] 1038 	inc	dptr
      000414 F0               [24] 1039 	movx	@dptr,a
      000415 A3               [24] 1040 	inc	dptr
      000416 F0               [24] 1041 	movx	@dptr,a
                                   1042 ;	main.c:249: TriggerPacket.mHeader.mBatteryVolts = read_battery_voltage() / 100;	
      000417 12 13 3C         [24] 1043 	lcall	_read_battery_voltage
      00041A 75 6B 64         [24] 1044 	mov	__divuint_PARM_2,#0x64
      00041D 75 6C 00         [24] 1045 	mov	(__divuint_PARM_2 + 1),#0x00
      000420 12 15 4A         [24] 1046 	lcall	__divuint
      000423 AE 82            [24] 1047 	mov	r6,dpl
      000425 AF 83            [24] 1048 	mov	r7,dph
      000427 90 00 19         [24] 1049 	mov	dptr,#(_TriggerPacket + 0x0005)
      00042A EE               [12] 1050 	mov	a,r6
      00042B F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	main.c:265: while (1)
      00042C                       1053 00102$:
                                   1054 ;	main.c:275: powerDown();
      00042C 12 0A 75         [24] 1055 	lcall	_powerDown
                                   1056 ;	main.c:277: clr_SPIEN;
      00042F 53 F3 BF         [24] 1057 	anl	_SPCR,#0xbf
                                   1058 ;	main.c:279: ADCCON1 = 0x00; // Turn off the ADC.
      000432 75 E1 00         [24] 1059 	mov	_ADCCON1,#0x00
                                   1060 ;	main.c:280: clr_BODEN;		// Disable undervoltage detection.
                                   1061 ;	assignBit
      000435 A2 AF            [12] 1062 	mov	c,_EA
      000437 92 00            [24] 1063 	mov	_BIT_TMP,c
                                   1064 ;	assignBit
      000439 C2 AF            [12] 1065 	clr	_EA
      00043B 75 C7 AA         [24] 1066 	mov	_TA,#0xaa
      00043E 75 C7 55         [24] 1067 	mov	_TA,#0x55
      000441 53 A3 7F         [24] 1068 	anl	_BODCON0,#0x7f
                                   1069 ;	assignBit
      000444 A2 00            [12] 1070 	mov	c,_BIT_TMP
      000446 92 AF            [24] 1071 	mov	_EA,c
                                   1072 ;	main.c:281: PIF = 0x00;
      000448 75 EC 00         [24] 1073 	mov	_PIF,#0x00
                                   1074 ;	main.c:282: set_PD;			// Enter power-down mode.
      00044B 43 87 02         [24] 1075 	orl	_PCON,#0x02
                                   1076 ;	main.c:283: set_SPIEN;
      00044E 43 F3 40         [24] 1077 	orl	_SPCR,#0x40
                                   1078 ;	main.c:285: powerUp();
      000451 12 0A 87         [24] 1079 	lcall	_powerUp
                                   1080 ;	main.c:289: trigger_packet_send();
      000454 12 03 1F         [24] 1081 	lcall	_trigger_packet_send
                                   1082 ;	main.c:294: }
      000457 80 D3            [24] 1083 	sjmp	00102$
                                   1084 	.area CSEG    (CODE)
                                   1085 	.area CONST   (CODE)
                                   1086 	.area XINIT   (CODE)
      001964                       1087 __xinit__pipeTx:
      001964 C7                    1088 	.db #0xc7	; 199
      001965 C7                    1089 	.db #0xc7	; 199
      001966 C7                    1090 	.db #0xc7	; 199
      001967 C7                    1091 	.db #0xc7	; 199
      001968 C7                    1092 	.db #0xc7	; 199
      001969                       1093 __xinit__pipeRx:
      001969 E7                    1094 	.db #0xe7	; 231
      00196A E7                    1095 	.db #0xe7	; 231
      00196B E7                    1096 	.db #0xe7	; 231
      00196C E7                    1097 	.db #0xe7	; 231
      00196D E7                    1098 	.db #0xe7	; 231
                                   1099 	.area CABS    (ABS,CODE)
