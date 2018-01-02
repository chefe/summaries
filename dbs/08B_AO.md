# Anfrageoptimierung

## Was sind die Konsequenze aus den I/O Zugriffen bei einer Datenbank?
* Pages auf der Disk sind sehr langsam zu lesen
* der Cache im Memory ist schnell zu lesen, hat aber nur wenig Platz
    * die grösse des Caches ist der Flaschenhals für die Abfragegeschwindigkeit
* möglichst viele Daten frühzeitige rausfiltern

## Was sind die Grunsätze eines Abfragebaumes?
* Mehrere Selektionen auf die selbe Tabelle vereinigen
* Zwischenresultate möglichst klein halten (Selektion, Projektion)
* Verbundsoperatoren im Wurzelknoten des Anfragebaums verwenden

## Welche zwei Join-Strategien gibt es?
* Nested Join
    * Quadratischer Aufwand
    * Alle Tupel aus R1 werden mit allen Tupeln aus R2 auf Join Kompatibilität geprüft
* Sort-Merge Join
    * Linearer Aufwand nach Sortierung
    * Tupel werden in Sortierreihenfolge des Joinattributs X durchlaufen

## Was ist ein B-Baum?
* eine Baumstruktur ermöglicht ein schnelles Finden von Datensätzen
* B-Bäume der Breite $n$ sind ausbalancierte Bäume
    * d.h. alle Pfade von Wurzel zu Blatt sind gleich lang
    * und jeder Knoten hat mindestens $n$, aber höchstens $2n$ Teilbäume

## Was muss bei Datenbank-Indexe beachtet werden?
* Indexe sind optimiert für den Lesezugriff
* beim Schreiben von Daten muss der Index allerdings aktualisiert werden
    * was die Ladezeiten erhöht
* beim Schreiben von grossen Datenmengen sollte deswegen so vorgegangen werden:
    * Indexe löschen
    * Daten aktualisieren
    * Indexe neu erstellen
    * Datenmengen in die Datenbank (Bulk Lodas) die Indexe vorher zu

## Wie lässt sich eine SQL Abfrage am einfachsten optimieren?
* mit dem betroffenen Zeilen, welche im Execution Plan zu sehen sind
* vor dem SQL Statement das Schlüsselwort `EXPLAIN` anfügen

