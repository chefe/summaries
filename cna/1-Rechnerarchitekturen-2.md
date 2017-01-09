# RA 1.2

## Wie wird eine BCD-Zahl dargestellt?
Jeder Ziffer im Dezimalsystem wird als 4-bit-Zahl dargestellt. (Beispiel 8539 = 1000 0101 0011 1001)

## Wie können negative Zahlen dargestellt werden?
* Vorzeichenbehafteter Wert: erstes Bit 0 für positive, 1 für negative Zahlen
* 1er-Komplement: alle Bits umkehren
* 2er-Komplement: alle Bits umkehren, eins hinzuaddieren
* Exzesscode: Versatz um +n (häufig um 127)

## Welche Gleitkommazahlen gibt es nach IEEE 754?
* einfache Genauigkeit: 32 Bits (1 Vorzeichen, 8 Exponent, 23 Mantisse)
* doppelte Genauigkeit: 64 Bits (1 Vorzeichen, 11 Exponent, 52 Mantisse)

## Wie wird eine Fliesskommazahl in IEEE 754 dargestellt?
* Vorzeichen ermitteln, 1 für negative, 0 für positive Zahl
* die Zahl durch Multiplikation bzw. Division mit 2^n in das Intervall [1;2[ bringen (normalisieren)
* den (positiven oder negativen!) Exponenten n mit Excess127 normalisieren (127 addieren)
* von der normalisierten Zahl 1 abziehen (redundant, da immer eine 1 vorne steht)
* die Mantisse aus der Summe von 1/2+1/4+...+1/2^n darstellen und bei den entsprechenden Stellen die Bits auf 1 setzen
* Vorzeichen, Exponent und Mantisse binär auflisten
* die Binärzahlen zu je 4 Bits gruppieren

## Wie ermittelt man eine Fliesskommazahl anhand der IEEE-754-Darstellung?
* jede Ziffer der hexadezimalen Zahl mit vier Bits im Binärcode darstellen
* die Bitreihe aufteilen
    * Erstes Bit: Vorzeichen
    * die nächsten 8 (single) bzw. 11 (double) Bits: Exponent
    * die letzten 23 (single) bzw. 52 (double) Bits: Mantisse
* die Mantisse aufsummieren
    * Erstes Bit = 1/2
    * Zweites Bit = 1/4
    * n-tes Bit = 1/2^n
* die Mantisse mit 1 addieren (bei der Konvertierung weggelassen, da redundant)
* den Exponent bestimmen und 127 davon subtrahieren (Excess127)
* den Wert ausrechnen
    * Mantisse \* 2^Exponent
    * Vorzeichen nicht vergessen

## Mit welcher Schaltung lassen sich AND, OR und NOT realisieren?
* AND: zwei serielle Schalter
* OR: zwei parallele Schalter
* NOT: ein Öffner

## Wie lauten die DeMorganschen Gesetze?
* !(A || B) == !A && !B
* !(A && B) == !A || !B

## Wie lassen sich Schaltung nur mit NANDs und NORs bauen?
* NOT = NOR oder NAND mit gleichen Eingängen
* AND = 2 NAND (hinterinandergeschaltet)
* AND = 3 NOR (jeder Eingang negiert und dann verknüpft)
* OR = 2 NOR (hinterinandergeschaltet)
* OR = 3 NAND (jeder Eingang negiert und dann verknüpft)

