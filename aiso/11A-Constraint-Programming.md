# Constraint-Programming 2 - Algorithms

## Welche zwei Strategien müssen für Backtrack Search definiert werden?
1. Reihenfolge, in welcher die Variablen abgearbeitet werden
2. Reihenfolge, in welcher die Werte abgearbeitet werden

## Was sind die Vor- und Nachteile von Backtrack-Search?
* vollständige Suche
* exponentielle Zeitkomplexität
* lineare Speicherkomplexität
* gut geeignet für Parallelisierung

## Was ist Forward Checking?
* ungültige Lösungen eliminieren
* Domänen verkleinern => Suchbaum verkleinern
* vereinfachen des Baumes für Backtrack-Search
* kein kompletter Algorithmus => gibt keine Lösung

## Was ist eine strongly connected component?
* Alle Variablen können die gleichen Werte annehmen
* Keine Variable ausserhalb darf einen Wert innerhalb haben

## Was ist Bounds Consistency?
* suchen von strongly connected component anhand von Intervals
* findet nicht alle strongly connected component
* Aufwand: `O(n * log(n))`

## Was ist Domain Consistency?
* suchen von strongly connected component anhand von allen möglichen Subsets
* findet alle strongly connected component
* Aufwand ist jedoch exponentiell: `O(2^n)`

