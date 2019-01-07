# Compiler 1

## Was ist ein Compiler?
Ein Übersetzerprogramm, das

* ein Programm in einer Quellsprache liest und
* in ein äquivalentes Programm einer Zielsprache übersetzt

## Was sind die wichtigste Eigenschaft eines Compilers?
* Inhalt, Syntax und Semantik, beider Sprachen nicht zu verfälschen
* Fehlererkennung und Fehlermeldungen an den Benutzer

## Was ist der Unterschied zwischen Syntax und Semantik?
* __Syntax:__ Grammatik des Codes
* __Semantik:__ Bedeutung der einzelnen Zeichen

## Welche 2 Arten von Fehler gibt es für einen Compiler?
* Syntaktische Fehler, z.B. vergessene Klammern
* Semantische Fehler, z.B. nicht deklarierte Variable

## Was sind die Phasen bei der Kompilierung?
* __Phase 1: Analyse__
    * Schritte
        * Lexikalische Analyse
        * Syntaxanalyse
        * Semantische Analyse
    * Resultate
        * Symboltabellen
        * Abstrakter Syntaxbaum
* __Phase 2: Synthese__
    * Zwischencode-Erzeugung
    * Code-Optimierung
    * Code-Erzeugung

## Welche Schritte gehören zum Fontend und welche zum Backend?
* __Fontend__
    * Lexikalische Analyse
    * Syntaxanalyse
    * Semantische Analyse
    * Zwischencode-Erzeugung
* __Backend__
    * Code-Optimierung
    * Code-Erzeugung

## Was ist die Aufgabe der lexikalischen Analyse?
* Identifikation von Operatoren, Symbolen, Schlüsselwörtern usw.
* Kommentare und irrelevante Zeichen werden hier entfernt
* Scanner zerlegt den Quellcodes in seine Bestandteile und erzeugt daraus Tokens
    * Bezeichner
    * Symbol (Zuweisung, Multiplikation, Subtraktionm ...)
    * Zahl (Konstante)

## Was ist die Aufgabe der Syntaxanalyse?
* Analyse des hierarchischen Programmaufbaus
* Analyse der Tokens
* Tokens folgen den Grammatikregeln
* Erkennung von
    * Variablen-/Funktions-/Klassen-Definitionen
    * arithmetischen Ausdrücken
    * Anweisungen
    * usw.
* Erzeugung der Symboltabellen und des abstrakten Syntaxbaum (AST)

## Was ist die Aufgabe der semantische Analyse
* Typprüfung, Berechnung von Typkonversionen u.a.
* Überprüfung auf semantische Fehler
    * Auf Namen bezogene Überprüfung (Namenskonventionen)
    * Typüberprüfungen (z.B. Zuweisungen, Parameterübergaben)
    * Identifizierung der Operatoren und Operanden (für entsprechenden Typen)
    * Überprüfungen der Kontrollflusses (z.B. erreichbarer Code)
    * Überprüfung auf Eindeutigkeit (z.B. Scoping, mehrfach Definitionen)

## Was ist ein Bezeichner?
symbolischer Name für Variable, Funktion o.a.

## Was ist ist die Symboltabellen?
zu jedem Bezeichner wird die vorhandene Information abgelegt

## Was ist ein Abstrakter Syntaxbaum?
* Repräsentation hierarchischer Strukturen
* enthält nur Informationen, welche für die Weiterverarbeitung nötig sind

## Was sind die Eigenschaften der Zwischencode-Erzeugung?
* wird aus dem Syntaxbaum erzeugt
* ist maschinenunabhängiger
* hat die Form einer Maschinensprache (welche aber nicht real existiert)
* ist ein Programm für eine besonders einfach strukturierte virtuelle Maschine
* ist oft nur ein Zwischenprodukt und wird weiter verarbeitet
* kann optimiert werden
* vereinfacht die Implementierung einer Sprache für unterschiedliche Ziele

