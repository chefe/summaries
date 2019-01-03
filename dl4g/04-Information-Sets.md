# Information Sets

## Was ist ein Information Set?
* ist eine Menge von Knoten des gleichen Spielers
* Spieler kennt vorherigen Zug nicht
* alle Knoten müssen gleiche Optionen bieten
* immer aus Sicht eines Spielers

## Was ist der Unterschied zwischen perfekter und nicht perfekter Information?
* unterschiedliche Strategien werden gewählt
* bei perfekter Information hat jeder Knoten exakt eine Option

## Was ist die Idee hinter Determinization?
* unbekannte Karten zufällig auf die Gegner verteilen
* danach anwenden der Regeln von vollständiger Information (beispielsweise mit MCTS)
* ergibt dann mehrere mögliche Spielbäume
* schlussendlich über alle Bäume die Option welche am meisten besucht wurde
* manchmal werden Entscheidung getroffen, welche gar nie eintreten können
* kann zu falschen Entscheidungen führen

## Was muss bei der Implementation von MCTS mit Information Sets beachtet werden?
* Baum besteht aus Information Sets und nicht mehr aus Zuständen
* Knoten entsprechen Information Sets aus Sicht des Wurzelspielers
* Karten werden zufällig verteilt und ungültige Varianten werden ausgeblendet
* Kanten entsprechen einer Aktion, welche in mindestens einem Zustand möglich ist
* Danach funktioniert es wie ein Spiel mit perfekter Information

## Wie muss die UCB angepasst werden für Information Sets?
* $N_p$ = wie oft wurde der Vorgänger Knoten gespielt und $i$ war verfügbar
* dazu muss die Knotenliste ergänzt werden mit wie viel Mal jede Option verfügbar war

