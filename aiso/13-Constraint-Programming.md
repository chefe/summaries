# Constraint-Programming 4 - Routing

## Welche zwei Arten von Routing-problemen werden unterschieden?
* Node Routing
    * jeder Knoten muss genau einmal besucht werden
* Arc Routing
    * jede Kante muss genau einmal besucht werden

## Welche Begriffe werden bei OR-Tools für Routing-Probleme verwendet?
* depot: Startpunkt und Endpunkt einer Runde
* cities: Punkte die abgearbeitet werden müssen
* vehicle: Arbeiter der eine Runde abarbeitet
* demand: Grösse des Auftrags an einem Punkt
* capacity: Kapazität eines Arbeiters
* precedence: Rangfolge in welcher die Punkte abgearbeitet werden müssen

## Was ist der Unterschied zwischen Euklidischer- und Manhatten-Distanz?
* Manhatten: $d = x_{\Delta} + y_{\Delta}$
* Euklid: $d = \sqrt{x_{\Delta}^2 + y_{\Delta}^2}$

