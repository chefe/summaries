# Prolog 5

## Wie wird Negation in Prolog umgesetzt?
```
snake(snake).
animal(snake).
animal(horse).
animal(dog).

likes(mary, X) :- snake(X), !, fail.    % rule 1
likes(mary, X) :- animal(X).            % rule 2

% alternativ with not
likes_with_not(mary, X) :- animal(X), not(snake(X)).
```

## Wie kann in Prolog die Verschiedenheit zweier Variablen überprüft werden?
```
different(X, X) :- !, fail.
different(_X, _Y). % anonymous variables to avoid compiler warning

% alternativ with not
different_with_not(X, Y) :- not(X = Y).
```

## Wie kann in Prolog ein Not-Prädikat definiert werden?
```
not(P) :- P, !, fail.
not(_P) :- true.
```

## Wie heisst das zu not äquivalente eingebaute Prolog-Prädikat?
`\+`

## Was ist die CWA?
* Closed-World-Assumption
* jedes Programm beschreibt alles Wahre über die Welt
* umgekehrt, alles was nicht im definiert ist wird als falsch angenommen
* negierte Aussagen über nicht definiertes werden als wahr angenommen

## Was muss bei der Anwendung von `not` beachtet werden?
* "not" hat, Probleme wenn Variable noch nicht definiert ist
* Reihenfolge von Prädikaten ist wichtig
* weil schwache Negation die Quatifikation von existentiell zu universell ändert

## Wie kann Constraint Logic Programming in Prolog benutzt werden?
```
?- use_module(library(clpr)).
true.
?- { X + 1 = 5 }.
X = 4.
```

## Wie kann eine Temperatur Umrechnung mit CLP definiert werden?
```
:- use_module(library(clpr)).
convert_clp(Celsius, Fahrenheit) :-
    { Celsius = (Fahrenheit - 32)*5/9 }.
```

## Was ist ein CSP?
* Constraint-Satisfaction-Probleme
* mathematische Probleme definiert durch:
    1. eine Menge von Variablen
    2. Domänen, aus welchen die Variablen Wert annehmen können
    3. Constraints welche die Variablen erfüllen müssen
* Gesucht ist eine Zuweisung von Werten zu den Variablen
    * so dass diese Werte alle vorgegebenen Constraints erfüllen

## Welche CSP-Domänen gibt es?
* CLP-R (für reelle Zahlen)
* CLP-Q (für rationale Zahlen)
* CLP-FD (finite Domänen)

## Wie können Fibonacci-Zahlen mit CLP-R berechnet werden?
```
:- use_module(library(clpr)).
fib_clp(N, F) :- { N = 0, F = 0 }.
fib_clp(N, F) :- { N = 1, F = 1 }.
fib_clp(N, F) :-
    { N >= 2, F = F1+F2, N1 = N-1, N2 = N-2 },
    fib_clp(N1, F1),
    fib_clp(N2, F2).
```

## Wie kann ein Rätsel mit CLP gelöst werden?
**Aufgabe:** Theo ist 13 Jahre alt. In 3 Jahren ist der
Grossvater doppelt so alt wie Theo's Vater und in 7
Jahren ist der Grossvater viermal so alt wie Theo.
Wie alt ist der Vater von Theo? \newline

**Lösung:**

```
?- { T = 13, G+3 = 2*(V+3), G+7 = 4*(T+7) }.
T = 13.0,        % current age of Theo
G = 73.0,        % current age of Theo‘s grandfather
V = 35.0 .       % current age of Theo‘s father
```

## Was sind relevante CLP-FD-Prädikate?
* **in:** legt den Wertebereich einer Variablen fest
* **ins:** legt den Wertebereich einer Liste von Variablen fest
* **all_distinct:** stellt sicher, dass Variablen in einer Liste paarweise unterschiedliche Werte haben
* **label:** Weist allen Variablen einer Liste Werte zu

## Was ist speziell im CLP-FD-Modus?
* alle Vergleichsoperatoren haben als Präfix ein `#`
* also z.B. : `#=/2, #=</2, #>=/2,` usw.

## Wie werden die CLP-FD-Prädikate angewendet?
```
?- X in 5..9, X #> 8.
X = 9.

?- [X, Y] ins 1..2, X #=< 1, Y #\= 1.
X = 1,
Y = 2.

?- [X, Y] ins 1..2, all_distinct([X, Y]), label([X, Y]).
X = 1,
Y = 2;
X = 2,
Y = 1
```

## Wie kann ein Zahlenrätsel mit CLP-FD gelöst werden?

**Ausgangslage:**

```
 SEND
+MORE
-----
MONEY
```

* die Buchstaben S, E, N, D, M, O, R, Y stehen für Ziffern zwischen 0 und 9
* verschiedene Buchstaben stehen für verschiedene Ziffern
* Zahlen bestehen aus verschiedenen Ziffern, in der dezimalen Schreibweise
* Zahlen beginnen nicht mit einer Null
* die arithmetische Gleichung rechts oben muss erfüllt sein

**Lösung:**

```
send_more_money([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y]) :-
    Vars = [S,E,N,D,M,O,R,Y],              % define the variables
    Vars ins 0..9,                         % define the domain for the vars
    all_distinct(Vars),                    % all variables must be different
    S*1000 + E*100 + N*10 + D +
    M*1000 + O*100 + R*10 + E #=           % attention: use #=/2
    M*10000 + O*1000 + N*100 + E*10 + Y,   % addition must be ok
    M #\= 0, S #\= 0,                      % numbers cannot start with zero
    label(Vars).                           % assign values to the variables

?- send_more_money(As + Bs = Cs).
As = [9, 5, 6, 7],
Bs = [1, 0, 8, 5],
Cs = [1, 0, 6, 5, 2] .
```

