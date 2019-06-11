# Constraint Programming 1 - Modelling

## Für was steht die Abkürzungen CP und OP?
* CP: Constraint Problem
* OP: Constraint Optimization Problem

## Welche Bestandteile gehören zu einem Constrain Problem?
* Variablen
* Wertebereiche (Frames)
* Bedingungen (Constraints)

## Was sind die Eigenschaften dieser Bestandteile?
* jede Variable kann Werte aus ihrem Wertebereich annehmen
* eine Bedingung beschreibt einen Zustand, der (nicht) erlaubt ist
* eine Lösung ist eine gültige Zuweisung von Werten zu Variablen
* gültig bedeutet, dass alle Bedienungen eingehalten wurden
* es kann 0-n Lösungen geben

## Welche Bestandteile gehören zu einem Constrain Optimization Problem?
* Constraint Problem mit objektiver Bewertungsfunktion
* Lösung erfüllt alle Bedingungen und ist optimiert auf die Bewertungsfunktion

## Was bedeutet der Begriff symetrisch mit Bezug auf eine Lösung?
* Lösungen sind gleichwertig, z.B. Vertauschen von zwei Zahlen
* ist abhängig von den Bedingungen des Spiels

## Wie wird ein CP mit OR-Tools gelöst?
```
from ortools.constraint_solver import pywrapcp
solver = pywrapcp.Solver("Grocery Store")

p1 = solver.IntVar(0, 711)
p2 = solver.IntVar(0, 711)
p3 = solver.IntVar(0, 711)
p4 = solver.IntVar(0, 711)

solver.Add(p1 + p2 + p3 + p4 == 711)
solver.Add(p1 * p2 * p3 * p4 == 711 * 100 * 100 * 100)

# Configure search
# 1. Decision variables to resolve
# 2. Variable selection policy for search
# 3. Value selection policy for search
db = solver.Phase([p1, p2, p3, p4], solver.INT_VAR_SIMPLE, solver.INT_VALUE_SIMPLE)
solver.NewSearch(db)

# Find solutions
while solver.NextSolution():
	print("Product 1: {}".format(p1.Value()))
	print("Product 2: {}".format(p2.Value()))
	print("Product 3: {}".format(p3.Value()))
	print("Product 4: {}".format(p4.Value()))
	print()
```

## Wie können symmetrische Lösungen verhindert werden?
durch Einfügen von zusätzlichen Bedingungen, z.B.:

```
solver.Add(p1 <= p2)
solver.Add(p2 <= p3)
solver.Add(p3 <= p4)
```

