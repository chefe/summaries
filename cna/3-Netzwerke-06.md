## Was ist die Aufgabe der Transportschicht?
Verlorene oder gestörte Pakete erkennen und durch Wiederholung der Übertragung korrigieren. Sowie eine einheitliche Dienste-Schnittstelle für übergeordnete Schicht, unabhängig von der verwendeten Vermittlungsschicht.

## Nennen Sie einige typische Dienstprimitive der Transportschicht.
* LISTEN (Blockieren bis ein Prozess sich verbinden möchte)
* CONNECT (aktive Verbindungsanfrage)
* SEND (Informationen senden)
* RECEIVE (Blockieren bis Daten erhalten)
* DISCONNECT (Diese Seite möchte die Verbindung beenden)

## Muss sich ein End-zu-End-Protokoll um das Routing durch das Internet kümmern?
Nein, das macht die Vermittlungsschicht

## Welche Probleme werden in der Transportschicht gelöst?
* Paketverlust
* Verzögerungszeit
* Datenstau
* Dublikate
* Wiederaufnahme einer Verbindung

## Wie funktioniert der 3-Way-Handshake?
1. Connection Request (Anforderung) mit Folgenummer x
2. Acknowledge (Bestätigung) mit Bestätigung x und neuer Folgenummer y
3. Erstes Datenpaket mit Bestätigung y

## Nennen Sie einige Unterschiede zwischen UDP und TCP.
* UDP (Unzuverlässig, Verbindungslos, einmalige, schnelle Übertragungen)
* TCP (gewährleistung, Verbindungsorientiert, Fehlerfrei, Flusskontrolle) 

## Aus welchen Feldern besteht ein UDP Header?
* UDP source port
* UDP destination port
* UDP message length
* UDP checksum

## Wie lauten die Port-Nummern für einige wichtige TCP Dienste?
* FTP: 20, 21
* SSH: 22
* Telnet: 23
* SMTP: 25 (via SSL: 465)
* DNS: 53
* HTTP: 80
* HTTPS: 443
* POP3: 110

## Wie heisst der Prozess, der alle TCP-Verbindungen behandelt?
* Unix: inetd = Internet-Dämon
* Windows: Winsock = Windows Sockets

## Unterstützt TCP auch Broadcast-Meldungen?
Nein, TCP-Verbindungen sind Endpunkt-zu-Endpunkt-Verbindungen

## Unterstützt TCP die Übertragung von sporadischen Signalen, z.B. Steuerkommandos?
Ist über TCP möglich, aber UDP ist dafür besser geeignet.

## Mit wie vielen Bits ist bei TCP der Port des Senders angegeben?
16 Bits

## Warum wird für RTP-Mulimediastreams UDP benutzt und nicht TCP? (TCP ist doch für längere Übertragungen besser geeignet.)
* Es braucht ein Echtzeit-Transportprotokoll.
* Es braucht keine Flusskontrolle, da Zeitstempel verwendet werden.

## Wie bauen die einzelnen Router im Netzwerk eine TCP-Verbindung auf?
Über einen 3-Wege-Handshake.

