### Wie funktioniert Broadcasting?
* Mehrere Sender können auf einen Übertragungskanal zugreifen
* Nachrichten werden als Pakete gesendet
* Pakete können von allen angeschlossenen Rechnern empfangen werden
* Ein Adressfeld im Paket gibt das Ziel an
    * Broadcasting: Versand an alle
    * Multicasting: Versand an eine Gruppe
    * Unicasting: Versand an einen einzelnen Empfänger

### Was ist MAC?
Beim Senden auf einem gemeinsamen Kanal kann es zu Kollisionen kommen, wenn mehrere Sender gleichzeitig den Übertragungskanal verwenden wollen. Medium Access Control (MAC, Layer 2) regelt die Vergabe des Zugriffsrechts auf den gemeinsamen Übertragungskanal.

### Welche MAC-Zugriffsverfahren gibt es?
* ALOHA
    * Erneutes Senden nach zufälliger Wartezeit nach negativer Rückmeldung
    * Slotted ALOHA: Übertragung nur zu Beginn von definierten Zeitabschnitten möglich
* CSMA (Carrier Sense Multiple Access)
    * Sender hört den Datenverkehr auf der Leitung ab
    * Sobald der Kanal frei ist, wird gesendet
    * Im Falle einer Kollision wird nach einer zufälligen Wartezeit erneut gesendet
    * CSMA/CD (Carrier Sense Multiple Access/Collission Detection)
        * Abbruch der Übertragung bei einem Fehler
    * CSMA/CA (Carrier Sense Multiple Access/Collission Avoidance)
        * Teilnehmerkennung (= Priorität)

## Es wird ein Frame an 5 Rechner geschickt. Wie nennt man diese Sendeform?
Broadcast oder Multicasting

## Welche Aufgabe erfüllt ein MAC-Protokoll?
Zugriffsverfahren

## Nennen Sie 2 MAC-Protokolle.
* (FDM) Frequency Division Multiplexing,
* (TDM) Time Division Multiplexing
* (CDMA) Code Division Multiple Access

## Zu welchen Zeitpunkten werden beim ALOHAProtokoll Frames gesendet?
Frames dürfen zu beliebigen Zeitpunkten gesendet werden

## Worin besteht der wesentliche Vorteil des CSMA?
Sender wartet, bis der Kanal frei ist. Sobald der Kanal frei ist, darf gesendet werden. Falls mehrere Sender (fast) gleichzeitig anfangen zu senden: Kollision, Wiederholung nach zufälliger Zeitspanne

## Was bedeutet CSMA/CD?
CD = Collision Detection: sobald eine Kollision erkannt wird, wird die Übertragung abgebrochen.

### In welche Unterschichten wird die Sicherungsschicht unterteilt?
* LLC: Logic Link Control
    * Fügt jedem Frame einen LLC-Header hinzu
    * dieser enthält Folge- und Bestätigungsnummern
    * Dienste
        * Unzuverlässiger Datagrammdienst
        * Bestätigter Datagrammdienst
        * Zuverlässiger, verbindungsorientierter Dienst
* MAC: Vergabe des Kanal-Zugriffsrechts 

### Welche Protokolle definiert IEEE-802?
* 802.1 Internetworking, Layer 3
* 802.2 LLC, Layer 2
* 802.3 Ethernet, Layer 1/2
* 802.5 Tokenring, Layer 1/2
* 802.11 WLAN, Layer 1/2
* 802.15 WPAN (Bluetooth), Layer 1/2

## Aus welchen beiden Teilen besteht die Sicherungsschicht bei IEEE-802?
* LLC: Datenblöcke gesichert von einer Station zu einer anderen transportieren
* MAC: Vergabe des Zugriffsrechts auf den Kanal

## Welche OSI-Schichten deckt IEEE-802 ab?
Sicherungsschicht

## Wozu dient u.a. die Präambel der Ethernet IEEE 802.3 Rahmenstruktur?
* Prüfsumme über alle Felder

## Welche Art Prüfsumme wird bei 802.3 verwendet?
CRC

## Welche Aufgabe erfüllt der LLC?
Datenblöcke gesichert von einer Station zu einer anderen transportiere. In jeden Frame wird ein LLC-Header eingefügt, welcher Folge- und Bestätigungsnummern enthält.

## Wie lange ist ein 802.3 Datenfeld?
?

