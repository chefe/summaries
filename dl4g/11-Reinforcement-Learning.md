# Reinforcement Learning

## Was ist der Unterschied zwischen einem `non-deep` und `deep neural network`?
* `deep neural network` erkennt die Features selbständig
* es werden nur noch die Daten benötigt

## Was ist ein `convolutional neural networks`?
* es sind nicht alle Knoten mit dem vorherigen Layer verbunden
* die Gewichte werden für jede Position geteilt

## Was bedeutet Regularisierung und wieso wird es gebraucht?
* Penatlty auf den Gewichten
* z.B. Quadrate der Gewichte zur Loss-Funktion addieren
* um eine glättere Kurve zu bekommen
* verhindert overfitting

## Was bedeutet Dropout und wieso wird es gebraucht?
* verwirft zufällig Knoten (auf 0 setzen)
* zwingt das Netzwerk Alternativen zu finden
* gibt stabileres Netzwerk

## Was ist die Idee hinter Inception und Res-Net?
* Inception
    * mehrere Layer nebeneinander und dann addieren
* Res-Net
    * Shortcut zwischen einzelnen Knoten
    * einfacheres Lernen von komplizierten Netzwerken

## Was ist reinforcement learning?
* Ziel: Reward maximieren
* Reward kann durch Aktionen verändert werden
* Aktionen beeinflussen die Umgebung

## Was ist reinforcement learning nicht?
* supervised learning
    * es gibt keinen Supervisor der sagt was richtig ist
* unsupervised learning
    * es werden auch keine Strukturen gesucht

## Was sind die Eigenschaften von Reinforcement Learning?
* Verzögertes Feedback
* Zeit ist relevant
* Aktionen beeinflussen die Umgebung und die Daten

## Was ist das Ziel von Reinforcement Learning?
Ein Reward $R_t$ ist ein Feedback das angibt,
wie gut sich der Agent zum Zeitpunkt $t$ verhält

## Was ist das Konzept hinter Reinforcement Learning?
$G_t = R_{t_1} + y R_{t_2} + y^2 R_{t_3} + \dots = \sum_{k=0}^{\infty} y^k R_{t+k+1}$

* $A_t$: Aktion zur Zeit $t$
* $S_t$: Status zur Zeit $t$
* $R_t$: Reward zur Zeit $t$ (aufgrund $S_{t-1}$ und $A_{t_1}$)
* $\pi$: sagt was die zu wählende Aktion ist
* $\pi (a|s)$: Wahrscheinlichkeit das Aktion $a$ gewählt wird im Status $s$
* $G_t$: Summe aller Rewards (meistens mit Discount Reward)
* $y$: je weiter entfernt desto weniger Gewichtung
* $v(s)$: erwarteter Wert im Zustand $s$

## Welche Arten von RL Agenten gibt es?
* __Value based:__ No Policy (implicit), Value Function
* __Policy Based:__ Policy, No Value Function
* __Actor Critic:__ Policy, Value Function
* __Model Free:__ Policy and/or Value, No Model
* __Model:__ Policy and/or Value Function, Model

## Welche Varianten von greedy Algorithmen gibt es?
* greedy:
    * Aktion wählen mit dem Maximalen geschätzten Wert
* non greedy:
    * Zufällige Aktion wählen
* $\epsilon$-greedy
    * mit $\epsilon$ Wahrscheinlichkeit beliebige Aktion auswählen
    * mit $1-\epsilon$ Wahrscheinlichkeit maximale Aktion wählen

## Wie kann eine Policy ausgearbeitet werden?
* Beginnen mit einer zufälligen Policy
* Berechnen der Value-Function $v$ unter Berücksichtigung der aktuellen Policy
* Policy verbessern durch greedy-Auswahl der Aktionen aus $v$
* Wiederholen bis sich die Policy nicht mehr verändert

## Was ist die Idee hinter Temporal Difference Learning?
Aktualisieren der Value-Funktion $V$ nach jedem Schritt \newline

$V(S_t) \leftarrow V(S_t) + \alpha [R_{t+1} + y V(S_{t + 1}) - V(S_t)]$

* $R_{t+1}$ = Reward
* $S_{t}$ = Aktueller Status
* $S_{t+1}$ = Nächster Status

## Was ist die Idee von SARSA?
* (State, Action) -> Reward -> (State, Action)
* Lernen des zu erwartenden totalen Reward anhand einer Aktion $A$ im Status $S$
* $Q(S_t, A_t) \leftarrow Q(S_t, A_t) + \alpha [R_{t+1} + y Q(S_{t + 1}, A_{t+1}) - Q(S_t, A_t)]$

## Was ist die Idee von Q-Learning?
* sehr ähnlich wie SARSA
* verwendet keine Policy, sondern nicht die beste Aktion
* $Q(S_t, A_t) \leftarrow Q(S_t, A_t) + \alpha [R_{t+1} + y \max Q(S_{t + 1}, a) - Q(S_t, A_t)]$

