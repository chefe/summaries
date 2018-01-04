# Adressierung

## Was gibt es für Assember Direktiven?
```
# Definiert den Beginn einer relokatiblen Sektion
ConstSec: SECTION

# Weist einem Namen einen Ausdruck zu. Nicht redefinierbar
MaxElement: EQU 20

# Definiert eine oder mehrere Konstanten und deren Namen
Alarm: DC.B $AA

# Reserviert Speicher (RAM) für Variablen. Hier 3 Word-Variablen.
VarArray: DS.W 3
```

## Für was wird die Section-Direktive gebraucht?
* definiert Programm- und Datenabschnitte
    * lassen sich nach Abschluss des Assembly-Vorganges, im Speicher verschieben lassen
* definitive Speicherbereichszuordnung geschieht während des Link-Prozesses
    * lässt sich durch das Linker-Parameterfile steuern

## Welche 6 Addressierungsarten unterstützt der HCS08?
* Inherent (kein Operand aus RAM)
    * keine explizite Operandenadresse nötig
    * Alle Operanden befinden sich in CPU-Register
    * Adresse aus dem folgenden Byte wird verwendet
    * Beispiel: `INCA`
* Immediate (1 Byte Operand im Befehl)
    * Wert aus dem folgenden Byte wird verwendet
    * Beispiel: `LDA #$1C`
* Direct (nur direct page, 1 Adr Byte)
    * Adresse aus dem folgenden Byte wird verwendet
    * Operanden im Adressbereich zwischen $00 und $FF
    * Beispiel: `LDA $08`
* Extended (ganzer 64k Bereich, 2 Adr Bytes)
    * Adresse aus dem folgenden 2 Bytes wird verwendet
    * Operanden im Adressbereich zwischen $0000 und $FFFF
    * Beispiel: `LDA $100A`
* Indexed (mit SP oder HX, 7 Unterarten)
    * es wird das HX oder SP-Register verwendet
    * effektive Adresse kann vom Programmverlauf abhängig gemacht werden
    * Beispiel: `LDA $34,X`
* Relative (für Branches, PC=PC+2+2er Compl)
    * wird nur im Zusammenhang mit Branch-Befehlen verwendet
    * folgende Byte wirkt als 2er-Komplement Offset zum PC
    * dabei wird der bereits weitergezählte Program Counter verwendet
    * der Sprungbereich beträgt somit -126 bis +129
    * Beispiel: `BCS $08` bzw. `BCS Label`

## Welche 7 Unterarten der indexierten Adressierung gibt es?
* IX
    * Indexierte Adressierung mit H:X ohne Offset
    * `LDA X`
* IX1
    * Indexierte Adressierung mit H:X und 8-bit Offset
    * `LDA $34,X`
* IX2
    * Indexierte Adressierung mit H:X und 16-bit Offset
    * `LDA $34A5,X`
* IX+
    * Indexierte Adressierung mit H:X mit Inkrement aber ohne Offset
    * Unterstützt nur MOV und CBEQ
    * Vergleiche Akku mit Wert an Adresse, die im H:X Register enthalten ist
    * Springe, falls identisch, nach Label und inkrementiere dann H:X
    * `CBEQ X+,Label`
* IX1+
    * Wie IX+, mit Inkrement und 8-bit Offset
    * Funktioniert nur mit dem Befehl CBEQ
    * `CBEQ $34,X+,Label`
* SP1
    * Wie IX1, aber mit Stackpointer SP statt H:X
    * `LDA $34,SP`
* SP2
    * Wie IX2, aber mit Stackpointer SP statt H:X
    * `LDA $34A5,SP`

