# RA 1.1

## Was muss ein Rechner können?
Ein Rechner muss einen Algorithmus ausführen können, dazu braucht er:

* Steuerwerk: Befehle eines Programms der Reihe nach ausführen
* Speicher: Zahlen speichern
* Rechenwerk: Speicherinhalt als Zahl interpretieren und manipulieren (rechnen)
* Ablaufsteuerung: auf Inhalt des Speichers reagieren

## Was beschreibt eine Rechenarchitektur?
Die Art und Weise wie ein Rechner aus (physikalischen oder logischen) Baulementen aufgebaut ist

## Was sind die Kennwerte eines Rechners?
Rechenleistung, Ein-/Ausgabedatenrate, Antwortzeit, Speichergrösse, Leistungsverbrauch, Zuverlässigkeit, Grösse

## Kann auf einem Turing Rechner Windows 7 ausgeführt werden?
Theoretisch ja, da alle Computer gleich sind und jede Architektur emuliert werden kann

## Was besagt das Mooresche Gesetz?
* Die Anzahl der Transistoren pro Fläche verdoppelt sich alle 18 Monate.
* Die Anzahl der Transistoren pro Fläche steigt um 60% pro Jahr.

## Was ist ein Mikroprozessor?
Es werden alle Grundfunktionen (Rechenwerk, Steuerwerk, ...) auf einem einzelnen Mikrochip vereint

## Welche speziellen Arten von Prozessoren gibt es?
* Mikrocontroller: Mikroprozessor, Peripheriefunktionen und Speicher auf einem Chip (SoC: System on a Chip)
* DSP: Digitaler Signalprozessor, bearbeitet digitale Signale, z.B. Audio- oder Videosignale
* GPU: Graphics Processing Unit, für rechenintensive 2D- und 3D-Aufgaben
* Krypto-Prozessoren: ver- und entschlüsselt Daten, liegt zwischen CPU und Memory
* Mathematischer Koprozessor, z.B. FPU (Floating Point Unit); heute auf der CPU

## Was ist der Unterschied zwischen SRAM und DRAM?
* SRAM: statisches RAM, benötigt 6 Transistoren pro Speicherzelle (Flip-Flop), behält seinen Wert
* DRAM: dynaisches RAM, benötigt 1 Transistor pro Speicherzelle, muss alle 32 bis 64ms aufgefrischt werden
* PSRAM: DRAM mit eingebauter Auffrischung

## Wie sieht die Speicherhierarchie aus?
| # | Name            | Typ                           | Geschwindigkeit        | Speichergrösse |
|---|-----------------|-------------------------------|------------------------|----------------|
| 1 | Register        | SRAM                          | 0.2-1ns                | kByte          |
| 2 | Cache           | SRAM                          | 2ns                    | 0.5-8MB        |
| 3 | Arbeitsspeicher | DRAM                          | 5-10ns                 | 1-32 GB        |
| 4 | Dateisystem     | SSD, HD                       | 3-10ms (SSD 30mums)    | 60GB-10TB      |
| 5 | Archiv          | optische Medien, Magnetbänder | 1-110s (Optisch 100ms) | 240GB-5TB      |

## Wie funktioniert der Fetch/Decode/Execute-Cycle?
1. Fetch: den nächsten Befehl ins Befehlsregister laden; Programmzähler erhöhen
2. Decode: den Befehl dekodieren; ermitteln, welcher Befehl auszuführen ist; zusätzliche Datenwörter aus dem Speicher laden, falls der Befehl diese benötigt
3. Execute: den Befehl ausführen; das Ergebnis im Speicher abspeichern; weiter bei 1.

## Woraus besteht eine Von-Neumann-Maschine?
* Rechenwerk
* Steuerwerk
* Speicher
* Ein- und Ausgabe

