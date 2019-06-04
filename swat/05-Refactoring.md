# Refactoring

## Was ist Refactoring?
* Umstrukturieren des Code, ohne Verhalten zu ändern
* Verhalten der Software darf keinesfalls verändert werden
* durch kleine, nachvollziehbar Änderungen das System verbessern
* kontinuierliches Verbessern und Überarbeiten der Software

## Was ist das Ziel eines Refactoring?
* Code sollte einfacher/wartbarer werden
* Code ist "besser" als vorher

## Wer und was sollte überarbeitet werden?
* Wer: jeder Entwickler
* Wann: ständig
* Was: neuer und frisch geänderter Code

## Was sind häufige Irrglauben über Refactoring?
* es muss für ein Refactoring gefragt werden
* es braucht ein Backlog-Item für Refactoring

## Was sind einfache Refactorings?
* Code formatiert gemäss Coding-Guidelines (automatisch durch Tool)
* Benennung von Methoden und Variablen
* Import-Statements sind korrekt
* kein kommentierter Code
* kein TODO, FIXME
* keine leeren Methoden
* keine leeren Catch-Blöcke

## Wieso ist eine gewisse Code-Abdeckung notwendig?
* mindestens 60% Abdeckung ist eine Voraussetzung
* dient als Sicherheitsnetz beim Refactoring
* setzt TDD und ATDD voraus

## Was sind Beispiele für Refactorings in Java?
* keine öffentlichen Felder
* keine Parameter als lokale Variablen benutzten
* niemals null zurückgeben
* Klassen und Exceptions der Standardbibliothek verwenden
* Private Methoden für komplexe Bedingungen
* Schleifen durch Streams ersetzen
* Bedingungen mit Filter ersetzten
* Nicht-veränderbare Klassen vorziehen

## Welche Länge sollte ein Feature und eine Story haben?
* Features sollte nicht länger als 2 Monate dauern
* Story sollte nicht länger als 1 Woche sein