## Was ist die Aufgabe der Code-Optimierung?
* Ziel ist schneller Maschinencode
* Optimierungsmöglichkeiten:
    * Erkennung und Eliminierung bestimmter Rekursionsformen
    * Verkürzung von Sprungketten
    * Maschinenspezifische Optimierung

## Was ist die Aufgabe der Code-Erzeugung?
* Generierung des eigentlichen Ziel Code
* z.B. Bytecode, Maschinencode, Assembler

## Welche Arten von Compiler gibt es?
* Nativer Compiler
    * erzeugt Zielcode für die Plattform auf der er selbst läuft
* Cross-Compiler
    * erzeugt Zielcode für eine Plattform, auf der er selbst nicht läuft
* Single-pass-Compiler
    * erzeugt in einem einzigen Durchlauf aus dem Quellcode den Zielcode
    * ist üblicherweise sehr schnell, aber kann nur einfache Optimierungen
    * nur für bestimmte Programmiersprachen
* Multi-pass-Compiler
    * übersetzt den Quellcode in mehreren Schritten in den Zielcode

## Welche Sonderformen von Compiler gibt es?
* Transcompiler
    * übersetzt Quellcode zwischen Hochsprachen
* Compiler-Compiler
    * Hilfsprogramme zur automatischen Generierung von Compiler(-Teilen)
* Just-in-time-Compiler
    * Verfahren um Programme zur Laufzeit in Maschinencode zu übersetzen
    * Ausführungsgeschwindigkeit verbessern gegenüber einem Interpreter
* Compreter
    * übersetzt Quellcode zuerst in einen Zwischencode
    * der dann zur Laufzeit interpretiert wird
    * heutige Interpreter verwenden Compreter

## Was ist ein Interpreter?
* lesen den Quellcode ein und analysieren ihn
* erzeugen keine Programme
* lösen direkt zu jedem Befehl die zugehörigen Aktion aus

## Was sind die Vor- und Nachteile von Interpreter und Compiler?
* __Vorteile Interpreter__
    * eine Programmzeile kann sofort getestet werden
    * Fehler bei der Programmierung werden sofort erkannt und behoben
* __Nachteile Interpreter__
    * bei jeder Ausführung muss das Programm erneut analysiert werden
    * daher längere Laufzeit
    * es gibt kein Objektprogramm
    * das Quellprogramm benötigt mehr Speicherplatz
* __Vorteile Compiler__
    * Programmanalyse muss nicht mehrmals vorgenommen werden
    * Objektprogramm benötigt weniger Ausführungszeit und Speicherplatz
* __Nachteile Compiler__
    * Mehrere Schritte sind erforderlich, um ein Programm auszuführen
    * Fehlersuche bei der Programmentwicklung ist meist aufwändiger

## Was setzt Bytecode voraus?
* auf ungewöhnlichen oder sehr einfachen Architekturen bearbeitbar ist
* Typinformationen enthält, um zulässige Operationen zuordnen zu können
* Instruktionen zur Organisation von Threads und Interaktion
* muss möglichst kompakt und serialisierbar sein
* enthält zusätzliche Metainformationen

## Was sind die Komponenten einer virtuellen Maschine?
* Code-Optimierer
* Speicher-Organisation
* Thread-Organisation
* IO-Organisation
* Stack / Register-Maschine

## Wie funktioniert eine virtuellen Maschine?
* Bytecode wird vom Code-Optimierer optimiert
    * allgemein oder maschinenbezogen Optimierung
    * Code wird zudem auf Fehlerfreiheit und Sicherheit verifiziert
* Bytecode wird ausgeführt
    * Instruktionen beziehen sich auf virtuelle Register oder den Stack
* benötigter Speicher wird von der virtuellen Maschine organisiert
    * automatische Speicherverwaltung
* Organisation der Threads
    * Threads können auf das Betriebssystem abgebildet werden (emuliert)
    * Threads können auf Betriebssystem Ebene laufen
    * Threads können direkt auf der Zielhardware laufen

