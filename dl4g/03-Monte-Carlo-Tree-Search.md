# Monte Carlo Tree Search

## Was ist das Problem mit den bisher kennengelernten Algorithmen?
* Regelbasierte Systeme können Nim und Tic-Tac-Toe lösen
* Extensives minimax mit alpha-beta pruning löst 4-gewinnt
* Tiefenlimitierter minimax mit Heuristiken bezwingt Schachweltmeister
* diese Ideen funktionieren nicht für GO und Spiele mit sehr vielen Möglichkeiten
* Entwickeln von Regeln und Heuristiken ist extrem schwierig
* Heuristiken erforderen viel Domänenwissen

## Wieso werden Random Walks eingesetzt?
* Suchraum ist oft zu grosse für eine vollständige Suche
* die Idee bei minimax ist bei einer bestimmten Tiefe zu stoppen und zu raten
* eine alternative ist der Monte Carlo Tree Search

## Was ist die Idee hinter Monte Carlo Tree Search?
* macht einen Random Walk und spielt zufällige Simulationen
* versucht in einer fixen Zeit möglich viel des Suchraumes zu entdecken
* am Schluss wird der vielversprechenste Spielzug ausgewählt

## Welche 4 Phasen gibt es bei Monte Carlo Tree Search?
1. Selection:
    * Start from root node R and select successive child nodes
    * Stop when you reach a leaf or a node that has not yet been fully expanded
    * Needs a criterion for selecting child nodes called tree policy
2. Expansion:
    * If L ends the game, return payoffs
    * Otherwise, choose an unexplored action and create a node C for it
3. Simulation:
    * Simulate a playout from node C using a default policy
    * In the simplest case, just play the game to an end with random moves
4. Backpropagation:
    * Update the information stored in each node from C back to the root node R
    * Monte Carlo Tree Search expects payoffs in [0,1]

## Welche zwei Ansätze gibt es beim Auswählen eines neuen Knotens?
* Exploitation:
    * immer bestes payoff wählen
    * Anhand der Beobachtungen auf der besten Maschine spielen um Gewinn zu maximieren
* Exploration:
    * etwas neues wählen, versuchen möglichst viel zu erkunden
    * alle Maschinen spielen um möglichst viel Informationen zu gewinnen

## Was ist die Idee hinter UCB?
* steht für Upper Confidence Bound
* beste Strategie ist Mischung aus Exploitation und Exploration
* ergibt ein statistischen Konfidenzintervall für jede Option
* Parameter c kontrolliert trade-off zwischen Exploitation und Exploration

## Was ist die Formel von UCB?
$U_i = \dfrac{W_i}{N_i} + c \sqrt{\dfrac{ln(N_p)}{N_i}}$ \newline

$W_i$ = Anzahl Gewinne mit der Maschine $i$ \newline
$N_i$ = Anzahl Versuche mit der Maschine $i$ \newline
$N_p$ = Anzahl Versuche insgesamt

## Was ist sehr wichtig bei der Anwendung von UCB?
immer die Vektor-Komponente des aktuellen Spieler für die Berechnung verwenden

## Was passiert bei MCST wenn die Zeit abgelaufen ist?
Aktion spielen mit der höchsten Anzahl an Besuchen

## Was sind die Unterscheide von Minimax und Monte Carlo Tree Search?
* beide Algorithem setzen perfekte Information voraus
* Minimax ist nur anwendbar auf Nullsummenspiele mit zwei Spieler
* Monte Carlo Tree Search funktioniert für jedes Spiel mit perfekter Information
* Minimax optimiert payoffs; MCTS optimizes an exploitation-exploration tradeoff
* MCTS ist ein Anytime-Algorithmus, Minimax nicht
* Monte Carlo Bäume sind asymetrisch; Minimax Bäume sind symterisch

## Was ist ein Anytime-Algorithmus?
Kann eine gültige Lösung zurückgeben, auch wenn die Ausführung abgebrochen wird

## Wie sehen die payoff beim MCTS aus und was wird maximiert?
* für ein Beispiel mit zwei Spieler nimmt der payoff Vektor die Form $[W, N-W]$ an
* Spieler 1 maximiert $W$, Spieler 2 maximiert $N-W$
* ebenso kann Spieler 2 $-W$ minimieren

