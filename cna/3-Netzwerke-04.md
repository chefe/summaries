## Was ist die Aufgaben der Vermittlungsschicht?
Transportiert Pakete von der Quelle bis zum Ziel durch das gesamte Netzwerk, bzw. durch alle Teilnetz

## Wie lassen sich Netzwerke Unterteilen?
* PAN: Personal Area Network (Vernetzung der von einer Person benutzten Geräte)
* LAN: Local Area Network (Vernetzung in einem Gebäude/Firmengelände)
* MAN: Metropolitan Area Network (Vernetzung einer Stadt)
* WAN: Wide Area Network (Vernetzung von Städten, Ländern, Interkontinental)

## Erklären Sie Store-and-Forward
Pakete werden jeweils an den nächsten Router geschickt, dort zwischengespeichert und dann gegebenenfalls weitergeleitet bis sie am Ziel ankommen.

## Auf Welche zwei Arten kann die Vermittlungsschicht arbeiten?
* Verbindungslos (Datagrammdienst)
    * Vermittlung einzelner Pakete durch das Netzwerk
    * Jedes Paket trägt volle Zieladresse
    * Jedes Paket kann unterschiedliche Wege nehmen
    * Beispiele: Internet Protokoll (IP)
* Verbindungsorientiert (virtuelle Verbindung)
    * Verbindung wird aufgebaut
    * Qualität der Verbindung kann gewährleistet werden
    * Beispiele: Telefonsignalisierung (ISDN)

## Wie funktioniert die Paketvermittlung?
* Die Router geben Pakete jeweils an den nächsten Router weiter.
* Die Auswahl des nächsten Routers erfolgt aufgrund der Paketadresse

## Wie funktioniert die Leitungsvermittlung?
* Jedes Paket hat einen Kennzeichner, der angibt zu welcher Verbindung das Paket gehört
* Die Router geben die Pakete immer auf dem selben Weg an den nächsten Router weiter

## Wie werden die Routing-Tabellen erstellt?
* statisch, aus einer Initialisierungsdatei beim Start
* dynamisch, durch Berechnung während des Betriebs

## Woher weiss ein Router, wohin er ein Datagramm weiterleiten soll?
Durch die Routing-Tabelle

## Was ist der Vorteil von dynamischen Routing-Tabellen?
Es können während dem Betrieb die besten/kürzesten Wege gefunden werden

## Nennen Sie Anforderungen an einen Routing-Algorithmus.
genau, einfach, robust, fair, optimal

## Wozu dienen Routing-Algorithmen?
Sie füllen die Routing-Tabelle aufgrund von Messungen und/oder Schätzungen auf und können sich dabei der Topologie anpassen.

## Welche Routing-Algorithmen gibt es?
* Shortest Path Routing (nach Dijkstra)
* Flooding (Fluten)
* Distance Vector Routing (dynamisch, berücksichtigt Netzlast)
* Link State Routing/Shortest Path First
* Hierarchisches Routing
* Broadcast-Routing
* Multicast-Routing
