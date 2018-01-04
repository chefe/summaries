# MC & CPU

## Was sind die Abkürzungen für einen Mikrocontroller?
MCU oder MC

## Was ist der Unterschied zwischen Prozessor und MCU?
* MCU hat viel mehr drinn
    * RAM und ROM
    * Address-, Daten- und Steuerbus
    * IO und Peripherien

## Aus welchen Komponenten besteht eine MCU?
* CPU (Zentrale Verarbeitungseinheit)
* Speicher für Programm & Daten
* Ein-/Ausgabe-Einheiten (für Kommunikation mit der Umgebung)
* Bus-System (verbindet Systemteile)

## Welche zwei Arten von CPUs gibt es?
* RISC
    * Reduced instruction set computer
* CISC
    * Complex instruction set computer

## Welche 2 Architekturen werden unterschieden?
* Von-Neumann Architektur: 
    * nur ein gemeinsamer Bus für Programm und Daten
    * Programm- und Daten im gleichen Memory
    * oft in low-cost MCUs
* Harvard-Architektur:
    * zwei getrennte Bussysteme für Programm und Daten
    * viel höherere Datendurchsatz
    * oft in high-performance MCUs

## Mit welchen Zahlensystemen wird häufig gerechnet?
* Dezimalsystem (Basis 10)
* Dualsystem (Basis 2)
* Hexdezimalsystem (Basis 16)

## Wie werden negative Zahlen in der MC-Technik dargestellt?
* mit dem Zweier-Komplement

## Wie wird ein 2er Komplement berechnet?
* Vorgehen ist in beide Richtungen gleich
* Zahl in Dualsystem umwandeln
    * 9 => 01001
* 1er Komplement (invertieren)
    * 01001 => 10110
* 2er Komplement (1er + 1)
    * 10110 + 00001 => 10111

## Was ist der Unterschied zwischen Carry und Overflow?
* Carry
    * bei vorzeichenlosen Zahlen
    * beim Übergang zwischen kleinster und grösster Zahl
    * beim Wechsel zwischen `1111` und `0000`
* Carry
    * bei Zahlen mit Vorzeichen
    * beim Übergang zwischen betragsmässig grössten Zahlen
    * beim Wechsel zwischen `0111` und `1000`

## Was ist bei der Modulo-Arithmetik zu beachten? 
* unsigned => carry bit auswerten
* signed => overflow bit beachten

## Welche Arten von Bitgruppen gibt es?
* Nibble / Tetrade (4 Bit)
* Byte / Oktett (8 Bit)
* Word (16 Bit)

## Wie ist ein Word in der Programmiersprache C definiert?
* die grösstmögliche Speichergrösse des Prozessors

## Was bedeuten die Abkürzungen MSB und LSB?
* MSB: 
    * Most Significant Bit
    * höchstwertiges Bit
* LSB: 
    * Least Significant Bit
    * kleinstwertiges Bit

## Wie lassen sich die Anzahl Bitspeicherplätze berechnen?
* Anzahl Adressleitungen = n
* Anzahl Datenleitungen = k
* Anzahl Speicherstellen = 2^n
* Anzahl Bitspeicherplätze = 2^n * k

## Welche Umrechnungszahlen sollte man immer im Kopf haben?
* 1K = 2^10 = 1024 Bit = 10 Adressleitungen
* 64K = 2^16 = 65536 Bit = 16 Adressleitungen

## Welche bekannten Logikbausteine gibt es?
* AND, OR, NANAD, NOR; NOT, XOR, XNOR

## Was ist die Funktionalität eines Multiplexers?
* eine Art Weiche
* hat 1 Eingang, 1 Steueringang und mehrere Ausgänge
* abhängig von einem Steuersignal wird das Eingangssingnal auf einer anderen Ausgangsleitung wieder ausgegeben

## Wie funktioniert ein D-FlipFlop?
* speichert ein Bit
* bei steigender Flanke der Clock wird das Eingangssignal gespeichert
* gespeichertes Bit wird dann am Ausgang ausgeben

## Wie funktioniert der Befehlszyklus der CPU?
* Instruction Fetch
    * Befehlswort aus dem Speicher ins Befehlsregister der CPU holen
* Instruction Decode
    * Befehl erkennen, zur Festlegung der Programmschritte im Steuerwerk
* Operand Fetch
    * Falls nötig weitere Operanden aus dem Speicher in CPU-Register holen
* Instruction Execute
    * Befehlsausführung, Abarbeitung des Programms durch das Steuerwerk
* Next Address
    * Bestimmung der Speicheradresse des nächsten auszuführenden Befehls

## Stellen Sie -4 im Zweier-Komplement als 16-bit Hex-Zahl dar?
* 4 => 0000 0000 0000 0100
* 1er => 1111 1111 1111 1011
* 2er => 1111 1111 1111 1100
* 1111 1111 1111 1100 => FFFC

## Wie viele Bit-Speicherplätze beinhaltet ein 32K x 8 Speicher?
* 256K

## Wie viele Adressleitungen besitzt der Speicher?
* 15 Adressleitungen

## Wie lautet die höchste Adresse (Hex)?
* 0111 1111 1111 1111 => 7FFF

## Worin besteht der Unterschied zwischen einem Mikrocontroller und einem Mikroprozessor?
* Mikroprozessor: Es werden alle Grundfunktionen (Rechenwerk, Steuerwerk, ...) auf einem einzelnen Mikrochip vereint
* Mikrocontroller: Mikroprozessor, Peripheriefunktionen und Speicher auf einem Chip (SoC: System on a Chip)

## Was sind die 3 Haupt-Systemteile eines jeden Mikrocontrollers?
* CPU
* Speicher
* IO

## Welche Busse unterscheidet man in einer MCU?
* Steuerbus
* Adressbus
* Datenbus

## Welche der Busse sind bidirektional?
* Datenbus

## Welche Funktionseinheiten beinhaltet eine CPU?
* ALU (Arithmetic Logic Unit)
* CU (Control Unit)
* RAM (Random Access Memory)
* Befehls-Decoder

## Welche Arten von Registern existieren in einer MCU?
* PC (Programm Counter)
* AKKU (Akkumulator)
* OP Reg (Operation Register)
* INST Reg (Instruction Register)

