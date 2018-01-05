# Stack & BSR

## Wie funktioniert der Stack?
* spezieller Speicherbereich im RAM
* arbeitet nach dem LIFO-Prinzip (Last-In-First-Out)
* Adressierung erfolgt über den Stack-Pointer
* wächst von unten nach oben

## Wo zeigt der Stackpointer hin?
* zeigt stets auf den nächsten freien Speicherplatz
* wächst in Richtung kleinerer Adressen

## Welcher Operationen gibt es auf dem Stack?
* PUSH
    * Daten auf den Stack legen
    * dekrementiert den Stack-Pointer
* PULL
    * Daten vom Stack holen
    * inkrementiert den Stack-Pointer

## Wie wird der Stack in Assembler initialisiert?
```
Stacksize:  EQU $40

DATA:       SECTION
TofStack:   DS Stacksize-1 ; Stack reservieren
BofStack:   DS 1

PROGRAM:    SECTION
            LDHX #(BofStack+1) ; Stackpointer initialisieren
            TXS ; SP := HX - 1

            PSHA ; CPU-Status retten: Akku und
            PSHX ; X-Register

            PULX ; CPU-Status wiederherstellen
            PULA ; Reihenfolge beachten (LIFO!)
            ; Stackpointer zeigt wieder auf BofStack
```

## Welche Befehle werden für Unterprogramme in Assembler verwendet?
* BSR / JSR
    * Push PC auf den Stack
* RTS
    * Pull PC vom Stack

## Was sind die Vor- und Nachteile von Unterprogrammen?
* Vorteile
    * geringerer Speicherbedarf 
    * kleinerer Entwicklungsaufwand
    * kleineres Fehlerrisiko
    * höhere Produktivität im Team
    * kürzere Compile-Zeit
    * Bibliotheken mit Standardfunktionen
* Nachteile
    * langsamere Programmausführung
    * mehr Speicher notwendig

## Welche Informationen werden auf dem Stack gespeichert?
* Lokale Variablen
* Rücksprungadressen
* Parameterübergabe

## Welche Informationen können nicht auf dem Stack gespeichert werden?
* alles vor dem `main`, da dann noch kein Stack existiert
* Daten auf dem Heap

## Welche Arten der Parameterübergabe kennen Sie und wie werden diese beim HCS08 realisiert? 
* über globale Variablen
* mit den eingebauten Register
* über den Stack

