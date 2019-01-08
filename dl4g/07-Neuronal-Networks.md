# Neuronal Networks

## Was ist der Unterschied zwischen AI und Deep Learning?
* Artifical Intelligent (regelbasiert / MCTS)
* Machine learning (Training auf Daten mit festgelegten Features)
* Deep learning (Lernen der Features aus den Daten)

## Was ist die Definition von Machie Learning?
* A computer program is said to learn from experience E
* with respect to some class of tasks T and performance measure P
* if its performance at tasks in T, as measured by P, improves with experience E

## Was bedeuten diese Begriffe für das Beispiel Jassen?
* __tasks (T)__
    * Trumpf auswählen
    * Karte uswählen
    * Werte der Karten
    * Punkte im Spiel
* __measure (P)__
    * Anzahl Gewinne / Punkte
    * Vergleich mit Daten
* __experience (E)__
    * spielen
    * Daten lesen

## Welche zwei Task-Typen werden unterschieden?
* __Regression:__ $f: \mathbb{R}^n \mapsto \mathbb{R}$
* __Classification:__ $f: \mathbb{R}^n \mapsto \{ 1, \dots k \}$

## Aus welchen 3 Teilen besteht ein feed forward network?
* Input Layer
* Hidden Layer
* Output Layer

## Was beinhaltet ein Knoten eines Netzwerk?
* Inputs $(x_1, x_2, \dots)$
* Internen Parameter ($\Theta$)
* Funktion die den Output berechnet basierend auf den Parameter

## Was ist eine Epoche?
1 Training des gesamten Datensets

## Welche Aktivierungsfunktionen gibt es?
* Sigmoid für eine binäre Klassifizierung
* relu für Nodes innerhalb des Netzwerk
* Aktivierungsfunktion sollte nicht linear sein

## Was ist eine Kostenfunktion?
* ist die Funktion welche durch das Lernen minimiert werden soll
* häufig wird eine Likelihood-Funktion verwendet

## Wie sollten bei Multi-class Problemen beachtet werden?
* 1-hot encoded Arrays für Labels
* letzter Layer mit `softmax` Funktion (für Normierung)

