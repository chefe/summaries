# Scheme 2

## Welche elementare Prädikate gibt es?
* `#t` (wahr, true)
* `#f` (falsch, false)

## Wie wird eine AND-Verknüpfung in Scheme definiert?
`(and <expr1> <expr2> ... <exprN>)`

## Wie wird eine OR-Verknüpfung in Scheme definiert?
`(or <expr1> <expr2> ... <exprN>)`

## Wie kann in Scheme auf Boolesche Gleichheit geprüft werden?
`(boolean=? <expr1> <expr2>)`

## Welche Prädikate gibt es für das Testen auf Zahlen
```
integer?    odd?        zero?       real?       even?       exact?
rational?   negative?   inexact?    complex?    positive?
```

## Welche Prädikate gibt es für das Testen auf Basistypen?
```
boolean?    symbol?     pair?       number?     vector?
char?       procedure?  string?     null?
```

## Welche Prädikate gibt es für das Testen auf Gleichheit?
```
eq?         char=?      eqv?
string=?    equal?      null=?
```

## Wie kann eine eigene Prädikatfunktionen definiert werden?
`(define (squarenumber? num) (integer? (sqrt num)))`

## Was ist ein Symbol?
* ist in Scheme eine Sequenz von Zeichen
* beginnt mit einem einfachen Anführungszeichen

## Wie können zwei Symbole auf Gleichheit geprüft werden?
$\texttt{symbol=? 'Hallo 'ABC}$

## Wie wird eine Fallunterscheidung (switch) in Scheme realisiert?
```
(cond
    (<condition clause1> <expr1>)
    (<condition clause2> <expr2>)
    ...
    (else <last-expr>))
```

## Wie wird eine Selektion (if) in Scheme realisiert?
`(if (<test>) <then-expr> <else-expr>)`

## Wie wird in Scheme eine Struktur definiert?
`(define-struct <typename> (<field1> ... <fieldN>))`

## Wie kann eine Instanz einer Struktur erstellt werden?
`(make-<typename> <value1>...<valueN>)`

## Wie kann auf die Struktur eins Objektes geprüft werden?
`(<typename>? <objekt>)`

## Wie kann auf ein Member einer Struktur zugegriffen werden?
`(<typename>-<field> <objekt>)`

## Wie kann eine Instanz einer Struktur an einen Namen gebunden werden?
`(define <name> (make-<typename> <value1>...<valueN>))`

## Wie wird in Scheme ein Kommentar gekennzeichnet?
`; Comment`

