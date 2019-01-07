# Scheme 5

## Wie können in Scheme lokale Namen definiert werden?
```
(local (<definition1>...<definitionN>) <expression>)
```

## Wie kann eine lokale Funktion zum Verdoppeln einer Liste genutzt werden?
```
(define (redouble a-list)
    (local (
        (define (f x) (* x 2))
        (define (g a-numlist) (cond
            [(empty? a-numlist) empty]
            [else (cons
                (f (first a-numlist))
                (g (rest a-numlist))
            )]
        ))
    ) (g a-list))
)
```

## Was bedeutet Lexikalisches Scoping?
dass immer die in der Schachtelungsstruktur nächste Definition benutzt wird

## Wie kann in Scheme eine lokale Variable definiert werden?
```
(let (
    (<variable1> <expression1>)
    ...
    (<variableN> <expressionN>)
) <expression>)
```

## Wie werden lokale Variablen mit let und local definiert?
```
; Variante 1 mit local
(define (f x y z)
    (local (
        [define p (+ x y)]
        [define q (+ z y)]
    ) (+ (sqr p) (sqr q)))
)

; Variante 2 mit let
(define (f x y z)
    (let (
        [p (+ x y)]
        [q (+ z y)]
    ) (+ (sqr p) (sqr q)))
)
```

## Was ist bei der Auswertung von `let` zu beachten?
* zuerst werden alle Expressions ausgewertet
* danach werden allen den Namen zugewiesen
* das heisst: Variablendefinitionen müssen unbhängig voneinander sein
* Problem kann umgangen werden mit `let*`

## Was ist der Unterschied zwischen `let*` und `let`?
* hat dieselbe Syntax wie `let`
* Auswertung erfolgt von links nach rechts
* Zugriff auf vorher definierte Variablen möglich

## Was ist die Syntax für das Anwenden eines Lambda-Ausdruck?
```
((lambda (<formal parameters>) <expression>) <argument-list>)
```

## Wie kann eine Quadrat- und eine Maximum-Funktion mit Lambdas definiert werden?
```
(lambda (x) (* x x))             ; Quadratfunktion
(lambda (x y) (if (< x y) y x))  ; Maximum
```

