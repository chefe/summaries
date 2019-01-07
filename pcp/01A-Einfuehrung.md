# Einführung

## Wie heissen ein paar populäre Sprachen?
Ada, Delphi, Modula-2, Ruby, Algol, Eiffel, Oberon, Scala, Assembler, Fortran, Objective-C, Scheme, Bash, Haskell, Pascal, Smalltalk, Basic, Java, Perl, Swift, C, JavaScript, PL/SQL, C#, Lisp, PHP, C++, Lua, Prolog, Cobol, ML, Python

## Was ist eine Programmiersprache?
formal konstruierte Sprache, entworfen um Befehle an Maschinen zu übermitteln

## Was ist ein Algorithmus?
schrittweises Verfahren zur Lösung von einem Problem
(oder einer Klasse von Problemen)

## Was ist der Unterschied zwischen Syntax & Semantik?
* Syntax:
    * "Zusammenfügungsregeln"
    * gibt das Muster vor, nach dem Programme einer Sprache aufgebaut sind
* Semantik:
    * "Interpretationsregeln"
    * definiert die Bedeutung von Programmen (Anweisungen, Operatoren, usw.)

## Was bedeutet Turing-Vollständigkeit?
* universelle Programmierbarkeit
* damit lassen sich grundsätzlich alle Funktionen berechnen
* welche mit einer [fiktiven] Turing-Maschine berechnet werden können

## Was ist das Problem einer Turing-Maschine in der Realität?
kein endloses Band möglich

## Was ist ein Programmierparadigma?
* fundamentaler Programmierstil
* eine bestimmt Art die Struktur und Elemente von Programmen aufzubauen

## Wie wird der Begriff Paradigma definiert?
eine grundlegende wissenschaftliche Denkweise (auch Denkmuster oder Schema)

## Wie heissen die grundlegenden Programmierparadigmen?
* imperativ
    * strukturiert (Pascal)
    * prozedural (C)
    * objektorientiert (Java)
* deklarativ
    * funtional (Scheme)
    * logisch (Prolog)

## Was ist der Unterschied zwischen imperativ und deklarativ?
* Imperative Programmierung: WIE
    * Problemlösung wird schrittweise in Befehlen beschrieben
    * Wie ist das Problem zu lösen?
    * Imperativ = unbedingte Anweisung
* Deklarative Programmierung: WAS
    * Berechnungslogik wird beschrieben ohne den Kontrollfluss zu definieren
    * Was sind die Fakten zum Problem?
    * Deklaration = Erklärung

## Was ist der Unterschied von imperativ und deklarativ anhand eines Kreises?
* Imperative Programmierung: WIE
    * Resultat einer 360 Grad Rotation um einen festen Mittelpunkt mit dem Zirkel
    * Beschreibung von einer konkreten Lösung, so wird schrittweise vorgegangen!
* Deklarative Programmierung: WAS
    * Menge aller Punkte, die von einem vorgegebenen Punkt denselben Abstand hat
    * Reine Problembeschreibung ohne konkreten Lösungsweg!

## Wie wird GCD imperativ/prozedural in C programmiert?
```
int gcd(int a, int b) {
    while (a != b) {
        if (a > b) a = a - b;
        else b = b - a;
    }
    return a;
}
```

## Wie wird GCD deklarativ-logisch in Prolog programmiert?
```
gcd(A, A, A).
gcd(A, B, G) :- A > B, C is A-B, gcd(C, B, G).
gcd(A, B, G) :- B > A, C is B-A, gcd(C, A, G).
```

## Wie wird GCD deklarativ-funktional in Scheme programmiert?
```
(define gcd
    (lambda (a b)
        (cond ((= a b) a)
            ((> a b) (gcd( (- a b) b))
            (else (gcd (- b a) a))))))
```


## Was sind Eigenschaft des imperativen Programmierparadigmas?
* ist eng angelehnt an die Ausführung von Maschinen-Code
* auf Computern, die nach der Von-Neumann-Architektur implementiert sind

## Was sind Eigenschaft der strukturierten Programmierung?
* Spezialisierung des imperativen Paradigmas
* Beschränkung auf drei Kontrollstrukturen
* Sequenzen, Auswahl (Verzweigung), Wiederholung (Schleifen)

## Was sind Eigenschaften der prozeduralen Programmierung?
* Spezialisierung des imperativen Paradigmas
* bietet Unterteilung von Programmen in Teilprogramme
* Vermeidet Code-Duplikation
* Prozeduren können Argumente entgegen nehmen und Ergebnisse zurück geben
* Unterscheidung in Programm-globale und Prozedur-lokale Variablen

## Was sind Eigenschaften der objektorientierten Programmierung?
* Spezialisierung des imperativen Paradigmas
* Programme bestehen aus einzelnen Objekte, welche miteinander interagiere
* Weiterentwicklung von prozeduraler Programmierung und abstrakten Datentypen

## Was sind Eigenschaften der deklarativen Programmierung?
* das zu lösende Problem wird beschrieben
* der Lösungsweg wird dann automatisch ermittelt
* Kontrollfluss von einem Programm ist nicht (explizit) geregelt
* Bekannteste Unter-Programmierparadigmen sind logische und funktionale

## Was sind Eigenschaften der logischen Programmierung?
* Spezialisierung vom deklarativen Paradigma
* Programm besteht aus Fakten und Regeln
* auf Anfrage wird automatisch versucht eine Lösungsaussage herzuleiten
* Lösungsweg wird nicht angegeben
* basierend auf mathematischer Logik

## Was sind Eigenschaften der funktionalen Programmierung?
* Spezialisierung des deklarativen Paradigmas:
* Programme bestehen ausschliesslich aus Definitionen von Funktionen
* der Rückgabewert hängt ausschliesslich von den Parametern ab
* es gibt keinen Zustand und keine veränderbaren Daten
* basiert auf dem formalen System des Lambda-Kalkül

## Was meint Referenzielle Transparenz?
* Funktion ist nicht abhängig von Zustand
* Resultat ist immer das gleiche bei den gleichen Parameter
* ist daher beliebieg paralellisierbar

