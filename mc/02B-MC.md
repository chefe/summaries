# HCS08

## Welche Register hat der HCS08?
* Accumulator (A, 8Bit)
* Index Register (H:X, 16Bit)
* Stack Pointer (SP, 16Bit)
* Program Counter (PC, 16Bit)
* Condition Code Register (CCR, 8Bit)

## Welche Flags beinhaltet das CCR Register?
```
+---+---+---+---+---+---+---+---+
| V | 1 | 1 | H | I | N | Z | C |
+---+---+---+---+---+---+---+---+
```

## Welche Flags beinhaltet das CCR Register?
* V (two's complement overflow)
* H (half-carry)
* I (interrupt mask)
* N (negative)
* Z (zero)
* C (carry)

## Wie ist der Speicher des HCS08 aufgebaut?
* 0x0000 - 0x00Af
    * Direct Page Registers
* 0x00B0 - 0x10AF
    * RAM (4096 Bytes)
* 0x10B0 - 0x17FF
    * Flash (1872 Bytes)
* 0x1800 - 0x185F
    * High Page Registers(96 Bytes)
* 0x1860 - 0x195F
    * USB-RAM (256 Bytes)
* 0x1960 - 0xFFFF
    * Flash (59088 Bytes)

## Welches sind die wichtigsten Konfigurationsregister der Ports?
* Direct Page 
    * PTAD = Port A Data Register
    * PTADD = Port A Data Direction Register
    * ...
* High Page 
    * PTAPE = Port A Pullup Enable Register
    * PTASE = Port A Slew Rate Control Enable Register
    * PTADS = Port A Drive Strength Selection Register 

