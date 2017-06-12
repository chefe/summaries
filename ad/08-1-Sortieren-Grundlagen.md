# Sortieren Grundlagen

## Wieso lohnt sich Ordnung?
* Unsortiert (Es liegt Unordnung vor)
    * späteres suchen oder Zugriff ist mühsam
    * lineares suchen hat einen Aufwand von O(n)
* Sortiert (Es liegt Ordnung vor)
    * späteres suchen oder Zugriff ist einfacher und schneller
    * binäres Suchen hat einen Aufwand von O(ld n) bzw. O(log 2 n)

## Was sind die Anforderungen für eine Ordnung?
* Menge von Datenelementen
* für Datenelemente x und y gilt
    * x ist kleiner y ODER
    * x und y sind gleich ODER
    * x ist grösser y
* Datenelemente müssen sich vergleichen lassen
* es besteht eine totale Ordnung

## Wie werden Datenelemente verglichen?
* anhand eines Schlüssels
    * einzelnes Attribut: z.B. ID
    * Attribut-Kombination
* In Java: Interface Comperable

## Was ist bestenfalls die Zeitkomplexität eines vergleichsbasierten Sortieralgorithmus?
O(n * log n)

## Wie verhälts sich die Komplexität bei verschieden Algorithmen?
* Einfache Sortieralgorithmen O(n^2)
    * direktes Einfügen (Insertion Sort)
    * direktes Auswählen (Selection Sort)
    * direktes Austauschen (Bubble Sort)
* Höhere Sortieralgorithmen O(n * log n)
    * Quicksort
    * Heapsort
    * Mergesort
* Sortiernetzwerke mit O(n) Prozessoren O(log n)
    * parallelisierter Mergesort
 
## Wie funktioniert ein Radix-Sortieralgorithmus?
* spezielle Anforderungen an die Schlüssel
* alle Schlüssel kommen genau ein Mal vor
* Schlüssel geben Reihenfolge für die Sortierung vor
* kann Sortierproblem bestenfalls mit Zeitkomplexität O(n) lösen

## Was ist der Unterschied zwischen einen stabilen und einem instabilen Sortieralgorithmus?
* Ausgangssituation vor dem Sortieren
    * Mehrere Datenelemente haben den gleichen Schlüssel
* Stabiler Sortieralgorithmus
    * Reihenfolge unter gleichen Datenelementen darf sich nicht ändert
* Instabiler Sortieralgorithmus
    * Reihenfolge unter gleichen Datenelementen kann sich ändert

## Was ist der Unterschied zwischen internem und externem Sortieren?
* Internes Sortieren
    * Daten liegen im Arbeitsspeicher vor
    * Direktes Vergleichen der Daten möglich
    * Internes Sortieren ist primär von Bedeutung
    * Beispiel: Sortieren von Arrays
* Externes Sortieren
    * Daten liegen in einem externen Massenspeicher vor
    * Nur Lesen und Schreiben möglich, kein direkte Vergleichen
    * Interner Speicher ist für alle Daten zu klein
    * Beispiel: Sortieren von sequentiellen Dateien

## Was ist bei der Zeitkomplexität wichtig?
* primär die Anzahl Vergleichsoperationen
* die zu sortierende Werte

## Welche 3 Fälle werden bei der Zeitkomplexität unterschieden?
* Average Case (Mittel über alle Permutationen)
* Worst Case
* Best Case (nicht besonders wichtig)

