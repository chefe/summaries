# Collections

## Was sind Datenstrukturen?
Datenstrukturen werden verwendet, um Mengen von Daten bzw. Objekten effizient zu speichern und verarbeiten zu können. 
Unter Verarbeiten versteht man Funktionen, wie z.B. alle enthaltenen Daten/Objekte einzeln zu bearbeiten, nach bestimmten Objekten zu suchen, zu zählen, zu filtern oder nach unterschiedlichen Kriterien zu sortieren etc.

## Was sind typische Datenstrukturen?
* **Array** - indexierte Reihung
* **Tree** - hierarchisch geordnete Daten (Baumstruktur)
* **List** - einfache Reihung
* **Map** - Zuordnung zwischen Schlüssel und Wert(-paaren)
* **Queue** - (Warte-)Schlange, FIFO
* **Set** - Sammlung ohne Duplikate
* **Stack** - Stapel- oder Kellerspeicher, FILO

## Wie unterscheiden sich die verschiedenene Datenstrukturen?
* **Grösse**: Dynamisch oder statisch
* **Zugriff**: Direktzugriff oder indirekt / sequenziell
* **Sortierung**: Sortiert oder unsortiert, mit/ohne Ordnung
* **Suche**: Beschleunigte Suche (z.B. binär oder über Hashwert)
* **Geschwindigkeit**: Grundlegende Operationen wie Suchen, Einfügen, ...

## Aus welchen 3 wesentlichen Teilen besteht das Java Collection Framework?
* Interfaces (`List`, `Map`, ...)
* Implementationen (`LinkedList`, `ArrayList`, ...)
* Algorithemen (`iterator()`, `sort()`, ...)

## Was ist wichtig für Objekte in einer Collection?
* Objekte müssen als gleich erkannt werden
    * implementierung von equals() und hashcode()
* Objekte müssen sortiert werden
    * implementierung von Comparable<T> oder Comparator<T>

## Was für Arten von Gleichheit gibt es?
* Typengleichheit (gleicher Type)
* Wertegleichheit (enthält die gleichen Wert)
* Identität (das selbe Objekt, gleiche Objektreferenz)

## Was sind die Anforderungen an die Speicherverwaltung?
* Zuverlässigkeit, keine memory leaks
* schnelle Allokationen, keine lange Suche nach einem passenden Block
* Freigabe soll schnell sein
* mit der Zeit entstehen Lücken, welche wieder geschlossen werden sollten

