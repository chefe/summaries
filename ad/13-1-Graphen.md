# Graphen

## Was ist ein Graph?
* abstrakte Struktur
* besteht aus einer Menge von Objekte
* zwischen welchen Verbindungen besteht

## Was sind bekannte Anwednungen für Graphen?
* Computer und Netzwerkverbindungen
* Elektronische Komponenten und Verbindungen
* Neuronale Netze
* Routenplan
* Stammbaum
* ...

## Was ist die formale Beschreibung eines Graphen?
als 2-Tupel 
`G = (V, E)`

Knotenmenge V (Knoten = Vertex)
`V = {a, b, c, d, e}, |V| = 5`

Kantenmenge E (Kante = Edge)
`E = {(a, b), (b, a), (b, c), (a, c), (c, c), (c, d), (a, d)}, |E| = 7`

## Was ist der unterschied zwischen dicht und dünn besetzter Graph?
* dicht (`|E| ~ |V|^2`)
* dünn (`|E| << |V|^2`)

## Was ist ein Zyklus?
Ein Pfad von Knoten x nach Knoten x

## Was ist ein Baum?
* ungerichteter, zusammenhängender und zyklenfreier Graph
* hat n Knoten und (n-1) Kanten

## Was ist ein aufspannender Baum?
* zyklenfreier Teilgraph G' des Graphen G
* umfasst alle Knoten von G
* auch als "Spanning Tree" bekannt

## Was sind bekannten Graphen Algorithmen?
* Breitensuche
* Tiefensuche
* Algorithmus von Dijkstra

## Was für Grundtypen gibt es einen Pfad zu finden?
* Kürzesten Weg finden (Shortest Path)
* Jeden Knoten besuchen (Travelling Salesman Problem, TSP)
* Jede Kante besuchen (Chinese Postman Problem)
* Alle Knoten aufspannen (Spanning Tree)

## Was für Grundtypen gibt es einen Knoten zu finden?
* Grösste Clique finden, d.h. jedes Knotenpaar ist mit einer Kante verbunden
* Independant Set finden, d.h. keine Knoten sind mit Kanten verbunden
* Zentrum finden

## Was für 3 Arten von Graphen gibt es?
* gerichtet
* bewertet
* ungerichtet

## Wie lässt sich ein Graph programatisch realisieren?
* Baum mit Bäumen
* Array mit Listen
* Liste mit Listen

