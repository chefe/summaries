# Prolog 4

## Was sollte über die Beweissuche bekannt sein?
* Reihenfolge von Regeln kann die Effizienz von Prozeduren verschlechtern
* korrekte Lösung wird meistens trotz anderer Reihenfolge der Regeln gefunden
* jedoch ist die Ausführung weniger effizient
* falsch Anordnung kann zu "Out of local stack" führen
* mehr Backtracking notwendig, d.h. mehr Suchen im Lösungsraum notwendig

## Wie sollten Regeln und Fakten angordnet werden?
* zuerst immer einfache Dinge probieren
* als erste Regel die Rekursionsbasis angeben (d.h. den einfachen Fall)
* danach zuerst einfach Regeln und dann die komplizierteren

## Wie funktioniert Konjunktion in Prolog?
```
grandfather(X, Y) :-    % head
    father(X, Z),       % body, goal 1
    parent(Z, Y).       % body, goal 2
```

## Wie funktioniert Disjunktion in Prolog?
```
rich(tom).          % fact 1
nice(mary).         % fact 2
interesting(X) :-   % rule 1
    rich(X);        % rule 1, goal 1 OR
    nice(X).        % rule 1, goal 2
```

## Wie kann Einfluss auf das Backtracking genommen werden?
mit dem Cut-Operator (!)

## Was bewirkt der Cut?
bindet in der aktuellen Regel die Wahl aller Ziele links vom Cut-Operator

## Wie kann mit dem Cut-Operator eine Maximum-Funktion geschrieben werden?
```
max(X, Y, Z) :- X >= Y, !, X = Z.
max(_X, Y, Y).
```

## Was ist der Unterschied zwischen Green Cut und Red Cut?
* Green Cut
    * Cuts, welche die deklarative Bedeutung von einem Prädikat nicht verändern
    * Typische Verwendung: Optimierung von Programmen
    * verändern die prozedurale Bedeutung von Programmen
    * indem für das Resultat unnötige Pfade beim Backtracking abgeschnitten werden
* Red Cut
    * Cuts, welche die deklarative Bedeutung von einem Prädikat verändern
    * Programme sind nicht vollständig deklarativ
    * Programme können schwer zu lesen (und verstehen) sein
    * können zu subtilen Programmierfehlern führen
    * Red Cuts sind mit Sorgfalt zu verwenden

