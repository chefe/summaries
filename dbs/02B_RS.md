# Relationale Schemas

## Was sind die Anforderungen an eine Tabelle?
* eindeutiger Tabellenname
* Merkmalsname (eindeutig innerhalb der Tabelle)
* Keine Spaltenordnung (Anzahl und Ordnung ist bedeutungslos)
* Keine Zeilenordnung (Anzahl und Ordnung ist bedeutungslos)
* Identifikationsschlüssel (Jedes Tupel ist eindeutig identifizierbar)

## Was sind die zwei wichtige Schlüsseleigenschaften?
* Eindeutigkeit (identifiziert eindeutig einen Datensatz)
* Minimalität (Kein Merkmal der Kombination kann gestrichen werden)

## Welche 3 Arten von Anomalien gibt es?
* Einfügeanomalie: 
    * Einfügen von Daten ist nicht möglich
* Löschanomalie: 
    * ungewolltes Löschen von Daten
* Änderungsanomalie: 
    * Mehrfache Änderungen notwendig bei Änderung nur eines Objekts

## Was sind die Schritte zur 3NF?
* Unnormalisiert
    * gilt als unnormalisiert, wenn sie Aufzählungen oder Gruppen enthält
* Erste Normalform (1NF)
    * die Wertebereiche der Merkmale müssen atomar sind
    * es sind nur einfache Werte und keine Aufzählunegn erlaubt
* Zweite Normalform (2NF)
    * eine Tabelle ist in 2NF, falls die Tabelle 1NF ist
    * und jedes Nichtschlüsselmerkmal voll abhängig vom Schlüssel ist
* Dritte Normalform (3NF)
    * ist in 3NF, wenn sie in 2NF ist und
    * kein Nichtschlüsselmerkmal von irgendeinem Schlüssel abhängig ist

## Was sind Eigenschaften von Primärschlüssel und Fremdschlüssel?
* ist ein Merkmal, welches einen Datensatz eindeutig identifiziert
* kann aus mehreren Attributen zusammengesetzt sein
* es kann mehrere Schlüssel für eine Tabelle geben
* einer der Kandidatenschlüssel wird als Primärschlüssel definiert
    * auch bekannt als Primary Key (PK)
* eine Tabelle kann Zeilen in einer anderen Tabelle referenzieren
    * ein solches referenzierendes Merkmal heisst Fremdschlüssel 
    * auch bekannt als Foreign Key (FK)
