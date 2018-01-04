# Clean Code

## Was sind die Anforderungen an gute Funktion?
* klein sein und nur eine Aufgabe erfüllen
* nur eine Abstraktionsebene enthalten
* geringe Einrücktiefe und möglichst kein switch enthalten
* einen guten Namen haben
* möglichst wenig (keine!) Funktionsargumente haben
* keine Flag-Argumente verwenden
* Output-Argumente vermeiden
* Anweisungen und Abfragen trennen
* keine Nebeneffekte aufweisen
* mit Exceptions (statt Fehlercodes) arbeiten

## Was bedeutet die Abkürzung FIRST bei Tests?
* Fast 
    * Tests sollen schnell sein, damit man sie jederzeit und regelmässig ausführt
* Independent 
    * Tests sollen voneinander unabhängig sein, 
    * damit sie in beliebiger Reihenfolge und einzeln ausgeführt werden können
* Repeatable 
    * Tests sollten in jeder Umgebung lauffähig sein
* Self-Validating
    * zeigen mit einem einfachen boolschen Resultat ob sie ok sind oder nicht
* Timely
    * Tests sollten rechtzeitig geschrieben werden

## Wie gehen die Unit-Test Heuristiken von Uncle Bob?
* T1: Unzureichende Tests
* T2: Coverage-Werkzeug verwenden
* T3: Triviale Tests nicht überspringen
* T4: Ignorierte Tests zeigen Mehrdeutigkeit auf
* T5: Grenzbedingungen testen
* T6: Bei Fehlern die Nachbarschaft gründliche testen
* T7: Muster des Scheiterns zur Diagnose nutzen
* T8: Hinweise durch Coverage Patterns beachten
* T9: Tests sollen schnell sein

