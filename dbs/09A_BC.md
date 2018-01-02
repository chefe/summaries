# Blockchain

## Was ist eine Trusted Third Party?
* ist eine dritte Instanz, der zwei Parteien vertrauen.
* bezeichnet Vertrauenswürdige dritte Partei

## Was sind Beispiele für eine Trusted Third Party?
* Grundbuchamt
* Ticketdatenbank
* Elektrizitätswerk
* Einwohnerkontrolle

## Welche 3 Arten von Systemen gibt es?
* Zentrales System 
    * Zentrale Instanz dient als Anlaufstelle
    * hat absolute Entscheidungshoheit
    * Bsp.: Nationalbank, Gehirn, Machtapparat, etc.
* Dezentrales System
    * Entscheidungshoheit und Kontrolle wird auf mehrere Instanzen verteilt
    * Es besteht eine Hierarchie zwischen den Knoten
    * Bsp.: Internet, Bankensystem, Skype, Tor, etc.
* Verteiltes System 
    * Alle Peers im Netzwerk sind gleichwertig. 
    * Es gibt weder Hierarchien noch Instanzen welche für Koordination zuständig sind
    * Das Netzwerk regelt sich autonom
    * Bps.: Peer-to-Peer Netzwerke, etc.

## Auf welche Arten kann die Vertrauenswürdigkeit ohne eine Trusted Third Party besteht?
* Option 1: Mario und Alex vertrauen sich blind
* Option 2: Mario und Alex setzen einen schriftlichen Vertrag auf
* Option 3: Mario und Alex ziehen eine neutrale Instanz hinzu
* Option 4: Smart Contract auf einem Distributed Ledger

## Was bedeutet Distributed Ledger?
* Verschlüsselung der Verträge
* Mehrfache Kopie der Verträge
* Sicherheit durch Konsens

## Was sind Smart Contracts?
* sind Computerprotokolle, welche die Abwicklung von Verträgen technisch unterstützen
* bilden die Logik vertraglicher Regelungen technisch ab
* sind teilweise oder vollständig selbst ausführbar oder selbst durchsetzbar oder beides

##  Was speichert ein Distributed Ledger?
* speichert nicht den Kontostand sondern Transaktionen
* Damit Bitcoins transferiert werden können, wird der output einer führen Transaktion als input für eine neue Transaktion verwendet.
* speichert somit lediglich die verketteten Transaktionen

## Was sind die Schritt bei der Erstellung einer neuen Bitcoin Adresse?
* Berechnung eines Private Key
* Aus dem Private Key wird danach der Public Key abgeleitet
* Aus dem Public Key wiederum wird mittels hashing die Bitcoin Adresse berechnet

## Was ist das Ziel einer Bitcoin Adresse?
Durch den Einsatz von kryptographischen Methoden wird sichergestellt, dass aus einer 
Bitcoin Adresse weder Public- noch Private Key abgeleitet werden können

## Was ist ein Distributed Ledger?
* Dokument mit Aufzeichnung von Transaktionen
* ist ein Peer-to-Peer Netzwerk mit zahlreichen Nodes
* welche jeweils die Rolle einer Datenbank einnehmen
* Je mehr Nodes desto höher die Sicherheit des distributed Ledgers

## Welche Arten von Nodes gibt es bei Bitcoin?
* Full Node
    * sind in einem losen Netzwerk miteinander verbunden
    * Kommunikation findet per Message Broadcasting statt
    * besitzt eine eigene Kopie der Blockchain
    * prüft die Gültigkeit von neuen Blöcken & Transaktionen gemäss Consensus Rules
    * kommunizieren den Konsens über die Validität im Netzwerk
* Miner Node
    * Full Nodes, haben aber zusätzliche noch die Aufgabe Transaktionen in Blöcke zu schreiben
    * als Belohnung für die Erstellung von Blöcken erhalten sie eine vordefinierte Anzahl Bitcoins (Consensus Rules)
    * der Mining-Prozess ist absichtlich Ressourcenintensiv damit die Anzahl neuer Blöcke konstant bleibt
    * der Empfänger einer Transaktionen muss warten, bis die Transaktion in der Blockchain fix verankert ist
    * bei Bitcoin wird der Proof of Work Ansatz zur Erstellung neuer Blöcke genutzt

## Was ist die goldene Regel beim Bitcoin?
* Max 2016 Blöcke pro 2 Wochen

## Was definiert sich ein Block und die Blockchain bei Bitcoin?
* Block
    * besteht aus einer Sammlung von Transaktionen
    * hat eine Referenz auf einen vorangehenden Block
    * durch das Mining enthält jeder Block eine Nonce
    * der angegebene Hash im Header entspricht dem Merkle Root
* Blockchain
    * besteht aus einer Kette von Blöcken
    * der Genesis Block ist der erste Block in der Kette
    * Änderungen an früheren Blöcken vorzunehmen ist praktisch unmöglich
        * weil damit der Hash verändert würde und
        * im dies im Netzwerk nicht akzeptiert werden würde

