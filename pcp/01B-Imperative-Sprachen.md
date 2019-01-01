# Imperative Sprachen

## Was bedeutet imperare?
befehlen, anordnen

## Was sind charakteristiken der imperativen Programmierung?
* Programm besteht aus Sequenz von Anweisungen
* Kontrollfluss ist klar vorgegeben, grundsätzlich sequentiell

## Was sind Charakteristiken der strukturierten Programmierung?
* spezialisierung des imperativen Paradigmas
* verlangt Beschränkung auf drei Kontrollstrukturen:
    1. Sequenzen (Hintereinander auszuführende Programmanweisungen)
    2. Auswahl (Verzweigung: Bedingung)
    3. Wiederholung 
* Konsequenz: goto darf nicht eingesetzt werden

## Was sind Charakteristiken der prozeduralen Programmierung?
* Spezialisierung des imperativen Paradigmas
* bietet Unterteilung von Programmen in Teilprogramme
* vermeidet Code-Duplikation
* Prozeduren können Argumente entgegen nehmen und Ergebnisse zurück geben
* Unterscheidung in Programm-globale und Prozedur-lokale Variablen

## Was ist eine ADT?
* Abstrakte Datentyp
* sind mathematische Modelle für Datenstrukturen und darauf definierte Operationen
* Semantik ist vorgegeben, nicht aber Implementierung

## Was sind Beispiele für ADTs?
| __Name__ | __Operationen__                       |
|----------|---------------------------------------|
| Stack    | init, push,pop, top, isEmpty          |
| Queue    | init, add, remove, isEmpty            |
| Matrix   | addition,mulitplication, inverse, ... |

## Worin unterschieden sich ADT in C und Java?
* Implementierung der Datenstruktur ist getrennt von der dazu gehörigen Funktionen
* Zusammenbringen von Daten und Operationen war Hauptmotivationen für Objektorientierung

## Um welche Konzepte erweitert Java die Sprache C?
* Klassen und Instanzen: `class, extends, instanceof, new, this, super`
* Interfaces: `interface, implements`
* Packages: `package, import`
* Sichtbarkeit: `private, protected, public`
* Exception-Handling: `try, catch, finally, throw`

