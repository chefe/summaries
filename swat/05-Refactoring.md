# Refactoring

## Was ist Refactoring?
* Umstrukturieren des Code, ohne Verhalten zu ändern
* Verhalten der Software darf keinesfalls verändert werden
* durch kleine, nachvollziehbar Änderungen das System verbessern
* kontinuierliches Verbessern und Überarbeiten der Software

## Was ist das Ziel eines Refactoring?
Code sollte einfacher/wartbarer werden als vorher

## Wer und was sollte überarbeitet werden?
* _Wer_: jeder Entwickler
* _Wann_: ständig
* _Was_: neuer und frisch geänderter Code

## Was sind häufige Irrglauben über Refactoring?
* es muss für ein Refactoring gefragt werden
* es braucht ein Backlog-Item für Refactoring

## Was sind einfache Refactorings?
* Code formatieren gemäss Coding-Guidelines (automatisch durch Tool)
* Umbenennung von Methoden und Variablen
* Import-Statements korrigieren
* kommentierter Code löschen
* TODO, FIXME Kommentare löschen
* leeren Methoden finden und löschen
* leeren Catch-Blöcke finden

## Wieso ist eine gewisse Code-Abdeckung notwendig?
* dient als Sicherheitsnetz beim Refactoring
* mindestens 60% Abdeckung ist eine Voraussetzung
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

## Welche Länge sollte ein Feature bzw. eine Story haben?
* __Feature:__ nicht länger als 2 Monate
* __Story:__ nicht länger als 1 Woche

