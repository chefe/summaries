# Maskieren, Schiebern und Verzweigen

## Welche bitweise Verknüpfungen mit 8-Bit Operanden gibt es?
* AND - logische UND-Verknüpfung
* ORA - logische ODER-Verknüpfung
* EOR - logische Exklusive-ODER-Verknüpfung
* NOT - invertieren aller Bits

## Welche Bitmanipulationsbefehle gibt es?
```
# n,Addr Bit n in einer Speicherstelle löschen (DIR)
BCLR

# n,Addr Bit n in einer Speicherstelle setzen (DIR)
BSET

# Addr Akku mit Inhalt von Addr bitweise AND verknüpfen,
# ohne Akku und Inhalt von Addr zu ändern.
# Beeinflusst nur N- und Z-Flag.
BIT

# Carry-Flag C löschen
CLC

# Carry-Flag C setzen
SEC

# Interrupt-Mask Bit I löschen (Interrupt enable)
CLI

# Interrupt - Mask Bit I setzen (Interrupt disable)
SEI
```

## Welche Schiebe- und Rotationsbefehle gibt es?
* Logische Operation
    * LSL (in Richtung MSB, schieben nach links)
    * LSR (in Richtung LSB, schieben nach rechts)
* Arithmetische Operation
    * ASL (LSL, Multiplikation mit 2)
    * ASR (Division durch 2)
* Rotation
    * ROL (nach links rotieren, carry benutzen)
    * ROR (nach rechts rotieren, carry benutzen)

## Welche Programmverzweigungsbefehle gibt es?

* Unbedingte Verzweigungen

| Befehl | Bedeutung            |
|--------|----------------------|
| BRA    | Branch always        |
| BRN    | Branch never         |
| BSR    | Branch to subroutine |

* Test eines einzelnen Flags

| Befehl | Test | Bedeutung             |
|--------|------|-----------------------|
| BEQ    | Z=1  | Branch if equal       |
| BNE    | Z=0  | Branch if not equal   |
| BCS    | C=1  | Branch if Carry set   |
| BCC    | C=0  | Branch if Carry clear |
| BMI    | N=1  | Branch if Minus       |
| BPL    | N=0  | Branch if Plus        |

* Arithmetischer Vergleich des Akkus mit einer Speicherstelle

| Befehl   | Test | Bedeutung |
|----------|------|-----------|
| BGT      | >    | signed    |
| BHI      | >    | unsigned  |
| BGE      | >=   | signed    |
| BHS, BCC | >=   | unsigned  |
| BLE      | <=   | signed    |
| BLS      | <=   | unsigned  |
| BLT      | <    | signed    |
| BLO, BCS | <    | unsigned  |
| BEQ      | =    | signed    |
| BEQ      | =    | unsigned  |

## Welche Compare-Befehle gibt es auf dem HCS08?
```
# Vergleiche Akku-Inhalt mit 8-bit Operand
CMP opr8

# Vergleiche X-Register Inhalt mit 8-bit Operand
CPX opr8

# Vergleiche HX-Register Inhalt mit 16-bit Operand
CPHX opr16 
```

## Welche Programmverzweigung mit Branch gibt es?
```
; Verzweigt nach Label, wenn Bit n der
; Speicherstelle an Adresse Addr nicht
; gesetzt ist (Addr nur DIR)
BRCLR n,Addr,Label 

; Verzweigt nach Label, wenn Bit n der
; Speicherstelle an Adresse Addr gesetzt ist
; (Addr nur DIR)
BRSET n,Addr,Label 
```

## Was ist der Unterschied zwischen COMA und EOR #$FF ?
* COMA
    * inherente Adressierung
    * nur 1 Zyklus
* EOR
    * immidate Adressierung
    * 2 Zyklen

## Wie viele Zyklen erfordert die Ausführung der Befehle BCLR bzw. BSET und warum?
* 2 für Daten laden
* 1 für Wert laden
* 1 für Wert maskieren
* 1 für Wert speichern

## Welche Flag-Kombination testet der Befehl BGE und warum?
* overflow XOR negativ
* siehe Wikipedia

## Warum gibt es den Befehl BRN im Befehlssatz der HCS08-CPU?
* Debugging, 3 Zyklen wie jedere andere Branchbefehl

