# Scheme 3

## Wie ist eine Liste definiert?
* Allgemein ist eine Liste leer oder
* oder besteht aus einem ersten Element und einem Rest
* wobei der Rest selbst wieder eine Liste ist

## Wie wird in Scheme eine leere Liste definiert?
```
empty
```

## Wie wird in Scheme allgemein eine Liste definiert?
```
(cons <element> <rest of the list>)
```

## Welche Selektoren gibt es für Listen in Scheme?
* `first` / `car` für das erste Element
* `rest` / `cdr` für das zweite Element (restliche Elemente)

## Welche Prädikatfunktionen gibt es für Listen in Scheme?
* `cons?` ob eine Liste nicht leer ist
* `empty?` ob eine Liste leer ist
* `list?` testet, ob ein Objekt eine Liste ist

## Was sind einige Beispiele für Listendefinitionen?
```
; Eine Liste mit 0 Elementen
(define list0 empty)

; Eine Liste mit 1 Element
(define list1 (cons 'a empty))

; Eine Liste mit 2 Elementen
(define list2 (cons 'a (cons 'b empty)))
```

## Welche weitere Funktionen für Listen gibt es?
* `reverse` dreht die Reihenfolge einer Liste um
* `length` gibt die Länge einer Liste an
* `append` macht aus mehreren Listen eine Liste

## Was ist die Kurzform um eine Liste zu definieren?
```
'(1 2 3)             ; = (list 1 2 3)
'((1 2) (3 4) (5 6)) ; = (list (list 1 2) (list 3 4) (list 5 6))
```

## Was ist der Unterschiede zwischen dem Quote Konstruktor und der Funktion list?
`list` wertet alle Argumente aus, Quote nicht!

## Wie wird eine Funktion geschrieben um die Werte einer Liste zu summieren?
```
(define (sum a-list) (cond 
    ((empty? a-list) 0)
    (else (+ (first a-list) (sum (rest a-list))))
))
```

## Wie wird eine Funktion geschrieben um die Listenwerte zu verdoppeln?
```
(define (redouble a-list) (cond 
    ((empty? a-list) empty)
    (else (cons 
        (* 2 (first a-list))
        (redouble (rest a-list))
    ))
))
```

## Was ist eine rekursive Funktion?
* eine Funktion heisst rekursiv, wenn sie sich im Rumpf selber aufruft
* bestehen aus terminierendem Zweig und sich selbst aufrufenden Zweig
* ermöglichen eine beliebig häufige Wiederholung eines Aufrufs einer Funktion
* sind ideal zu Behandlung von Listenstrukturen

## Was ist eine wohldefinierte Rekursion
Auswertung der Funktion terminiert

## Wie wird in Scheme der Algorithmu "Sortieren durch Einfügen" implementiert?
```
(define (insert value a-list) (cond
    ((empty? a-list) (list value))
    ((<= value (first a-list)) (cons value a-list))
    (else (cons (first a-list) (insert value (rest a-list))))
))

(define(sort-by-insert num-list) (cond
    ((empty? num-list) empty)
    (else (insert (first num-list) (sort-by-insert (rest num-list))))
))
```

