# MC-Car und Assembler

## Was muss beim Terminal für die Verbindung zu MC-Car eingestellt werden?
* Baudrate auf 9600

## Wieso hat es auf dem MC-Car zwei Mikrocontroller?
* 1x der wirkliche Controller
    * verbunden mit dem rechten USB-Anschluss
* 1x Umwandlungscontroller zur Programmierung
    * verbunden mit dem linken USB-Anschluss

## Was sind die Unterschiede zwischen Hochsprachen und Assembler?
* Hochsprachen
    * Portierbar
    * Effizienter (in der Regel)
    * Besser lesbar
    * Leichter zu warten
    * Vorzuziehen, wenn Rechenleistung und Speicherplatz ausreichen
* Assembler
    * bieten mehr Funktionen
    * erlauben zeitkritische Anwendungen
    * können in Hochsprachen eingebettet werden

## Wie sieht der Weg bis zum Programm auf dem Chips aus?
* Pre-Assembler 
    * Funktionalität: Search & Replace
    * Benötigt: Sourcecode (*.c oder *.asm)
    * Erzeugt: Sourcecode (*.c oder *.asm)
* Assembler/Compiler 
    * Funktionalität: Erstellen von Objektdateien
    * Benötigt: Sourcecode (*.c oder *.asm)
    * Erzeugt: Objektfiles (*.o), Listing (*.lst)
* Linker 
    * Funktionalität: Zusammensetzen aller Dateien
    * Benötigt: Objektfiles (*.o), Parameterfile (*.prm)
    * Erzeugt: Binärdateien, Linkeroutputfile (*.map)
* Debugger 
    * Funktionalität: Zugriff auf den Chip und herunterladen des Programms
    * Benötigt: Binärdateien, Parameterfile (*.launch)
    * Erzeugt: Download (*.abs)

## Was ist der Unterschiede zwischen einer Direktive und einem Befehl?
* Direktive
    * wird vom Pre-Assembler bearbeitet
    * ergibt nur indirekt Maschinene-Code
* Befehl
    * wird von der CPU ausgeführt
    * ergibt nur direkt Maschinene-Code

## Welche Funktionsgruppen sind auf einem Board zu finden?
* LEDs
* Joystick / Taster
* Sensoren (IR, Helligkeit, ...)
* Aktoren (Motor, Buzzer, ...)
* CPU (ein oder mehrere Chips)
* I/O (USB, GPIO, ...) 

## Welche Informationen sind im Parameterfile abgelegt?
* welche Adressen in welchen Speicherbereich kommen
* in welcher Reihenfolge die Objekte gelinkt werden müssen

