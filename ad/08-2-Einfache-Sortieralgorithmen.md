# Einfache Sortieralgorithmen

## Wie funktioniert das direkte Einfügen?
* das Array wird in einen unsortiertern und einen sortierten Teil unterteilt
* das erste Element im unsortierten Teil wird dann im sortierten Teil eingefügt
* Elemente mit grossem Schlüssel werden im sortierten Teil nach rechts verschoben
* die Suche nach der Einfüge-Position wird mit dem Verschieben kombiniert
* Nach n-1 mal Einfügen ist das Array sortiert

## Wie funktioniert das direkte Auswählen?
* das Array wird in einen unsortiertern und einen sortierten Teil unterteilt
* im unsortierten Teil wird das Element mit dem kleinsten Schlüssel gesucht
* dieses vertauscht man dann mit dem ersten Element des unsortierten Teils
* nach n-1 Durchläufen ist das Array sortiert
* Direktes Auswählen besitzt die Ordnung O(n^2)
* weil immer das ganze Array durchsucht wird sind Best- und Worst-Case gleich

## Wie funktioniert das direkte Austauschen (Bubble Sort)?
* das Array wird in einen unsortiertern und einen sortierten Teil unterteilt
* zwei benachbarte Elemente werden ausgetauscht, falls sie nich geordnet sind
* während einem Durchlauf schlägt sich der grössete Schlüssel nach recht durch
* nach n+1 Durchläufen ist das Array sortiert
* Bubbe Sort besitzt die Ordnung O(n^2)
* im besten Fall lässt sich die Ordnung O(n) erreichen
* wird in der Praxis kaum eingesetzt

## Wie funktioniert der Shellsort?
* Sortieraufwand wie beim direkten Einfügen
* Grobsortierung über grössere Schrittweite
* Reduzierung der Schrittweite bis runter auf 1
* für gewissen Schrittweiten lässt sich der Aufwand stark verkleinern
* Knuth-Folge: 1, 4, 13, 40, ... (mal 3 + 1)
* Hibbard-Folge: 1, 3, 7, 15, ... (mal 2 + 1) entspricht O(n 1.5 )
* Shellsort liegt wzischen O(n^2) und O(n * log n)

