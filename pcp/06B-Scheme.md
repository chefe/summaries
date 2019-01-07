# Scheme 4

## Welche Typen von Rekursionen gibt es?
* Strukturelle Rekursion
* Akkumulative Rekursion
* Generative Rekursion

## Was ist der Unterschied strukturellen, akkumulative und generativen Rekursion?
* strukturellen Rekursionen
    * Parameter sind bei einem Aufruf entweder unverändert
    * oder eine Stufe näher zum Basisfall
* akkumulative Rekursion
    * Parameter wie bei strukturellen Rekursionen
    * zusätzlich einen oder mehrere Akkumulator Parameter
    * besitzen Hilfsfunktionen und eine Wrapper-Funktion
    * Wrapper initialisiert den Akkumulatoren
* generativen Rekursion
    * Parameter werden bei jedem Aufruf neu berechnet (generiert)
    * Terminierung der generative Rekursion zu beachten


## Wie wird eine Maximum-Funktion mit struktureller Rekursion implementiert?
```
(define (list-max a-list) (cond
    [(empty? (rest a-list)) (first a-list)]
    [else (cond
        [(> (first a-list) (list-max (rest a-list))) (first a-list)]
        [else (list-max (rest a-list))]
    )]
))
```

## Wie wird eine Maximum-Funktion mit akkumulativer Rekursion implementiert?
```
(define (list-max-helper a-list max-so-far) (cond
    [(empty? a-list) max-so-far]
    [(> (first a-list) max-so-far) (list-max-helper (rest a-list) (first a-list))]
    [else (list-max-helper (rest a-list) max-so-far)]
))

(define (list-max a-list)
    (list-max-helper (rest a-list) (first a-list)))
```

## Wie wird GCD mit einer generativen Rekursion implementiert?
```
(define (gcd-euclid n m) (cond
    [(zero? m) n]
    [else (gcd-euclid m (remainder n m))]
))
```

## Wann werden Funktionen als Werte erster Klasse behandelt?
* wenn man sie als Parameter an andere Funktionen übergeben kann
* wenn man sie zur Laufzeit erzeugen kann
* wenn man sie als Resultate von Funktionen zurückgeben kann

## Was ist eine Funktion höherer Ordnung?
Funktionen, die andere Funktionen als Parameter und/oder Resultat haben

## Was ist der Unterschied zwischen Funktionen erster Ordnung und höherer Ordnung?
* Funktionen erster Ordnung
    * machen Berechnungen unabhängig von den Werten bestimmter Daten
* Funktionen höherer Ordnung
    * drücken allgemeine Berechnungsmethoden aus
    * sind unabhängig von den jeweiligen beteiligten Funktionen

## Wie kann in Scheme eine Filter-Funktion höhere Ordnung implementiert werden?
```
(define (list-filter rel-op a-list value) (cond
    [(empty? a-list) empty]
    [else (cond
        [(rel-op (first a-list) value)
            (cons (first a-list)
            (list-filter rel-op (rest a-list) value))
        ]
        [else (list-filter rel-op (rest a-list) value)]
    )]
))
```

## Was ist der Unterschied zwischen den Operatoren `=`, `eqv?` und `equal?`?
* `=` überprüft auf (numerische) Wertegleichheit
* `eqv?` überprüfen auf Objekte-Gleichheit (falls nicht numerisch)
* `equal?` überprüfen auf Listen-Gleichheit

## Was sind die Eigenschaften der filter Funktion?
* Definition: `(filter <function> <list>)`
* wendet `<function>` auf jedes Element von `<list>` an und
* liefert eine neue Liste von Elementen zurück, auf die `<function>` zutrifft
* `<function>` darf nur ein Argument besitzen.
* `<function>` muss einen booleschen Wert zurückliefern.

## Was sind die Eigenschaften der map Funktion?
* Definition: `(map <function> <list1>...<listN>)`
* wendet `<function>` auf jedes Element von `<list1>...<listN>` an
* liefert eine neue Liste von Elementen zurück, auf die `<function>` zutrifft
* `<function>` muss soviel Argumente besitzen, wie es `<list1>...<listN>` gibt
* alle Listen `<list1>...<listN>` müssen die gleiche Anzahl Elemente besitzen
* `<function>` darf `<list1>...<listN>` nicht verändern

## Was sind die Eigenschaften der apply Funktion?
* Definition: `(apply <function> <value>...<list>)`
* wendet `<function>` auf jedes Element von `<val>...<list>` an
* liefert einen Wert vom Datentyp, auf den `<function>` zutrifft
* `<function>` muss soviel Argumente besitzen, wie es `<value>...<list>` gibt
* das letzte Argument muss eine Liste sein

