# Errors, Vulnerabilities, Smells

## Welche Fehler können statische Checks finden?
* __Bugs:__ es kommt sehr wahrscheinlich zu einem Fehler
* __Errors:__ es kann zu einem Fehler kommt
* __Vulnerabilities:__ es kann gehackt werden
* __Smells:__ es kostet für die Wartung, subtile Unschönheit

## Welche Tools helfen beim Finden von Bugs in Java Code?
* Jacoco -- Java Code Coverage
* SpotBugs -- statische Analyse für Bugs
* SonarLint / SonarQube -- Qualitätsanalyse
* Checkstyle -- statische Analyse für Code-Style
* PMD -- statische Code Analyse

## Wie heissen die wichtigsten Kategorien von OWASP?
* Injection
* Broken Authentication
* Sensitive Data Exposure
* XML External Entities XEE
* Broken Access Control
* Security Misconfiguration
* Cross Site Scripting XSS
* Insecure Deserialization
* Using Components with known vulnerabilities
* Insufficient Logging and Monitoring

## Was sind die Vorteile von Tools für das Refactoring?
* benutzen um den Code zu verbessern
* sind schnell, billig und brauchen keinen Experten
* können nur Probleme finde, aber sagen nicht das es funktioniert

## Was sind die Ziele von Clean Code?
* Keine Compiler-Fehler
* Keine Compiler-Warnings
* Keine Errors, Vulnerabilities oder Smells
* Code Coverage sollte höher als 60% sein
* für jeden Bug zuerst einen Test schreiben, der ihn reproduziert

## Welche zwei Möglichkeiten gibt es für ein Coding-Dojo?
* Kata
    * gleiche Übung wiederholen
    * versuchen immer schneller und besser zu werden
* Randori
    * eine Aufgabe wird im Team gelöst
    * Driver + Navigaitor, Team unterstützt

## Was muss bei den Tests und den Checks beachtet werden?
* müssen bei jedem Commit getriggert werden
* müssen automatisch mit CI/CD ausgeführt werden
* wenn nicht erfüllt, muss der Build gesperrt werden

