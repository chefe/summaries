# Höhere Sortieralhorithmen

## Was ist die Ordnung einfacher Sortieralgorithemn?
* Direktes Einfügen
    * Ordnung: O(n^2)
    * stabiler Algorithmus
* Direktes Auswählen
    * Ordnung: O(n^2)
    * instabiler Algorithmus
* Direktes Austauschen
    * Ordnung: O(n^2)
    * stabiler Algorithmus
* Shellsort
    * Ordnung: O(n^1.5)
    * instabiler Algorithmus

## Was bedeutet Teile und Hersche?
ein komplexes Problem durch Zerlegen in einfachere Teilprobleme lösen

## Wie wird bei Teile und Hersche vorgegangen?
1. Problem in Teilprobleme zerlegen
2. Teilprobleme lösen
3. Teillösungen zur Gesamtlösung zusammensetzen

## Was lässt sich mit Teile und Hersche erreichen?
* eine Lösungsfindung
* einen rekursiven Lösungsansatz
* parallelisierbare Lösungen (falls Teilprobleme unabhängig lösbar)
* eine Reduktion des Lösungsaufwandes

## Wie funktioniert ein Quicksort?
* arbeitet instabil
* Zeitkomplexität im Average Case O(n * log n)
* sortierde Element werden in zwei Teilfolgen getrennt
* alle Elemente der ersten Teilfolge sind kleiner als der zweiten Teilfolge
* dafür wird ein Trennelement verwendet
* gegebenenfalls wird die Teilfolge analog weiter getrennt

## Was ist der Anspruch an das Trennelement beim Quicksort?
* Idealerweise liegt das Trennelement von der Wertigkeit genau in der Mitte
* d.h. er halbierte diese in zwei gleich grosse Teilfolgen

## Was ist das Ziel beim Quicksort?
* Das Trennelement steht nach dem Trennen an seiner endgültigen Position
* Alle Elemente links vom Trennelement sind kleiner diesem
* Alle Elemente rechts vom Trennelement sind grösser/gleich diesem

## Wie wird beim Quicksort das Trennelement bestimmt?
* Man wählt einfach das letzte Element der Folge
* Median of three
    * Man wählt aus drei Elementen der Folge das mittlere für das Trennelement
    * z.B. Anfang, Mitte und Ende => und dann mittleren Wert nehmen

## Wie lässt sich ein Quicksort Algorithmus optimieren?
* Passt man Quicksort so an, dass beim Trennen auch Elemente = T die Seite wechseln, so kann man erreichen, dass das Trennen symmetrischer erfolgt bzw. eher gleich lange Teilfolgen resultier
* Insgesamt sind damit zwar etwas mehr Element-Vertauschungen notwendig, was aber weniger rekursive Methodenaufruf mehr als wettmachen!

## Was ist Quick-Insertion-Sort?
* klassische Verfahren zerlegen die Folge bis diese nur noch 2 Elemente besteht
* die verbundenen rekursiven Methodenaufrufen brauchen viel Zeit und Speicher
* Schneller geht es, wenn keinere Folgen mit Insertion Sort sortiert wernden
* dadurch lassen sich Laufzeitverbesserungen von 20% und mehr beobachten

## Wie verhält sich die Laufzeitkomplexität von Quicksort?
* Best Case: O(n * log2 n)
* Worst Case: O(n^2)
* Average Case: O(n * log n)

## Was ist das Prinzip des Mergesort?
* arbeitet stabil
* besitzt generell eine Zeitkompleität von O(n * log n)
* Mergesort verwendet auch das Teile und Hersche Prinzip

## Wie geht ein Mergesort vor?
* in zwei Hälfte aufteilen und unabhängig sortieren
* fügen der beiden zusammen mit dem Reissverschlussverfahren
    * Vergleiche die beiden ersten Elemente der sortierten Hälften
    * Kopiere das Kleinere und füge es dem Resultat hinzu
    * wiederholen so lange nicht beide Hälften abgearbeitet sind

## Was ist die Definition der Datenstruktur Heap?
* ist ein binärer Baum der voll ist
* und jeder Vater grösser ist als seine Söhne
* und in eime Array abgeispiert ist

## Wie lässt sich die Datenstrucktur Heap in einem Array abbilenden?
* Vater mit Index i=1
* linker Sohn mit Index (2*i)+1
* rechter Sohn mit Index 2*(i+1)

## Was ist das Prinzip eines Heapsort?
* arbeitete instabil
* besitzt generell eine Zeitkompleität von O(n * log n)
* suchen wird beschleunigt durch geschickte Datenstruktur

## Wie geht der Heapsort Algorithmus vor?
* Heap aufbauen
    * Man fügt n-1 mit insert ein Eleent in den Heap ein
* Elemente sortieren
    * Man entnimmt n-1 mit getMax() das grösste Element
    * daraus resultiert die Sortierung

## Wie erreicht man einen möglichst effizienten Daten-Zugriff?
* Ordnung schafft man durch Sortieren
* oder durch geordnete Datenstrukturen bzw. Collections

