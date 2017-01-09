# RA 1.5

## Welche Levels/Stufen gibt es bei den Rechnerarchitekturen?
* Level 5: Problem-oriented language level
    * Translation (compiler)
* Level 4: Assembly language level
    * Translation (assembler)
* Level 3: Operating system machine level
    * Partial interpretation (operating system)
* Level 2: Instruction set architecture level
    * Interpretation (microprogram) or direct execution
* Level 1: Microarchitecture level
    * Hardware
* Level 0: Digital logic level

## Welche Operationsarten gibt es?
* Datentransfer-Operationen
* Arithmetische und logische Operationen
* Programmablaufsteuerung

## Welche Informationen enthält ein Befehl?
* durchzuführende Operation
* 0, 1 oder n Operanden: Typ, Länge Adressierungsart und Adressen von:
    * erstem Quellenoperand
    * zweitem Quellenoperand
    * Resultat
* Adresse des nächsten Befehls
    * implizit (durch Befehlslänge)
    * explizit (durch bedingten Sprung)

## Welche Adressierungsarten gibt es?
* Absolute oder direkte Adressierung: absolute Adresse
    * LDA $0832 (lade den Wert aus Speicherzelle 832)
* Registeradressierung: Name des Registers
    * LDA R1 (lade den Wert aus dem Register 1)
* Unmittelbare Adressierung: Wertangabe
    * LDA #13 (lade den Wert 13)
* Indirekte Adressierung
    * LDA (IX): lade den Wert aus dem Register, dessen Adresse unter "IX" zu finden ist
* Indizierte Adressierung: absolute Adressierung mit Versatz
    * LDA $0832, 5 (lade den Wert fünf Speicherzellen nach der Adresse 832)

## Welche Arten von Befehlen gibt es?
* Einadressbefehle
    * INC $001: Erhöhe den Wert auf der Speicherzelle 1 um 1
* Zweiadressbefehle
    * ADD $001, $002: Addiere die Werte auf den Speicherzellen 1 und 2 und schreibe das Ergebnis auf die Speicherzelle 1 (oder 2)
* Dreiadressbefehle
    * ADD $001, $002, $003: Addiere die Werte auf den Speicherzellen 1 und 2 und schreibe das Ergebnis auf die Speicherzelle 3

## Was macht und woraus besteht ein Steuerwerk?
Das Steuerwerk steuert den Ablauf der Befehlsabarbeitung. Es verfügt über:

* einen Program Counter, der auf die nächste Instruktion zeigt
* ein Instruktionsregister
* ein Adressregister
* einen Stackpointer

## Wie funktioniert ein Stack?
* Der Stack ist ein Stapelspeicher, die Daten werden darauf "gestapelt".
* Es kann nur immer auf das zuoberst gespeicherte Datenelement zugegriffen werden.
    * LIFO: last in first out
    * FILO: first in last out
* Der Stack Pointer (Stapelzeiger) zeigt immer auf den obersten Eintrag
* Befehle
    * push: Daten auf den Stack schreiben (obendrauf legen)
    * pop: Daten vom Stack auslesen (wegnehmen)

## Wozu wird ein Stack gebraucht?
* Zur Ausführung von Unterprogrammen
    * Parameterübergabe
    * Speicherung der Rücksprungadresse
    * Ablage des Rückgabewertes
* Als Zwischenspeicher
* Zur Interrupt-Behandlung

## Was versteht man unter einem Interrupt?
* Unterbrechungsanforderung für dringende Aufgaben durch ein externes Signal
* Den Interrupt-Eingängen werden Prioritäten zugeordnet
* Sonderfall: Interrupt per Software ausgelöst: Trap

## Was ist der Unterschied zwischen einem Unterprogramm und einem Interrupt?
* UP zum Zeitpunkt der Programmierung eingeplant
* ISR: wird durch ein externes Ereignis ausgelöst

## Wie funktioniert einen Interrup Controller?
* Interrupt Request IRQ von Gerät
* Interruptsignal zur CPU absenden
* CPU unterbricht, rettet Context auf Stack, zeigt acknowledge (INTA) an
* CPU springt mit Hilfe der Interruptvektortabelle in die entsprechende ISR
* ISR liesst Geräteregister aus und startet entsprechende Aktionen
* Return from Interrupt: RTI

