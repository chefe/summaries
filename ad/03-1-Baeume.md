# Bäume

## Wozu verwendet man baumartige Datenstrukturen?
* Die Daten haben bereits eine hierarchische Struktur, welche man abbilden will
    * Dateisystem / Stammbaum / Vererbungshirarchie
* Wenn man in einer geordneten Datenmenge einzelne Elemente sehr schnell finden will
    * Suchbaum

## Was haben alle Bäume gemeinsam?
* alle haben eine Wurzel
* unterschiedliche Anzahl Äste
* unterschiedliche Länge der Äste
* die Breite und die Höhe der Bäume ist variabel

## Welche verschiedenen Arten von Bäume gibt es?
* Out-Tree, Navigation von der Wurzel nach unten zu den Blättern
    * Kanten (Pfeile) gehen von der Wurzel aus (am Häufigsten)
* In-Tree, Navigation von den Blättern nach oben zur Wurzel
    * Kanten (Pfeile) zeigen zur Wurzel hin

## Welche Spezialformen von Bäume gibt es?
* Binär-Baum => am einfachsten und häufigsten
* AVL-Baum => höhenbalancierter Binärbaum
* B-Baum => balancierter Baum, nicht zwingend binär
* B*-Baum => restriktivere Form B-Baumes (ebenfalls balanciert)
* Binominal-Baum => speziell strukturierter Baum

## Was sind die Grundelemente eines Baumes?
* Wurzel (root)
    * Knoten ohne Vater.
* (Innerer) Knoten (node)
    * Hat 1..n (Kinder-)knoten
* Blatt (leaf)
    * Knoten ohne Kinder.
* Kanten (edges)
    * Verbindet die Knoten. Ungerichtete Linie oder gerichteter Pfeil.

## Was sind die Kenngrössen von Bäumen?
* Ordnung eines Baumes (order)
    * definiert, wie viele Kinder ein Knoten maximal haben darf
    * die Anzahl muss aber nicht zwingend erreicht werden
* Grad eines Knotens (degree)
    * sagt, wie viele Kinder ein bestimmter Knoten hat
    * z.B. Baum der fünften Ordnung, jeder Knoten darf maximal fünf Kinder haben (Grad)
* Pfad zu einem Knoten (path)
    * bezeichnet man den Weg von der Wurzel bis zum entsprechenden Knoten bzw. Blatt
* Tiefe eines Knotens (depth)
    * bezeichnet seine Entfernung zur Wurzel
    * zur Bestimmung werden die Konten auf seinem Pfad gezählt
* Niveaus eines Baumes (levels)
    * bezeichnet man die Menge aller Knoten, welche die gleiche Tiefe haben
* Höhe eines Baumes (height)
    * definiert sich aus der Tiefe des Knotens, welcher am weitesten von der Wurzel entfernt ist
    * Höhe ist somit äquivalent mit dem grössten Niveau
* Gewicht eines Baumes
    * definiert sich über die Anzahl der enthaltenen Knoten

## Wie definiert sich der Füllgrad eines Baumes?
* Ausgefüllt
    * bezeichnet, wenn jeder innere Knoten die maximale Anzahl an Kindern hat
    * die Ordnung der inneren Knoten ist somit gleich dem Grad des Baumes
    * ausser der Blätter haben alle inneren Knoten den Grad der Ordnung des Baumes.
* Voll
    * bezeichnet, wenn das letzte Niveau linksbündig angeordnet ist
    * und ausser diesem jedes Niveau die maximale Anzahl an Kindern enthält
* Vollständig oder komplett
    * bezeichnet, wenn jedes Niveau die maximale Anzahl Knoten enthält
    * er hat dann für sein Gewicht die minimale Anzahl Niveaus
    * komplette Bäume sind symmetrisch und ausgeglichen

