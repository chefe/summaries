# Prolog 1

## Woher kommt der Name PROLOG?
PROgrammation en LOGique

## Was ist der Grundgedanke hinter Prolog?
* Beschreibt mit Logik (Relationen) was für ein Resultat wir wollen
* und nicht wie das berechnet werden soll!

## Was sind die wichtigste Mechanismen von Prolog?
* Matching
* Automatisches Backtracking

## Wie funktioniert Prolog?
* Wissensdatenbank (Knowledge Base)
* Bestehend aus Fakten & Regeln
* Kann abgefragt werden durch Anfragen (Queries)

## Wie kann eine einfache Wissensdatenbank mit Prolog aufgebaut werden?
```
bigger(elephant, horse).
bigger(horse, dog).
bigger(horse, sheep).
```

## Welche Dinge sind wichtig zu wissen über Prolog?
* Gibt `false` zurück wenn keine weiteren Lösungen
* `;` oder `Space` für weitere Lösungen
* `.` um Abfrage abzubrechen

## Wie kann die Wissensdatenbank abgefragt werden?
```
?- bigger(elephant, horse).
```

## Wie kann eine transitive Funktion definiert werden?
```
is_bigger(X, Y) :- bigger(X, Y).
is_bigger(X, Y) :- bigger(X, Z), is_bigger(Z, Y).
```

## Welche Arten von Terme gibt es in Prolog?
* Zahlen (numbers)
    * z.B.: `123, 4567.8, -9`
* Atome (atoms)
    * beginnen mit Kleinbuchstaben oder in einfache Anführungszeichen
    * z.B.: `elephant, ‘mein text‘`
* Variablen (variables)
    * beginnen mit Grossbuchstaben oder einem Unterstrich
    * z.B.: `X, Elephant` oder `_`
* Zusammengesetzte Terme (compound terms)
    * haben einen Funktor (ein Atom) und Argumente (Terme)
    * z.B.: `is_bigger(horse, X)`

## Was ist die Bedeutung eines Unterstrich in Prolog?
* heisst anonyme Variable
* Platzhalter, dessen Wert nicht interessiert
* jedes Auftreten von `_` repräsentiert eine neue Variable
* Instanzierungen von `_` werden nicht ausgegeben

## Was ist ein Grundterm?
* Terme ohne Variablen
* z.B. `bigger(me, you), write(‘hello world‘)`

## Was ist ein Prädikat?
* Atome und zusammengesetzte Terme
* falls Atome: Fakten, z.B. `bigger`
* sonst: Regeln, z.B.: `is_bigger(X, Y) :- bigger(X, Y)`

## Was wird unter dem Begriff Arity verstanden?
* im Deutschen Stelligkeit
* Anzahl Argumente von einem Prädikat
* wird in Prolog im Format `is_bigger/2` angegeben

## Weshalb ist die Stelligkeit relevant?
Prolog behandelt zwei Prädikate mit gleichem Funktor aber mit
unterschiedlicher Stelligkeit als zwei verschiedene Prädikate

## Welche eingebaute Prädikate gibt es in Prolog?
```
% Programm-Datei kompilieren und einlesen
consult(bigger).

% Argument in die Konsole schreiben
write('hallo hslu').

% Argument aus der Konsole lesen und wieder zurückschreiben
read(X), write(X).
```

## Wie sind die Begriff Klauseln, Prozeduren und Programme definiert?
* Klauseln (clauses) = Fakten und Regeln (zusammengesetzte Terme)
* Prozedur (procedure) = Alle Klauseln zum gleichen Prädikat
* Prolog-Programm = eine Liste von Klauseln

## Was ist ein Fakt?
* Prädikate gefolgt von einem Punkt
* Fakten definieren etwas als bedingungslos wahr
* sind typischerweise Grundterme (also Terme ohne Variablen)

## Was ist eine Regel?
* bestehen aus einem Kopf (head) und einem Hauptteil (body), durch `:-` getrennt
* Regel ist wahr, falls alle Prädikate als wahr bewiesen werden können
* Prädikate werden durch Komma abgetrennt und durch Punkt abgeschlossen
* ein Komma ist ein logisches UND

## Was ist eine SLD-Resolution?
* Selective Linear Definite Clause Resolution
* Prolog: `q :- p1 , p2 , ... pn .`
* Mathe: `(p1 ^ p2 ^ ... ^ pn ) -> q`

## Wie werden Anfragen an das Prolog-System beantwortet?
Beweissuche mittels Backtracking und Matching

## Wie ist Matching definiert?
* Zwei Terme matchen, wenn sie identisch sind oder
* wenn sie durch Ersetzten von Variablen durch andere Terme identisch gemacht werden können

## Wie können zwei Terme gematcht werden?
```
?- eat(tom, burger) = eat(X, burger).
X = tom.
?- eat(tom, burger) = eat(X, potato).
false.
?- =(tom, tom).
true.
?- tom = tom.
true.
?- 'Tom' = tom.
false.
?- 'tom' = tom.
true.
```

## Wie sind die drei Matching Regel in Prolog definiert?
1. Zwei atomare Terme matchen, wenn sie die gleiche Zahl oder das gleiche Atom sind
2. Falls einer der Terme eine Variable ist,
    * dann matchen die beiden Terme
    * und die Variable wird mit dem Wert des zweiten Terms instanziiert
3. Zwei zusammengesetzte Terme matchen,
    * falls gleicher Funktor, gleiche Stelligkeit
    * und alle korrespondierenden Argumente matchen

## Wie können einfach Abfragen mit Matching programmiert werden?
```
vertical(line(point(X,_), point(X,_))).
horizontal(line(point(_,Y), point(_,Y))).

?- vertical(line(point(1,1), point(1,5))).
true.

?- horizontal(line(point(1,2),point(3,X))).
X = 2.
```

## Was ist Unifikation?
bekanntes Verfahren in der Logik zur Vereinheitlichung von Ausdrücken

## Was ist der Unterschied zwischen Unifikation und Matching?
Matching macht keinen Occurs Check

## Was ist ein Occurs Check?
Falls eine Variable mit einem Term vereinheitlicht wird,
wird zuerst getestet, ob diese Variable in diesem Term vorkommt

## Wie kann in Prolog ein Occurs Check durchgeführt werden?
```
?- A = F(A).
A = f(A).
?- unify_with_occurs_check(A, f(A)).
false.
```

## Wie läuft die Beweissuche in Prolog ab?
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/02A-beweissuche.png}
\end{figure}

## Was sind die drei wesentlichen Mechanismen von Prolog?
* Suche in der Wissensdatenbank von oben nach unten
* Abarbeitung der Abfrage-Klauseln von links nach rechts
* Backtracking zur Erholung von schlechten Pfaden

