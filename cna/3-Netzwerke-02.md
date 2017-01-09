## Was beschreibt der Begriff Frequenz?
Anzahl Schwingungen pro Sekunde [Einheit Hertz]

## Welche physikalischen Phänomene bzw. Grössen können zur Nachrichtenübertragung verwendet werden?
Strom, Licht, Luft (Druck), Elektromagnetische Wellen

## Was ist die Grenzfrequenz einer Leitung?
Die Frequenz, bei welcher minimale Verluste entstehen, darüber gibt es starke Verluste

## Wie wird die maximale Datenübertragungsrate berechnet (bei Binärsignalen)?
Übertragungsrate, Datenrate in Bit/s = 2 * Bandbreite der Leitung in Hz

## Was bedeuten die Abkürungen der cerschiedeen Twisted Pair Arten?
* U/UTP = Unshield Unshield Twisted Pair
* U/FTP = Unshield Foiled Twisted Pair
* S/FTP = Shield Foiled Twisted Pair

## Welchen Vorteil haben differentielle Signalübertragungen?
Störsignale werden sich beim Empfänger aufheben

## Warum sind bei Twisted Pair die Leitungen verdrillt?
Zu aufhauben von Störungen

## Wozu dient der Aussenleiter bei Koaxialkabeln?
Diehnt als Rückleiter und Abschirmung gegen aussen

## Was versteht man unter einer Monomode-Glasfaser?
Nur ein einzelner Lichtstrahl geht durch die Faser

## Nennen Sie einige drahtlose Nachrichtenübertragungssysteme.
WiFi, GPS, UMTS, 3G, DAB, Bluetooth

## Was ist der Hamming-Abstand/die Hamming-Distanz?
* Die Anzahl der Bits, in denen sich zwei Codewörter unterscheiden.
* 10110011 & 11010010 => `h=3` (drei unterschiedliche Bits)

Bei `n` Bits gibt es `2^n` mögliche Codewörter. Werden alle diese Codewörter verwendet, beträgt h = 1 (keine Redundanz).

## Wozu dient der Hamming Code?
* Zum erkennen von n Übertragungsfehlern (mit dem Hamming-Abstand `h=n+1`)
* Zum korrigieren von n Übertragungsfehlern (mit dem Hamming-Abstand `h=2n+1`)

## Wie funktioniert ein Paritätsbit?
* Anhängen eines Bits, sodass die Summe aller (inkl. Paritätsbit) 1en
* ungerade ist `01010101` -> `01010101 1` (ungerade Parität)
* gerade ist `11010011` -> `11010011 1` (gerade Parität)

## Für was steht CRC?
* Cyclic Redundancy Check
* Mathematisches Modell zur Erzeugung einer effizienten Prüfsumme
* Die Bitfolge wird als Koeffizienten eines Polynoms des Grads m-1 interpretiert

## Wie funktioniert ein CRC?
* erzeugendes Polynom vom Grad n wird definiert
* wird rechts um n Bits erweitert, so dass ein neues Polynom entsteht
* Mit einem Algorithmus werden die n Bits so bestimmt, dass das neue Polynom ohne Rest durch das Generatorpolynom teilbar ist
* Beim Empfänger wird dann überprüft ob das Polynom ohne Rest durch das Generatorpolynom teilbar ist, wenn nicht wurde ein Übertragungsfehler erkannt

## Wie lauten die Aufgaben der Sicherungsschicht?
Gewährleistung einer sicheren Übertragung durch:

* Fehlererkennung (Paritäts-Bit, Checksumme, CRC)
* Fehlerkorrektur (falls möglich)
* positive Rückmeldung an Sender bei korrekter Übertragung
* Anforderung an Sender zur Wiederholung bei fehlerhafter Übertragung
* Durchnummerieren der Frames zur Erkennung vorlorener Frames
* Frame erneut senden, sollte die Empfangsbestätigung nach Timeout eintreffen

## Wodurch entstehen Fehler bei einer Datenübertragung?
Störsignale

## Muss die Übertragung eines Telefongesprächs fehlerfrei sein?
Nein, Fehler können erkannt werden

## Warum braucht eine Datenübertragung eine Fehlersicherung?
Damit Fehler erkannt werden können

## Was sagt der Hamming-Abstand aus?
Anzahl Bit, welches ändern damit ein neues gültiges Schlüsselwort entsteht

## Wie viele 1en sind in einem Wort mit gerader Parität?
eine gerade Anzahl

## Wie viele 0en sind in einem Wort mit ungerader Parität?
ist nicht definiert

## Mit welcher Schaltung werden CRC Prüfsummen berechnet?
Mit einem rückgekoppeltem Schieberegister bestehend aus (FlipFlops und EXOR)

## Wie wird bei Frames verhindert, dass Daten als Flags interpretiert werden?
Indem man ein ByteStuffing anwendet (Escapen)

## Wie wird verhindert, dass Frames verloren gehen?
Nach einem Timeout wird das Frame nochmals gesendet wenn keine Antwort kommt

