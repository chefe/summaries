# Formale Sprachen

## Was ist eine Sprache?
* ursprünglich das Gesprochene
* beinhaltet Aufzeichnung (Symbole, Zeichen, Schrift)
* jede Form der Kommunikation
* besteht aus allen möglichen Aussagen (Wörter und deren Bedeutung)

## Wie wird eine Sprache definiert?
* Regeln zum Bilden von Wörter (Syntax, Grammatik, Aufbau, Konstruktion)
* Regeln zum Deuten der Wörter (Semantik, Bedeutung, Inhalt)

## Wie unterscheiden sich natürliche und formale Sprachen?
* natürliche Sprache
    * Syntax und Semantik nicht absolut präzise
    * z.B. Deutsch
* formale Sprachen
    * Syntax und Semantik sind formal/präzise definiert
    * z.B. bei Programmiersprachen

## Was sind die Grundlagen formaler Sprachen?
* Alphabet A (Menge der Symbole)
* Kleenesche Hülle A* (Menge aller Symbolkombinationen)
* Wort w in A*, Epsilon steht für das leere Wort
* Sprache L als Teilmenge von A*

## Aus was besteht eine Formale Gramatik?
* Eine formale Grammatik G ist ein 4-Tupel: G = (N, T, P, s)
    * N: Menge von Nichtterminalsymbolen (Hilfsvariablen, Hilfsbezeichner)
    * T: Menge von Terminalsymbolen (= Alphabet)
    * P: Menge von Produktionen
    * s: das Startsymbol (s in N)

## Was sind Wortprobleme?
* Gehört ein Wort w zu einer bestimmten Sprache?
* unlösbares bzw. nicht entscheidbares Problem
* Aufgabe des Compilers

## Was sind die Type der Hirarchie nach Noam Chomsky?
* Typ 0: keine Einschränkungen, rekursiv aufzählbare Sprachen
    * Es sind beliebige Produktionen zulässig
    * Wortproblem kann für solche Grammatiken unlösbar sein
* Typ 1: kontextsensitive Grammatiken/Sprachen
    * nichtverkürzende Grammatik
    * sukzessive längere Wörter
    * Wortproblem ist lösbar aber mit sehr grossem Aufwand
* Typ 2: kontextfreie Grammatiken/Sprachen
    * auf linke Seite nur ein einziges Nichtterminalsymbol
    * Wortproblem lösbar mit maximal O(n^3) (n ist Wortlänge)
* Typ 3: reguläre Grammatiken/Sprachen
    * rechts ein Terminalsymbol (evtl. gefolgt von einem Nichtterminalsymbol)
    * Wortproblem ist mit O(n) lösbar

## Was für ein Typ sind heutige Programmiersprachen?
liegen deshalb zwischen Typ 2 (kontextfrei) und Typ 1 (kontextsensitiv)

## Was ist ein Ableitungsbaum?
* Darsteluung der Syntax als Baum
* zur überprüfung ob die Sprache korrekt ist

## Was ist ein Syntaxdiagramm?
* Diagramm zur Darstellung eienr formalen Sprache
* besteht aus den folgenden Elementen:
    * Rechtecke als Platzhalter
    * Ovale für Symbole aus dem Alphabet
    * Verbindungspfeile zwischen Elementen für Wortkonstruktionen

## Was bedeuten die Folgenden Abkürzungen BNF/EBNF?
* Backus Naur Form
    * `<...>` Nichtterminalsymbole
    * `::=` ist definiert
    * `|` trennt Alternativen
* Erweiterte Backus Naur Form
    * `(...)` Gruppierung: Inhalt zusammen betrachten
    * `[...]` Option: Inhalt steht einmal oder keinmal
    * `{...}` Wiederholung: Inhalt steht beliebig oft

## Welche Prioritäten gelten bei Regulären Ausdrücken?
1. Klammern (rund oder eckig)
2. Wiederholung (* oder ? oder {1,3})
3. Konkatenation 
4. Alternativen (getrennt mit |)

