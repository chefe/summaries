# Scheme 1

## Welche funktionalen Programmiersprachen gibt es?
* LISP
    * Common Lisp
    * Scheme (Racket)
    * Clojure
* ML Familie (Meta Language)
    * SML (Standard ML)
    * OCaml
    * F#
* Haskell

## Was bedeutet die Abkürzung LISP?
LISt Processing

## Was bedeutete Homoikonizität?
* Selbst-Abbildbarkeit, oder Selbst-Repräsentierbarkeit
* besagt, dass Programme gleichzeitig Datenstrukturen derselben Sprache sind
* daher ist es einfach, Programme zu schreiben, die Programme schreiben
* z.B. in Lisp ist jedes Programm eine Liste

## Was sind die Prinzipien der funktionalen Programmierung?
* Keine Seiteneffekte (referentielle Transparenz)
* Funktionen als gleichberechtigte Datenobjekte (Funktionen höherer Ordnung)
* Verwendung von einer Funktions-Implementierung für verschiedene Typen
* Programme sind kürzer, klarer, besser zu warten, schneller zu erstellen

## Wie wird eine Aufgabe gelöst?
* anhand von Dekomposition und Komposition
* zerlegen der Aufgabe in kleineren Probleme
* definiert wie atomaren Probleme zu lösen sind
* definiert wie atomaren Probleme zusammengesetzt werden können

## Für was steht die Abkürzung REPL?
Read-Evaluate-Print Loop

## Welche Atomaren Ausdrücke gibt es in Scheme?
* Zahlen
    * sind selbstauswertend
* Boolesche Werte: true und false
    * ebenfalls selbstauswertend
    * alternative Darstellung #t und #f, bzw. #true und #false
* eingebaute Operatoren
    * eine Auswertung ergibt den Wert einer derartigen Operation
    * eingebauten mathematischen Funktion werden auch PRIM-OPS genannt

## Welche Zahlen unterscheidet Scheme?
* ganzen Zahlen (integer), Bsp. `23`
* rationalen Zahlen (rational), Bsp. `-3/4` oder `-0.75`
* reellen Zahlen (real), Bsp. `pos. Unendlich = +inf.0`
* irrationale Zahlen, Bsp. `pi = #i3.141592653589793`
* komplexen Zahlen (complex), Bsp. `sqrt(-2) = #i0+1.4142135623i`

## Welche eingebauten Operatoren gibt es?
* Operatoren für ganze Zahlen
    * `+, quotient, abs, numerator, -, remainder, max, denominator`
    * `*, expt, min, gcd, /, modulo, lcm`
* Operatoren für reelle und komplexe Zahlen
    * `exp, expt, sin, log, cos, sqr, tan, sqrt`

## Wie wird ein Operator in Scheme angewendet?
`(<operator> <operand1> <operand2> ...)`

## Was sollte über man über Scheme wissen?
* Reihenfolge der Auswertung ist nicht festgelegt!
* Formen können geschachtelt werden.
* die Präfix-Schreibweise kennt keine Punkt-vor-Strich-Regel
* einige Scheme-Implementierungen erlauben auch eckigen Klammern
* Unterausdrücke werden in beliebiger Reihenfolge ausgewertet

## Wie wird in Scheme ein Ausdruck definiert?
* `(define <identifier> <expression>)`
* `<identifier>` kann ein beliebiger Name sein
    * kann auch Sonderzeichen enthalten
* ` <expression>` kann ein beliebiger Ausdruck sein
    * d.h. Konstante, Variable, Funktionsaufruf, ...

## Wie wird in Scheme eine Funktion definiert?
* `(define (<identifier> <formal parameters>) <expression>)`
* `(define (area-of-disk r) (* pi (sqr r)))`

