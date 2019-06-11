# Constraint-Programming 4 - Routing

## Welche zwei Arten von Routing-problemen werden unterschieden?
* Node Routing
    * jeder Knoten muss genau einmal besucht werden
* Arc Routing
    * jede Kante muss genau einmal besucht werden

## Welche Begriffe werden bei OR-Tools für Routing-Probleme verwendet?
* __depot:__ Startpunkt und Endpunkt einer Runde
* __cities:__ Punkte die abgearbeitet werden müssen
* __vehicle:__ Arbeiter der eine Runde abarbeitet
* __demand:__ Grösse des Auftrags an einem Punkt
* __capacity:__ Kapazität eines Arbeiters
* __precedence:__ Rangfolge in welcher die Punkte abgearbeitet werden müssen

## Was ist der Unterschied zwischen Euklidischer- und Manhatten-Distanz?
* Manhatten: $d = x_{\Delta} + y_{\Delta}$
* Euklid: $d = \sqrt{x_{\Delta}^2 + y_{\Delta}^2}$

