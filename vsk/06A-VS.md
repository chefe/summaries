# Message Passing

## Was sind die Kriterien für ein gutes Kommuniktaions-Design?
* asynchron / synchron
* verlässlich / nicht verlässlich
* Reihenfolge garantiert oder nicht

## Welche Sende- und Empfangsarten sind dabei möglich?
* one-to-one (unicast)
* one-to-many (multicast or broadcast)
* many-to-one (client–server)
* many-to-many (all-to-all)

## Welche Kommunikationsarten gibt es?
* Persistente Kommunikation
    * Nachricht wird solange gespeichert bis Empfänger bereit ist
    * Beispiel: E-Mail
* Transiente Kommunikation
    * Nachricht wird gespeichert, solange Sender und Empfänger laufen
    * Beispiel: Router, Socket
* Asynchrone Kommunikation:
    * Sender wird unmittelbar nach der Übertragung fortgesetzt
    * Beispiel: E-Mail, Diskussionsforum
* Synchrone Kommunikation:
    * Sender wird blockiert bis die Nachricht übermittelt wurde
    * Beispiel: Telefonie, Instant Messaging, Internet-Videokonferenz

## Was sind die Unterschiede zwischen fixen und adaptiven Protokollen?
* fixe Protokolle
    * die Menge der möglichen Kennungen (IDs) sind vor der Kommunikation bekannt
    * die möglichen Argumente (Anzahl und Typ) sind vor der Kommunikation bekannt
    * es gibt keine Änderungen während der Kommunikation
* adaptive Protokolle
    * können während der Laufzeit ändern
    * Anzahl Arguement kann sich ändern
    * Argumenttypen können sich ändern
    * der Nachrichtentyp kann ändern

