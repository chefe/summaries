# Heuristische Suche

## Wie können systematische Suchalgorithem verbessert werden?
* Auswertung des Zustand mit Wissen
* Unterscheiden zwischen guten und schlechten Zuständen

## Was definiert die Auswertungsfunktion?
* `f(n) = g(n) + h(n)`
* `g(n)` _reelle_ Kosten von Initialzustand zum Zustand `n`
* `h(n)` _geschätzt_ Kosten von Zustand `n` zum Zielzustand

## Was ist eine heuristische Funktion?
* benutzt Wissen über das Problem um die Suche zu steuern
* ermöglicht es effizientere Suchalgorithem zu implementieren
* beschreibt die zu erwartenden Kosten bis zum Zielzustand
* je kleiner der Wert desto näher beim Zielzustand

## Welche Bedingungen muss eine solche heuristische Funktion erfüllen?
* `h(n) > 0`, wenn `n` nicht der Zielzustand ist
* `h(n) = 0`, wenn `n` der Zielzustand ist
* sie muss zulässig sein
* sie muss konsistent / monoton sein

## Was ist ein Greedy Search (Best-First Search)?
* benutzt `f(n) = h(n)`
* Beispiel für Heuristik ist Luftdistanz
* Expandiert Knoten, welcher am nächsten beim Ziel ist
* berücksichtigt die aktuellen Pfadkosten nicht

## Was sind die Eigenschaften der Greedy-Suche?
* minimale Suchkosten
* findet nicht die optimal Lösung
* nicht komplett (Probleme mit Schleifen und Sackgassen)
* Zeit- und Speicher-Komplexität ist `O(b^m)`

## Was ist der A-Star Algorithmus?
* `f(n) = g(n) + h(n)`
* kombiniert Greedy-Suche und Uniform-Cost-Search
* Konflikt zwischen Pfadkosten und geschätztem Ziel

## Was ist eine zulässig Lösung?
* Heuristik ist immer kleiner oder gleich der optimalen Kosten
* zum Beispiel Luftdistanz ist immer kleiner als Distanz auf Strasse
* optimale Lösung wird immer unterschätzt
* d.h. Lösung ist immer grösser als Schätzung

## Was ist eine konsistent Lösung?
* Schätzung ist kleiner oder gleich Wege über Zwischenknoten

## Was sind die Eigenschaften des A-Star Algorithmus?
* ist komplett, wenn eine Lösung existiert
    * begrenzte Anzahl Knoten mit begrenzter Anzahl Kinder
    * jede Aktion hat positive und endliche Kosten
* optimal
    * bei Bäumen optimal wenn `h(n)` zulässig
    * bei Graphen optimal wenn `h(n)` konsistent ist
    * bei Graphen müssen alle Knoten
        * mit weniger als den optimalen Kosten expandiert werden
        * damit die optimale Lösung gefunden werden kann
* Komplexität
    * exponentielle Komplexität
    * daher häufig nicht praktikabel für grosse Probleme

## Was ist IDA-Star?
* Iterative Deepening A-Star
* `(g) + h(n) > threshold`
* berücksichtigt nur geschätzte Kosten, die kleiner sind als ein Schwellwert
* wenn es nicht mehr weiter geht, neuer Schwellwert setzten
* Schwellwert beginnt mit den geschätzten Kosten des Startknoten
* Schwellwert wird mit jeder Iteration erhöht
* als nächster Wert wird Minimum der Pfadkosten über dem Schwellwert verwendet

## Was sind die Eigenschaften von IDA-Star?
* ist optimal, wenn `h(n)` zulässig ist
* Speicherkomplexität linear `O(l*b)`
    * `b` = Branching Faktor
    * `l` = Läge des längsten Pfades
* gibt overhead, weil Duplikate nicht entdeckt werden

## Was ist eine Heuristik?
Kostenabschätzung basierend auf Wissen oder Intuition

## Was ist das Ziel einer heuristischen Funktionen?
* Algorithmus in die "richtige" Richtung steuern
* Sackgassen schnell erkennen
* fast optimale Lösungen in schneller Zeit finden

## Was ist beim Entwickeln einer heuristischen Funktion wichtig?
* Problem muss verstanden werden
* Heuristik und Suchalgorithmus trennen
* verschiedene Heuristiken auszuprobieren und statistisch auswerten

## Was sind Beispiele für Heuristiken?
* Misplaced Tiles
    * Anzahl Felder an einer falschen Position
* Manhatten Distance
    * Summe aller Distanzen eines Feld zu seiner Zielposition

## Wie kann die Manhatten Distanz noch verbessert werden?
* Linear Conflict Heuristic
* wenn zwei Felder in gleicher Zeile oder Spalte vertauscht sind
* Heuristik = Manhatten-Distanz `+2` weil getauscht werden muss
* gibt realistischere Schätzung für optimale Kosten

## Wie funktioniert die Gaschnigs Heuristik?
* Immer zwei Felder können vertauscht werden
* nach wie viel Mal tauschen ist der Zielzustand erreicht
* nicht alle Regeln des Problem werden berücksichtigt (relaxed)
* unterschätzt die Kosten für das Lösen

## Was bedeuten die Begriffe relaxed und adjacent?
* relaxed = es werden nicht alle Regeln berücksichtigt
* adjacent = ist Nachbar

