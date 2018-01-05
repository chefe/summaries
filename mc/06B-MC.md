# Timer 1 & Interrupts

## Auf welchen Ports des HCS08 liegen die beiden Timer?
* TPM1:
    * PTE2 / TPM1CH0
    * PTE3 / TPM1CH1
    * PTF0 / TPM1CH2
    * PTF1 / TPM1CH3
    * PTF2 / TPM1CH4
    * PTF3 / TPM1CH5
* TPM2: 
    * PTF4 / TPM2CH0
    * PTF5 / TPM2CH1

## Wie viele Kanäle haben die Timer des HCS08?
* TPM1: 6 Kanäle
* TPM2: 2 Kanäle

## Welche Clock Quellen gibt es beim HCS08?
* Bus-Clock (24Mhz)
* Fix System Clock (1 Mhz)
* External-Clock

## Welche Register gibt es nur einmal pro Timer Modul?
* TPM2SC (8 Bit)
    * TOF 
    * TOIE 
    * CPWMS 
    * CLKSB 
    * CLKSA 
    * PS2
    * PS1
    * PS0 
* TPM2CNT (16 Bit)
    * TPM2CNTH 
    * TPM2CNTL
* TPM2MOD (16 Bit)
    * TPM2MODH 
    * TPM2MODL

## Welche Register gibt es einmal pro Kanal?
* TPM2C0SC (8 Bit)
    * CH0F
    * CH0IE
    * MS0B
    * MS0A
    * ELS0B
    * ELS0A
* TPM2C0V (16 Bit)
    * TPM2C0VH
    * TPM2C0VL

## Für was ist der Prescaler?
* Skaliert den Clock um einen vordefinierten Faktor

## Welche Prescaler-Faktoren gibt es?
* 1, 2, 4, 8, 16, 32, 64, 128

## Wie wird die Zeit zwischen zwei Timer-Overflow Ereignisse berechnet?
`TOF = (MOD + 1) * PS / fClk`

## Was sind die Unterschiede zwischen Polling und Interrupts?
* Polling = zyklisches Abfragen
    * kürzere Programmunterbrechung
    * effiziente Status-Rettung möglich
    * Vergeudung von Rechenzeit bei seltenen Ereignissen
* Interrupt = Ausnahmebehandlung
    * sehr kurze Reaktionszeit durch automatisches Reagieren auf Ereignis
    * Unterbrechung des Programms zur Abarbeitung einer ISR
    * aufwendige Status-Rettung nötig, da Zeitpunkt unbekannt
    * sehr schwer zu debuggen

## Was bedeutet ISR?
* Interrupt-Service-Routine
* CPU-Status auf den Stack retten

## Was ist bei HCS08 im Umgang mit Interrupts speziell?
* H-Register wird nur durch C-Compiler gerettet
* H-Register geht im Assembler verloren

## Wie Unterscheiden sich ISR und Unterprogramme?
|               | ISR         | Unterprogramm  |
|---------------|-------------|----------------|
| Aufruf        | spontant    | durch BSR/JSR  |
| Statusrettung | automatisch | durch Programm |
| Rücksprung    | RTI         | RTS            |

## Welche Interruptquellen gibt es auf dem HCS08?
von der tiefste zur höchsten Priorität

* 1x Real-Time Clock
* 1x IIC Modul
* 1x Komparator Modul
* 1x A/D-Wandler
* 1x Keyboard-Interface
* 6x SCI 1/2 Module
* 10x Timersystem
* 1x USB Modul
* 2x SPI 1/2 Modul
* 1x Clock Generator
* 1x Low-Voltage Detektion
* 1x externer IRQ Pin
* 1x SW-Interrupt (SWI)
* 1x Reset Interrupt

## Wie lassen sich Interrupts global sperren und freigeben?
* `CLI`: Interrupts global freigeben
* `SEI`: Interrupts global sperren

## Was ist bei der Programmierung von Interrupts zu beachten?
* Interruptvektoren definieren
* Stack definieren und initialisieren
* Interrupt-Flags vor Freigabe löschen, damit nicht sofort ausgelöst wird
* ISR programmieren; CPU-Status wird automatisch gerettet
* in der ISR das entsprechende Interrupt-Flag löschen
* ISR mit RTI abschliessen (automatisch durch C-Compiler)
* im Hauptprogramm Interrupts global freigeben (CLI)

## Wozu werden Interrupts benötigt?
* Reagieren auf Ereignisse welche zu einem unbekannten Zeitpunkt auftreten

## Was sind Interruptvektoren und wie funktionieren sie?
* eine Art Tabelle, welche die Einsprungadressen für alle Interrupts enthält

## Wie viele Bits umfasst ein Counter im Timersystem des MC9S08JM60?
* 2 Bytes

## Wie lassen sich diese Counter aus der SW auf einen bestimmten Wert setzen?
* er lässt sich nur auf 0 setzen

## Warum realisiert man Warten mit dem Timersystem und nicht mit NOP-Befehlen?
* kleinere Energieverbrauch 
* Zyklusgenau
* Zwischenzeit kann genutzt werden

