# Suchprobleme modellieren

## Wie wird ein Suchproblem formuliert?
* Anfangszustand
* Zielzustand
* Alle möglichen Zuständen (Knoten)
* Aktionen die Zustände verbinden (gerichtete Kanten)

## Was ist die Lösung eines Suchproblem?
Sequenz von Aktionen, die zum gewünschten Ziel führen

## Was sind die Bedingungen für eine Suche?
* beobachtbar (der Agent weiss, wo er ist)
* statisch (die Umgebung verändert sich nicht)
* deterministisch (jede Aktion führt zum gewünschten Effekt)
* diskret (nur eine begrenzte Anzahl von Zuständen)

## Wie kann eine Formulierung für ein Städtereisen-Problem aussehen?
* __Anfangszustand:__ Anfangs-Stadt
* __Endzustand:__ Ziel-Stadt
* __Aktionen:__ zu einer Nachbarstadt gehen
* __Schrittkosten:__ Anzahl Kilometer zwischen den beiden Städten
* __Lösung:__ Abfolge von Aktionen um zum Ziel zu kommen
* __Performance Measure:__ möglichst kurzer Weg

## Wie wird ein Suchproblem konzeptuell beschrieben?
* __Anfangszustand (Initial State):__ Ausgangsknoten für den Suchbaum
* __Zustandsraum (State Space):__ alle möglichen Zustände
* __Aktionen (Actions):__ von jedem Zustand alle Möglichkeiten
* __Aktionskosten (Transition-Model):__ beschreiben das Resultat einer Aktion
* __Ziel (Goal-Test):__ Ziel überprüfen
* __Pfad (Path):__ Sequenz von Aktionen, um zu diesem Zustand zu kommen
* __Pfadkosten (Path Cost):__ zum Beispiel Summer alle Schritte
* __Lösung (Solution):__ Pfad vom Anfang zum Ziel-Zustand
* __Suchkosten (Search Cost):__ Zeit und Speicher, um Lösung zu finden
* __Lösungsraum (Search Space Size):__ Anzahl geprüfter Zustände des Algorithmus

## Wie funktioniert ein genereller Suchalgorithmus?
1. Beginnen mit einem Anfangszustand
2. Expandieren der Knoten
3. Stoppen wenn Zielzustand erreicht
4. oder wenn alle Zustände überprüft

## Wie kann mit wiederholten Zuständen umgegangen werden?
kann ignoriert werden, da es niemals zu einer besseren Lösung führen wird

## Was wird unter Expandieren verstanden?
generieren aller Kind-Knoten unter Berücksichtigung der verfügbaren Aktionen

## Was wird unter der Grenze (frontier) verstanden?
Set aller Knoten, die zum Expandieren bereit sind

## Was ist eine Suchstrategie?
definiert, welcher Knoten als nächstes expandiert wird

## Was wird unter besuchten Zuständen (visited states) verstanden?
alle Knoten, die zu einem gewissen Zeitpunkt expandiert wurden

## Wie wird mit mehren möglichen Pfaden umgegangen?
es wird immer nur der "beste" Pfad gespeichert

## Welche zwei Typen von Suchalgorithem gibt es?
* baumbasierte Suchalgorithmen
    * speichert nur die Grenze ab, nicht die besuchten Knoten
    * hat keine Schleifen und ist daher einfacher zu durchsuchen
    * benötigt weniger Speicher
* graphenbasierte Suchalgorithmen
    * speichert die besuchte Knoten
    * "Normalfall" bei einer Suche
    * generiert im Hintergrund einen Suchbaum

## Welche Faktoren definieren den Suchraum?
* b: Anzahl Verzweigungen pro Knoten
* d: Tiefe des tiefsten Knoten
* m: maximale Länge eines Pfad

## Welche Kriterien werden zum Vergleichen von Suchalgorithmen verwendet?
* Komplett: wenn die Suchstrategie ein Lösung findet, wenn diese existiert
* Optimal: es wird die beste Lösung gefunden, wenn diese existiert
* Komplexität: Aufwand des Algorithmus um eine Lösung zu finden

## In welche Bereiche kann Komplexität unterteilt werden?
* Zeit-Komplexität
    * Wie lange braucht der Algorithmus, um eine Lösung zu finden?
    * meistens muss von einem worst-case ausgegangen werden
    * meistens werden die Anzahl besuchter Knoten gemessen
* Speicher-Komplexität
    * Wie viel Speicher braucht der Algorithmus, um eine Lösung zu finden?
    * meistens muss von einem worst-case ausgegangen werden
    * meistens werden die Anzahl (gleichzeitig) gespeicherten Knoten gemessen

