# Graphen-Algorithmen

## Wie kann man Endlosscheifen beim Traversieren verhindern?
* "noch nicht gefunden" mit WHITE markieren
* "gefunden" mit GRAY markieren
* "verarbeitet" mit BLACK markieren

## Was ist die Breitensuche (Breadth First Search, BFS)?
* Reihenfolge mit kürzester zunehmender Pfadlänge (Anzahl Kanten)
* Pfadlänge suksezive Erhöhen
* Suche terminieren wenn keine Knoten mehr gefunden werden
* Entspricht Traversierung nach Ebenen-Ordnung
* Abarbeitung mit FIFO-Queue

## Was ist die Tiefensuche (Depth First Search, DFS)?
* so weit wie möglich erforscht, bis es nicht mehr weiter geht
* dann geht man zurück Backtracking
* Entspricht Traversierung gemäss Vorodnung (Preorder)
* Abarbeitung mit LIFO-Queue (Stack)
* Kann auch rekursiv implementiert werden

## Was ist eine transitive Hülle?
* gibt Auskunft darüber zwischen, welchen Knoten-Paaren Pfade existieren
* wenn y vom Knoten x aus erreichbar ist
* Matrix mit Wertene [0-1] (ja oder nein)

## Was ist das Ziel des Algorithmus von Warshall?
* Berechnung der rekursiven Hülle
* dabei wird jeder Knoten als Zwischenknoten gedacht
* die Reihenfolge der Zwischenknoten spielen keine Rolle

## Welche Zeitkomplexität hat der Algorithmus von Warshall?
`O(|V|^3)`

## Was versteht man unter Kürzeste Entfernung in einem Graphen?
* Minimum der bewerteten Längen
* Shortest Path Problem

## Wie funktioniert der Algorithmus von Floyd?
* All Pair Shortest Path Problem
* verwendet eine bewertete Adjazenzmatrix
* Sobald ein neuer Pfad entdeckt wird, überschreiben des Pfad wenn kürzer als vorheriger

## Was ist das Ziel desr Algorithmus von Dijkstra?
* Single Source Shortest Path Problem
* Kürzeste Entfernungen von s aus zu allen anderen Knoten
* vorzeitiges Abbrechen der Berechnung möglich
* liefert ein Spanning Tree während der Berechnung

## Wie funktioniert der Algorithmus von Dijkstra?
* immer Knoten mit kürzeste Entfernungen zu s nehmen
* bei mehreren zufällig einen auswählen
* Bewertung von direkte Nachbaren nachführen
* Überschreiben falls bessere Lösung gefunden

## Welche Zeitkomplexität hat der Algorithmus von Dijkstra?
Wesentlich ist die Datenstruktur für die Nachbar-Knoten

* Liste `O(|V|^2)`
* binärer Heap `O((|V|+|E|) * log|V|)`
* Fibonacci Heap `O(|E| + |V|*log|V|)`

