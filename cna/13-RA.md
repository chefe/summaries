# RA 1.3

## Wodurch zeichnet sich die Harvard-Architektur aus?
* Separate Speicher für Daten und Befehle
* Separate Busse zu den beiden Speichern
* Im Idealfall: in einem Taktzyklus Befehl und Daten laden

In der Praxis sind oft Mischformen von Harvard- und Von-Neumann-Rechnern zu finden.

### Was sind die Vorteil gegenüber einer Von-Neumann-Architektur?
* Befehle und Daten können gleichzeitig gelesen werden: Geschwindigkeit
* Strikte Trennung von Daten und Programmen: Sicherheit
* Datenwortbreite und Befehlswortbreite sind unabhängig voneinander
* Synchrones Laden durch mehrerer Rechenwerke

## Was versteht man unter dem Briff Pipline?
Eine Abarbeitung in Stufen (können teilweise paralellisiert werden)

## Wann ist eine Pipline voll ausgelastet?
Wenn alle Stufen etwas zu tun haben

## Wann ist eine Pipline blockiert und muss gelöscht werden?
* Wenn man bei einem bedingten Sprung an eine unvorhergesehene Stelle springt
* oder bei einem Interrupt

## Welche Benchmarkprogramme gibt es?
* Linpack: Lineare Gleichungssysteme
* SPEC: Standard Performance Evaluation
* Whetstone: Floating-Point- und Integer-Berechnungen
* Dhrystone: Integer-Berechnungen
* Weitere für PC: 3DMark, Windows-Leistungsindex, Geekbench

## In welchen Einheiten wird Computerperformance gemessen?
* MIPS: Million Instructions per Second (unspezifisch)
* Flops (MegaFlops, GigaFlops): Floating Point Operations per Second
* Laufzeit spezifischer Programme/Rechenaufgaben

## Wie lauten die wichtigsten Kennwerte der aktuell leistungsstärksten Computer (Stand 2016)?
* ca. 10 Millionen Cores
* ca. 100 Petaflops (100 \* 10^15 Flops)
* ca. 15 Megawatt Leistung

## Was bedeutet Endian?
* In welcher Reihenfolge die Ziffern einer Grösse aufgelistet werden
    * Big Endian: grosse zuerst
        * Datumsangabe 2016/10/19 (19. Oktober 2016)
        * Zahlen in Englisch: 122 one hundred twenty two
    * Little Endian: kleine zuerst
        * Datumsangabe 19.10.2016 (auch 19. Oktober 2016)
        * Zweistellige Zahlen in Deutsch: 22 zweiundzwanzig
* In der Informatik bezeichnet Endian die Byte-Reihenfolge im Arbeitsspeicher.
    * Big Endian: UNIX, Java, Motorola, Freescale
    * Little Endian: Windows, Intel

