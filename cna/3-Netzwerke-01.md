# Kapitel Netzwerke

## Was ist die Bitrate menschlicher Sprache?
ca. 32 kbit/s

## Was bezeichnet man als Latenzzeit und wie berechnet man sie?
Die Latenzzeit ist die Zeit, die vergeht, bis ein Paket vollständig beim Empfänger angekommen ist.

Latenzzeit = Distanz/Ausbreitungsgeschwindigkeit + Paketgrösse/Durchsatz + Wartezeit

## Wie wird die Bitfehlerrate berechnet?
BER = Anzahl fehlerhaften Bits / Gesamtanzahl der gesendeten Bits

## Welche Service Primitives gibt es im OSI-Modell?
* Request: Auf System A ruft die höhere Schicht einen Service einer tieferen Schicht auf
* Indication: Auf System B meldet die tiefere Schicht der höheren Schicht, dass ein Request eingegangen ist
* Response: Auf System B gibt die höhere Schicht der tieferen Schicht eine Antwort
* Confirm: Auf System A bestätigt die tiefere Schicht der höheren Schicht die Anfrage

## Wodurch zeichnen sich verbindungsorientierte und verbindngslose Dienste aus?
* verbindungsorientiert (Beispiel Telefon)
    * Analogie: Telefonverkehrt
    * Nachrichten tragen keine Adressen
    * es gibt eine Verbindung
    * Phasen
        1. Verbindungsaufgau
        2. Datenbertragung
        3. Verbindungsabbau
* verbindungslos (Beispiel EMail)
    * Analogie: Briefverkehr
    * Nachrichten tragen Adressen
    * es gibt keine Verbindung

## Was bedeutet OSI-Referenzmodell?
Open Systems Interconnection Reference Model

## Wie heissen die Schichten im OSI- und TCP/IP-Referenzmodell?
| OSI                       | TCP/IP            |
| ------------------------- | ----------------- |
| Application (Anwendung)   | Application       |
| Presentation (Darstellung)|                   |
| Session (Sitzung)         |                   |
| Transport (Transport)     | Transport         |
| Network (Vermittlung)     | Internet          |
| Data Link (Sicherung)     | Host-to-network   |
| Physical (Bitübertragung) |                   |

## Wie lautet der Merksatz um sich die Schichten des Modells zu merken?
* Alle Priester saufen Tequila nach der Predigt
* Please do not touch steves pet aligator

## Welche Protokolle gibt es im TCP/IP-Referenzmodell?
* Application (Telnet, FTP, SMTP, DNS)
* Transport (TCP, UDP)
* Network (IP)
* Host-to-network (ADSL, WLAN, LAN, WAN)

## Was ist der Unterschied zwischen einem Strukturmodell und einem Referenzmodell?
* Struckturmodell (Physikalische Relationen, Logische Relationen, Komponenten)
* Referenzmodell (Umfassende Darstellung Dient für reale Implementierungen als Bezug)

## Was sind bekannte Netztopologiene?
* Bus (alle an einer Leitung)
* Ring (je mit zwei Nachbaren verbunden)
* Stern (mit einer zentralen Stelle verbunden)
* vermaschtes Netz

## Welche Adressierungsebenen gibt es?
* Port-Nummer zur Identifizierung der Anwendung
* Transportprotokolladresse (TCP/UDP)
* Endsystemadresse zur Adressierung des Zielsystems (z.B. IP-Adresse)
* Link-Level-Adressierung (z.B. MAC-Adresse einer Netzwerkkarte)

## Was ist ein endlicher Automat?
* System mit endlich verschiedenen Zuständen
* Übergängen zwischen den Zuständen
* Eingänge: Ereignisse die diese Übergänge auslösen
* Ausgaben: Aktionen

