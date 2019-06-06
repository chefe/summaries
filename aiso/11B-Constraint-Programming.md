# Constraint-Programming 3 - Optimization

## Was ist Graph K-Colouring?
* versuchen Graph mit `k` Farben zu färben
* Nachbarn haben immer Unterschiedliche Farben
* Aussage: geht oder geht nicht

## Wie wird ein Constraint Problem optimiert?
* Suchen einer gültigen Lösung (erfüllt alle Constraints)
* Evaluieren der Lösung mit einer Bewertungsfunktion
* Constraint hinzufügen, so dass nur bessere Lösungen gültig sind
* solange weiter machen bis keine bessere Lösung mehr gefunden wurde

## Was ist bei einer solchen Optimierung zu beachten?
* es werden (evtl.) mehrere gültige Lösungen gefunden
* nur die letzte Lösung ist optimal (falls vorhanden)

## Wie kommt man vom Constraint Problem zum Optimization Problem?
* einfügen einer objective function
* minimieren/maximieren der Lösung anhand einer Funktion

## Was ist ein Subset Sum Problem?
* welche Elemente einer Menge ergeben in der Summe möglichst genau einen Wert

## Was ist ein Knapsack Problem?
* Subset Sum mit Gewichten und Kapazität
* zusätzlich haben die Objekte noch einen Wert
* Maximierung des Wertes anhand der gegebenen Kapazität

