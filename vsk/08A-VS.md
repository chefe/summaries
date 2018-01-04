# Verteilung & Kommunikation

## Was ist eine Middleware?
* auch bekannt als Zwischenanwendung oder Vermittlungssoftware
* bezeichnet Programme, die zwischen Anwendungen vermitteln
* dabei sollte Komplexität und Infrastruktur verborgen werden

## Welche Middleware-Kategorien gibt es?
* Kommunikationsorientierte Middleware
    * Der Schwerpunkt liegt in der Abstraktion der Netzwerkprogrammierung.
    * Beispiele: RPC, RMI, Web Service
* Nachrichtenorientierte Middleware
    * Arbeitet über den Austausch von Nachrichten mit Hilfe von Warteschlangen.
    * Beispiele: JMS, SOAP
* Anwendungsorientierte Middleware
    * Im Mittelpunkt steht vor allem die Unterstützung verteilter Anwendungen.
    * Beispiele: CORBA, JEE, Microsoft .NET und WCF

## Welche zwei Kommunikationsmodelle gibt es?
* Synchrone Kommunikation
    * Kommunikationspartner sind beim Senden und Empfangen synchronisiert
    * es wird gewartet (blockieren), bis die Kommunikation abgeschlossen ist
* Asynchrone Kommunikation
    * Das Senden und Empfangen von Daten ist zeitlich versetzt 
    * Kommunikation findet ohne Blockieren des Prozesses statt 
    * (z.B. durch Warten auf die Antwort des Empfängers)
    * Der Empfänger muss nicht einmal aktiv sein

## Welche Arten von Transparenz gibt es?
* Ortstransparenz
    * Der Ort, an dem sich ein Dienst befindet, ist dem Benutzer nicht bekannt.
* Zugriffstransparenz
    * Der Zugriff auf die Ressource erfolgt immer auf die gleiche Art und Weise
    * egal ob diese sich lokal oder entfernt im Netz befindet
* Nebenläufigkeitstransparenz
    * mehreren Benutzern können gleichzeitig auf die Ressourcen zuzugreifen
    * das System sorgt dafür, dass exklusive Zugriffe möglich sind
    * gegenenfalls werden Daten synchronisiert oder repliziert
* Fehler- und Ausfalltransparenz
    * Der Anwendung bleiben typische Fehler weitgehend verborgen
    * Beispiele: Übertragungsfehler (eine Komponente fällt, ...)
* Sprachtransparenz
    * Die Kommunikation ist unabhängig von der verwendeten Programmiersprache
* Replikationstransparenz
    * Aus Performancegründen kann es mehrere Kopien derselben Ressource geben
    * System sorgt für die transparente Replikation der Änderungen

## Wie heissen die beiden bekanntesten Architekturmodelle?
* Client-Server
    * typisch langlebender Server- und kurzlebende Client-Prozesse
    * entspricht oft Geschäftsvorgängen
* Peer-to-Peer
    * gleichberechtigte Prozesse laufen lokal
    * tauschen nur bei Bedarf untereinander Informationen aus
    * es wird kein zentraler Prozess benötig

## Was ist das Prinzip hinter RPC?
* heisst Remote Procedure Call
* Middleware zum Aufruf von Funktionen in anderen Adressräumen
* baut auf der Semantik von Prozeduraufrufen auf
* wird genauso aufgerufen wie eine lokale Prozedur / lokale Funktion

## Wie wird eine RPC Schnittstelle beschrieben?
* Namen der Prozedur
* Parameter
* Rückgabewert

## Welche Fehlersemantiken gibt es bei RPC?
* Maybe Semantik
    * man ignoriert die Fehlerfälle und trifft keine Vorkehrungen
    * bietet keinerlei Garantien
    * nach dem best effort Prinzip
    * günstig zu implementieren
* At-least-once Semantik
    * Prozedur wird mindestens einmal ausgeführt
    * Client setzt nach Aufforderung einen Timer
    * erhält er keine Antwort, wird die Prozedur noch einmal aufgerufen
    * evtl. wird die Prozedur mehrfach ausgeführt
* At-most-once Semantik
    * Prozedur wird im Server höchstens einmal ausgeführt
    * komplexes Protokoll: Nummerierung und Pufferung von Nachrichten
* Exactly-once Semantik
    * Prozedur wird in jedem Fall genau einmal ausgeführt
    * Kombination der verschiedenen Möglichkeiten
    * teuerste Semantik

