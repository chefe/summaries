# Lokale Suche

## Wie funktioniert eine lokale Suche?
* mit beliebiger Lösung anfangen
* Nachbarn generieren
* Nachbarn bewerten
* bester Nachfolger auswählen
* so lange wiederholen, bis genügend gute Lösung oder keine Zeit mehr

## Was sind die Vor- und Nachteile einer lokalen Suche?
* Vorteile:
    * für sehr grosse Suchräume geeignet
    * oft genügen gute Lösung
    * braucht wenig Speicher
    * Suchpfad muss nicht gespeichert werden
* Nachteile:
    * Nicht systematisch

## Was sind die Eigenschaften des Hill-Climing-Aglorithmus?
* weder komplett noch optimal
* Probleme mit Plateaus (weil keine Steigung in eine Richtung)
* Probleme mit lokale Maxima, die nicht direkt verbunden sind

## Was sind die Eigenschaften eines Tabu Search?
* basiert auf einer lokalen Suche
* speichern wo man schon war, damit man nicht immer im Kreis läuft
* Tabu-List wird während dem Algorithmus ständig ergänzt

## Welche Techniken gibt es um zu verhindern, dass man stecken bleibt?
* wenn stecken bleiben, zufällig neu starten
* Rauschen einfügen und mit Random Walk arbeiten

## Was ist ein genetischer Algorithmus?
* Kind wird aus zwei Eltern generiert
* Evolution wird gute Lösungen bringen
* Gute Zustände kombinieren, um noch bessere zu erhalten
* nur die besten Zustände überleben

## Was bedeuten die Begriffe Selection, Mutation und Crossing?
* Selection
    * Auswahl von geeigneten Kandidaten aus der Population
* Crossing
    * Vermehren/Kreuzen von geeigneten Kandidaten
* Mutation
    * Zufällige Mutationen einfügen
    * verhindert, dass man stecken bleibt

## Was braucht es für einen genetischen Algorithmus?
* Zustand als String encodieren
* Fitness-Funktion, um den Zustand zu bewerten
* mögliche Zustände

## Was sind die Schritte eines genetischen Algorithmus?
1. mit Population starten
2. gute Kandidaten auswählen
3. Vermehrung (zufällig)
4. Mutation (zufällig)
5. über mehrere Generation wiederholen, bis gute Lösung gefunden

## Was wird bei einem genetischen Algorithmus unter Fitness verstanden?
* Fitness ist das Gegenteil der Heuristik
* je höher der Wert, desto besser
* beschreibt wie gut eine Population ist

## Was sind die Eigenschaften eines genetischen Algorithmus?
* kein Optimum wird angestrebt
* es wird nach einer stabile und guten Lösung gesucht
* oft wird die optimale Lösung nicht gefunden

## Was ist die Idee von Simulated Annealing?
* systematisches Einfügen von Rauschen über eine Temperatur
* Rauschen mit der Zeit reduzieren (durch Zeitplan)
* je tiefer, desto unwahrscheinlich wird die Auswahl von schlechter Nachbarn

## Was ist der Unterschied zwischen A-Star und Hill Climbing?
* Hill Climbing bleibt stecken auf einer Fläche
* A-Star nicht, weil dann zufälliger Nachbar genommen wird

