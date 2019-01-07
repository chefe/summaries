# Prolog 3

## Was bedeutet endrekursiv?
* sie nur einen rekursiven Aufruf hat
* der rekursive Aufruf ist der letzte Aufruf in der letzten Klausel dieser Prozedur
* alle Aufrufe vor dem rekursiven Aufruf müssen deterministisch sein
* Vorteil: Kein Backtracking notwendig!
* Endrekursion kann als Iteration ausgeführt werden
* benötigt dann keinen zusätzlichen Speicherplatz

## Wie wird eine Endrekursion in Prolog aufgebaut?
```
p(...) :- ...          % no recursive call in the body
p(...) :- ...          % no recursive call in the body
...
p(...) :- ...,         % all deterministic and
          ...,         % no recursive calls until here.
          p(...).      % here: tail-recursive call
```

## Wie lassen sich Fibonacci-Zahlen ohne Endrekursion berechnen?
```
fib(0, 0).
fib(1, 1).

fib(N, F) :-
    N > 1,
    N1 is N – 1, N2 is N - 2,
    fib(N1, F1), fib(N2, F2),
    F is F1 + F2.
```

## Wie lassen sich Fibonacci-Zahlen mittels Endrekursion berechnen?
```
fib_tr(N, F) :- fib_tr(N, 0, 1, F).  % call accumulator
fib_tr(0, A, _, A).                  % simple case

fib_tr(N, A, B, F) :-                % general case
    N1 is N – 1,                     % new argument N1
    N1 >= 0,                         % avoid underflow
    Sum is A + B,                    % accumulator Sum
    fib_tr(N1, B, Sum, F).           % tail-recursisve call
```

## Was sind die Vorteile einer Endrekursion?
* hilft falls der Speicherplatz bei einer rekursiven Prozedur kritisch ist
* eine endrekursive Prozedur kann von Prolog als Iteration ausgeführt werden
* Umwandlung von rekursiver in endrekursive Prozedur ist nicht trivial
* Umwandlung benötige meistens ein oder mehrere Akkumulator-Argument

## Wie können in Prolog dynamische Regeln definiert werden?
```
:- dynamic bigger/2.
bigger(elephant, horse).
bigger(horse, dog).
bigger(horse, sheep).
```

## Wie können im Prolog-Prompt alle Regeln/Fakten zu einem Namen angezeigt werden?
```
?- listing(bigger).
:- dynamic bigger/2.
bigger(elephant, horse).
bigger(horse, dog).
bigger(horse, sheep).
```

## Wie kann ein neuer Fakt / neue Regel eingefügt werden?
* einfügen als erste Regel / erster Fakt
    * `asserta(bigger(me, you)).`
* einfügen als letzte Regel / letzter Fakt
    * `assertz(bigger(me, you)).`

## Wie kann ein Fakt/Regel entfernt werden?
```
?- retract(bigger(me, you)).
true.
```

## Was sind die Vorteile von Assertions?
* gewisse Teilprobleme müssen nicht mehrmals gelöst werden
* Lösungen werden mit Hilfe von Assertions in der Wissensdatenbank abgelegt
* Zwischenresultate werden wegen der Aufrufbaum-Struktur mehrmals berechnet

## Wie lassen sich Fibonacci-Zahlen mittels Assertions berechnen?
```
:- dynamic fib_as/2.
fib_as(0, 0).               % base case 1
fib_as(1, 1).               % base case 2
fib_as(N, F) :-             % general rule
    N > 1,                  % allow no negative numbers
    N1 is N-1,
    N2 is N-2,
    fib_as(N1, F1),         % calculate F1 = fib(N-1)
    fib_as(N2, F2),         % calculate F2 = fib(N-2)
    F is F1+F2,
    asserta(fib_as(N, F)).  % assert new fact
```

## Wie wird in Prolog eine Liste definiert?
```
?- X = [a, b, c].
X = [a, b, c].
?- Y = [d, e, f(X), [x, y]].
Y = [d, e, f(X), [x, y]].
?- Z = [].
Z = [].
```

## Was sind die Eigenschafte einer Liste in Prolog?
* Elemente einer Liste werden in eckigen Klammern eingeschlossen
* Elemente werden durch Komma getrennt
* Länge einer Liste ist die Anzahl Elemente, welche in dieser Liste enthalten sind
* Listen-Elemente sind beliebige Prolog Terme
* `[]` ist die leere Liste

## Aus was besteht eine nicht-leere Liste?
* einem ersten Element = Kopf der Liste (head)
* dem restlichen Teil der Liste = Schwanz der Liste (tail)
* der Schwanz einer Liste ist immer auch wieder eine Liste

## Wie kann eine Liste in Head und Tail unterteilt werden?
```
?- [a, b, c] = [Head | Tail].
Head = a,
Tail = [b, c].
```

## Wie kann in Prolog ein Prädikat zu Listenzugehörigkeit geschrieben werden?
* Element X kommt in Liste L vor wenn entweder
* a: X der Kopf ist von L oder
* b: X kommt kommt im Schwanz von L vor

```
mem(X, [X | _]).                      % tail doesn't matter
mem(X, [_| Tail]) :- mem(X, Tail).    % head doesn't matter
```

## Wie können alle Permutationen einer Liste [a,b,c] ausgegeben werden?
```
L=[_,_,_], mem(a,L), mem(b,L), mem(C,L)
```

## Wie kann in Prolog ein Prädikat zu Listenkonkatenation geschrieben werden?
```
conc([], L, L).
conc([X | L1], L2, [X | L3]) :- conc(L1, L2, L3).
```

## Wie kann die Funktion `mem` mit der Funktion `conc` geschrieben werden?
```
mem_c(X, L) :- conc(_, [X | _], L).
```

