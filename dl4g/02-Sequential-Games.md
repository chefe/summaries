# Sequential Games with Perfect Information

## Was sind die Eigenschaften von endlichen-sequenziellen Spielen?
* eine endliche Anzahl Spieler mit einer endlichen Anzahl Aktionen
* die Aktionen werden sequenziell ausgewählt
* es wird eine endliche Anzahl Runden gespielt
* spätere Spieler sehen die Aktionen vorheriger Spieler

## Was wird unter perfect recall verstanden?
perfekte Erinnerung an alle vorherigen Züge

## Was ist eine Strategie?
sagt einem Spieler welche Aktion in diesem Zug auszuführen ist

## Was ist eine Strategie Profil?
die ausgewählte Strategie eines Spielers

## Was ist eine utility oder payoff function?
berechnet das Resultat für jede Aktion

## Was sind die Komplexitätsfaktoren bei einer Spielanalyse?
* Anzahl Spieler
* Grösse des Suchraums (Anzahl gespielte Züge und Anzahl mögliche Aktionen)
* Kompetitiv vs. Kooperativ
* Stochastische Spiele (mit Zufall) vs. Deterministisch
* Perfekte vs. Nicht perfekte Information

## Was ist nicht perfekte Information?
* das Spiel konnte nur teilweise beobachtet werden
* z.B. kennt man nicht die Karten der anderen Spieler

## Was sind Beispiele von Spielen mit perfekte und nicht perfekter Information?
* Perfekt (Schach)
* Nicht perfekt (Jass)

## Was ist der Suchraum?
* Anzahl gültige Brettpositionen
* untere Grenze für Suchbaum

## Was ist ein Suchbaum?
* Knoten sind Spielpositionen / Spielzustände
* Kanten sind Aktionen / Spielzüge
* Blätter werden durch payoff functions definiert

## Wie gross ist der Suchraum für einige bekannte Spiele?
_Vergleichswert: Anzahl Atome im Universum 10^80_

| __Spiel__   | __gültige Brettpositionen__ |
|-------------|-----------------------------|
| Tic-Tac-Toe | 10^3                        |
| 4-Gewinnt   | 10^13                       |
| Backgammon  | 10^20                       |
| Schach      | 10^47                       |
| Go 19x19    | 10^170                      |

## Wie funktioniert Backward Induction?
* Baum von unten nach oben durcharbeiten
* immer bester Weg für den aktuellen Spieler markieren
* für sequenzielle endliche Spiele mit perfekter Information geeignet

\begin{figure}[H]
    \includegraphics[width=0.5\textwidth]{images/02-backward-induction.png}
\end{figure}

## Was bedeutet Rationalität?
Spieler nimmt nicht die schlechtere Alternative

## Welche Arten von Lösungen werden bei endlichen-sequenziellen Spielen unterschieden?
* ultraschwach
    * hat der erste Spieler ein Vorteil
    * beispielsweise durch Existenzbeweise in Mathe
    * Wissen das erste Personen einen Vorteil hat
    * ohne genaue Strategie zu kennen
* schwache Lösung
    * kann ein komplettes Spiel durchspielen
    * Annahme dass der Gegner sich rational verhält
* starke Lösung
    * immer durchsetzbar auch wenn nicht erster Spieler
    * kann von jeder Position aus gewinnen

## Was wird unter einem Nullsummenspiel verstanden?
* Vorteil für einen Spieler ist zum Nachteil des anderen Spielers
* Punktesumme für zwei Strategien ist immer 0

## Was sind die Charakteristiken des Minimax-Algorithmus?
* gilt nur für einen Nullsummenspiel
* zwei Möglichkeiten / Ziele
    * eigenen Gewinn maximieren
    * Gewinn des Gegners minimieren

## Wie funktioniert der Minimax-Algorithmus?
* wenn der Knoten mir gehört: Aktion wählen die den payoff maximiert
* wenn der Knoten dem Gegner gehört: Aktion wählen die den payoff minimiert
* wenn es einen Endknoten ist: payoff berechnen

\begin{figure}[H]
    \includegraphics[width=0.4\textwidth]{images/02-minimax.png}
\end{figure}

## Was versteht man unter Search Tree Pruning?
* nicht relevante Teilbäume weglassen
* Reduzierung des Rechenaufwands

## Was sind die Regeln von Alpha-Beta-Pruning?
* $\alpha$ ist der grösste Wert aller MAX Vorfahren eines MIN Knoten
* $\beta$ ist der kleinste Wert aller MIN Vorfahren eines MAX Knoten
* Teilbaum abschneiden, falls grösser als $\alpha$ oder kleiner als $\beta$

## Wie wird ein tiefenlimitierter Minmax mit Alpha-Beta Pruning implementiert?
```
function alphabeta(node, depth, a, b, maximizingPlayer)
    if depth = 0 or node is a terminal node
        return the heuristic value of a node

    if maximizingPlayer
        for each child of node
            a = max(a, alphabeta(child, depth - 1, a, b, FALSE))
            if b <= a
                break
        return a
    else
        for each child of node
            b = min(b, alphabeta(child, depth - 1, a, b, TRUE))
            if b <= a
                break
        return b
```

## Was ist der Vorteil von Alpha-Beta-Pruning?
* b = Anzahl Kanten pro Knoten
* m = Tiefe des Baumes
* von O(b^m) nach O(b^(m/2))
* halbieren der Tiefe des Suchbaume

