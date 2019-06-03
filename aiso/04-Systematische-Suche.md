# Systematische Suche

## Welche Suchalgorithmen werden gebraucht, wenn es keine Informationen gibt?
* Breitensuche
* Tiefensuche
* tiefenlimitierte Suche
* iterative Tiefensuche

## Welche Suchalgorithmen gibt es, wenn nur die Pfadkosten wichtig sind?
* uniforme Kostensuche

## Was sind die Eigenschaften der Breitensuche (BFS)?
* Layer für Layer wird durchsuchen
* findet immer die am wenigsten tief liegende Lösung
* findet immer eine Lösung, wenn es sie gibt
* Knoten werden in der Reihenfolge expandiert, in der sie produziert wurden
* Grenze kann mit einer FIFO-Queue implementiert werden
* jeder generierte Knoten wird im Speicher gehalten
* bei identischen und nicht negativen Pfadkosten
    * wird eine optimale Lösung gefunden
    * sonst keine Garantie die beste Lösung zu finden

## Was sind die Eigenschaften der Tiefensuche (DFS)?
* generell ist die Lösung nicht optimal
* es wird immer der tiefste und neuste Knoten der Grenze expandiert
* Grenze kann mit einer LIFO-Queue implementiert werden
* nur komplett für graphenbasierte Suchen mit begrenzten Zuständen
* kann Probleme geben bei wiederholten Zuständen
* es müssen nicht alle Knoten gespeichert werden
* braucht daher weniger Speicher als BFS

## Was sind die Eigenschaften der tiefenlimitierte Suche (DLS)?
* Tiefensuche, welche bei definierte Tiefe abbricht
* nicht komplett, wenn Limit kleiner als erste Lösung
* erste Lösung ist nicht optimal

## Was sind die Eigenschaften der iterativen Tiefensuche (IDS)?
* Sequenz von DLS jeweils mit Erhöhung der Tiefenlimite
* kombiniert Vorteile von Breiten und Tiefensuche
* optimal und komplett bei identischen und nicht negativen Pfadkosten
* es müssen nur Knoten entlang des aktuellen Pfad gespeichert werden
* höhere Zeitkomplexität als die Breitensuche
* kann genutzt werden, wenn Lösungstiefe nicht bekannt

## Was sind die Eigenschaften der einheitlichen Kostensuche (UCS)?
* berücksichtigt die Pfadkosten zu jedem Konten
* Grenze wird als Priority-Queue modelliert
* Knoten mit minimalen Pfadkosten wird zuerst expandiert
* findet optimale Lösung bei nicht negativen Kosten
* Kosten eines Nachfolger müssen grösser sein als vorheriger Knoten
* optimaler Weg zum Knoten wird gefunden
* optimal und komplett für nicht negative Kosten

## Was ist die Zeit- und Speicherkomplexität der verschiedenen Algorithmen?
|          | BFS      | DFS      | DLS      | IDS      | UCS              |
|----------|----------|----------|----------|----------|------------------|
| Komplett | ja (a)   | nein (d) | nein     | ja (a)   | ja (a,b)         |
| Zeit     | `O(b^d)` | `O(b^m)` | `O(b^l)` | `O(b^d)` | `O(b^[1 + C/e])` |
| Speicher | `O(b^d)` | `O(b*m)` | `O(b*l)` | `O(b*d)` | `O(b^[1 + C/e])` |
| Optimal  | ja (c)   | nein     | nein     | ja (c)   | ja               |

__Legende:__

* (a) wenn `b` endlich ist
* (b) wenn die Schrittkosten nicht weniger als `e` sind
* (c) wenn die Schrittkosten immer identisch sind
* (d) ja für endliche Suchräume

__Legende für Komplexität:__

* b = Anzahl an Verzweigungen
* d = Tiefe des Lösungspfad
* m = maximale Tiefe des Suchbaumes
* l = Tiefenlimite
* C = Kosten für die optimale Lösung
* e = minimale Kosten einer Aktion

