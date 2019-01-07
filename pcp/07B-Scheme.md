# Scheme 6

## Wie kann eine Variable mit Scheme überschrieben werden?
```
(set! <variable> <expression>)
```

## Wie kann in Scheme eine Tastatureingabe gelesen werden?
```
(define s (read))
```

## Wie kann in Scheme eine Ausgabe auf die Konsole gemacht werden?
```
(display (output state s))
```

## Wie kann in Scheme ein Zeilenumbruch auf die Konsole ausgegeben werden?
```
(newline)
```

## Wie kann in Scheme eine Sequenz von Expressions ausgewertet werden?
```
(begin <expression-1>...<expression-N> <expression>)
```

## Welche IO-Funktionen gibt es in Scheme?
* `print`: als Wert nach stdout
* `display`: ohne Hochkomma an Symbolen und Strings etc.
* `write`: mit Hochkomma an Symbolen und Strings etc.
* `pretty-print`: wie write, aber mit automatischem Zeilenumbruch und Einrückung
* `printf` / `fprintf`: Formatierung der Argumente gemäss Formatstring
    * `~n` or `~%` gibt an dieser Stelle ein `newline` aus
    * `~a` or `~A` displays das nächste Argument nach dem Formatstring
    * `~s` or `~S` `writes` das nächste Argument nach dem Formatstring
    * `~v` or `~V` `prints` das nächste Argument nach dem Formatstring
* `newline`: Ausgabe eines Zeilenumbruchs
* `read`: Lesen von Eingaben vom Benutzer

## Welche weiteren IO-Funktionen gibt es in Scheme?
```
; Umgang mit Port               ; Datei schreiben
(port? <variable>)              (open-output-file <filename>)
(input-port? <variable>)        (write <expression> <output-port>)
(output-port? <variable>)       (write-char <char-expression> <output-port>)
(current-input-port)            (write-string <string-expression> <output-port>)
(current-output-port)           (write-line <expression> <output-port>)
                                (newline <output-port>)
; Datei auslesen                (flush-output out)
(open-input-file <filename>)    (close-output-port out)
(read <input-port>)
(read-char <input-port>)
(read-byte <input-port>)
(read-string <input-port>)
(read-line <input-port>)
(eof-object? <variable>)
```

## Wie kann mit Scheme eine Date geschrieben werden?
```
#lang racket
; Port öffnen, um in die Datei zu schreiben
(define out (open-output-file "output.txt"))

; Datei-Schreiben
(define (output-file a-list) (cond
    ((null? a-list) (newline out))
    (else (begin
        (write (first a-list) out)
        (write-char #\space out)
        (output-file (rest a-list))
    ))
))
```

