# Compiler Bau 1

## Was ist ein Parser Generatore?
* dienen der automatischen Generierung eines Parsers 
    * für eine entsprechende Sprachspezifikation
* erzeugt als Augabe ein Programm
    * ist einen Parser für diese Sprache
    * in einer vorher angegeben Programmiersprache implementiert
* Umfang der Zielsprachen ist abhängig vom jeweiligen Generator

## Für was steht die ABkürzung ANTLR?
ANother Tool for Language Recognition

## Was ist ANTLR?
* bietet eine kompakte Sprache zur Formulierung von Sprachgrammatiken
* Werkzeug zur Implementierung von domänenspezifischen Sprachen
* Generiert Lexer und Parser aus LL(*)-Grammatiken
    * LL: Abarbeitung der Eingabe von links nach rechts
    * LL(k): Schaut k Tokens voraus, um korrekten Pfad in der Grammatik zu finden

## Aus welchen Tools setzt sich ANTLR zusammen?
* `org.antlr.v4.Tool`
    * liest eine Grammatik ein
    * erzeugt einen Lexer und einen Parser
    * sowie Java-Klassen, für die Bearbeitung des Syntaxbaums
* `org.antlr.v4.gui.TestRig`
    * Programm, dass den Parser anruft und den Syntaxbaum zeigt

## Wie wird in ANTLR eine Gramatik definiert?
```
// Definition einer Grammatik mit dem Namen Hello
grammar Hello;

// Parser-Regeln
greeting : hello | bye ;
hello    : 'Hello' ID ;
bye      : 'Bye' ID ;

// Lexer-Regeln
ID       : [a-zA-Z]+ ;
WS       : [ \t\r\n]+ -> skip ;
```

## Was muss beim Definieren einer Gramatik mit ANTLR beachtet werden?
* erste Regel ist Startregel
* Terminale Symbole stehen in Anführungszeichen
* `-> skip` sorgt dafür, dass Zeichen nicht an den Parser weitergeleitet werden
* Parser-Regeln beginnen mit einem Kleinbuchstabe
* Lexer-Regeln beginnen mit einem Grossbuchstaben
* `EOF` ist ein reservierter Name für das Dateiende
* ANTLR akzeptiert Unicode-Zeichen in ANTLR-Namen

## Welche zwei Phasen der Kompilierung übernimmt ANTLR?
* Lexikalische Analyse (Lexer)
    * Einlesen des Quellcodes
    * Identifikation von Tokens (tokenizing)
    * Verwandte Token in Token-Klassen oder Token-Typen gruppieren
    * Syntaxanalyse (Parser)
* Strukturanalyse aufgrund der Tokens, bzw. Tokens-Struktur
    * Erzeugung der resultierenden Datenstruktur, dem Syntaxbaum

## Wie werden Lexer-Regeln für Kommentare definiert?
```
// Whitespaces, Kommentare & Co
WS           : [ \t]+ -> skip ;
LINE_COMMENT : '#' ~('\n'|'\r')* -> skip ;
COMMENT      : '/*' .*? '*/' -> skip ;
```

## Wie ist die Syntax der Parser- und Lexer-Regeln aufgebaut?
```
':'  : Definition für eine Regel
'|'  : Alternative
'''  : Kennzeichnungen von Sprachsymbolen
';'  : Ende einer Regel
( )  : dienen der Gruppierung
( )? : optionaler Inhalt, der Null oder einmal vorkommt
( )* : Wiederholung beliebig oft, auch 0-mal
( )+ : Wiederholung beliebig oft, aber mindestens 1-mal
```

## Wie sieht die ANTRL Grammatik für Adam Riese aus?
```
// Definition der Grammatik AdamRiese
grammar AdamRiese;

// Parser-Regeln
stmt   : expr '=' ;
expr   : term | term addop expr ;
term   : factor | factor mulop term ;
factor : number | '(' expr ')' ;
number : DIGIT* DIGIT ;
addop  : '+' ;
mulop  : '*' ;

// Lexer-Regeln
DIGIT  : [0-9]+ ;
WS     : [ \t\r\n]+ -> skip ;
```

## Welche zwei tree-walking Mechanismen unterstützt ANTLR?
* Listener Interface
    * das auf Ereignisse reagiert, die vom Tree-Walker ausgelöst werden
    * reagiert auf Ereignisse in der Art `startDocument()` und `endDocument()`
* Visitor Interface
    * erlabut den tree-walk selbst zu kontrollieren
    * ermöglicht die Regeln mit einer Methode direkt zu besuchen

## Was ist der Unterschied zwischen Listener und Visitor?
_Listener:_
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/11A-listeners.png}
\end{figure}

_Visitor:_
\begin{figure}[H]
    \includegraphics[width=0.6\textwidth]{images/11A-visitors.png}
\end{figure}

