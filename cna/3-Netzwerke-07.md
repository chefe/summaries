## Was sind die Ziele der Überlastüberwachung?
Überlastungen erkennen und zur Bewältigung beitragen

## Was ist der Unterschied zwischen Überlastüberwachung und Flusskontrolle?
* Flusskontrolle kommt bei einer Punkt zu Punkt Verbindung zum Zug
* Überlastungsüberwachung kommt bei einem Teilsystem zum Zug 

## Was sind die Prinzipien der Überlastungsüberwachung?
* Überwachung des Systems, Erkennen von Überlastungen: wann und wo
* Weitergabe dieser Information an Stellen, die Gegenmassnahmen ergreifen können
* Anpassung des Systembetriebs, um das Problem zu korrigieren

## Welche Massnahmen könen in den Schichten 2-4 getroffen werden zur Steuerung vonÜberlastungen?
* Transportschicht
    * Timeout für erneute Übertragung
    * Bestätigungen (einzeln oder gesammelt, ..)
    * Flusskontrolle (straff oder locker)
* Vermittlungsschicht
    * Warteschlangen für Pakete
    * Verwerfen von Paketen
    * Management der Paket-Lebensdauer
* Sicherungsschicht
    * Timeout für erneute Übertragung
    * Bestätigungen (einzeln oder gesammelt, ..)
    * Flusskontrolle (straff oder locker)

## Was versteht man unter einem Lastabwurf?
Es werden Pakete vernichtet

* Abwurf nach Zufallsprinzip
* Abwurf der ältesten/neuesten Pakete
* Abwurf der unwichtigeren Pakete

## Was ist die Aufgabe der Flusskontrolle?
Anpassung der Übertragungsgeschwindigkeit anhand des Empfängers

## Nenne Sie einige Verfahren zur Gewährleistung der Dienstgüte
* Bereitstellung von Ressourcen im Überfluss
* Zwischenpuffern
* Leaky Bucket Algorithmus
* Token Bucket Algorithmus
* Reservieren von Ressourcen
* Zeitliche Einplannung von Paketen (Paket-Scheduling)

## Was ist der Unterschied zwischen Leaky Bucket und Token Bucket?
* Bei einem Leaky Bucket wird konstant etwas aus dem Buffer gesendet
* Leaky Bucket = Konstanter Datenstrom mit maximaler Datenrate
* Beim Token Bucket wird nur so viel gesendet, wie es dafür Tokens gibt
* Token Bucket = Konstante Datenrate, kann auch für bursh verwendet werden

## Was versteht man unter Packet Scheduling?
* Zeitliche Einplanung von Paketen
* gerechte Einteilung der Reihenfolge 
* Ortierung der Pakete nach Beendigungszeit
* Senden der Pakete nach Beendigungszeit

## Wie lässt sich die Zeit in der Warteschlange berechnen?
T = (1 / Abarbeitsungrate) * (1 / (1 - (Ankunftsrate / Verarbeitungsrate)

