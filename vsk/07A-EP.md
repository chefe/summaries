# Unit-Testing

## Was bedeutet Test First?
* vor der Implementation immer zuerst die Testfälle schreiben
* entwickelt aus XP (extrem programming)
* sehr einfacher und genialer Ansatz
* arbeitet mit existierenden Werkzeugen für Unit Testing zusammen
* das Problem: Man muss es machen

## Was sind die postiven Efekkten von Test First?
* während dem Schreiben des Testes reift die Implementierung
* Ausnahmen und Sonderfälle werden "eher" berücksichtigt
* kaum ist die Komponente fertig, kann Sie getestet werden

## Was sind die Ziele von Unit-Tests?
* schnell und einfach ausführbar
* selbstvalidierend und automatisiert
* möglichst ohne Abhängigkeiten zu anderen Klassen
* werden während der Entwicklung geschrieben und ausgeführt
* Unterstützung durch Frameworks

## Was sind die Nutzen von Unit-Tests?
* Positiv
    * neue oder veränderte Komponenten können sehr schnell getestet werden
    * Testen ist vollständig in die Implementationsphase integriert
    * Test First Ansatz ist möglich
    * Automatisiertes, übersichtliches Feedback / Reporting
    * Messung von Codeabdeckung kann integriert werden
* Negativ
    * für GUI(-Komponenten) etwas aufwändiger
    * Qualität und Nachvollziehbarkeit muss im Auge behalten werden
    * In manchen Architekturen / Umgebungen schwierig umsetzbar

## Welche Arten von Code Coverage kann gemessen werden?
* Statement Coverage / Line Coverage
    * Misst ob und wie häufig eine Codezeile durchlaufen wurde
* Branch Coverage
    * Prüft, dass alle Zweige einer bedingten Anweisung ausgeführt wurden
* Decision Coverage
    * Prüft bei Fallunterscheidungen, dass alle Teilausdrücke aufgelöst wurden
* Path Coverage
    * überprüft ob alle möglichen Kombinationen durchlaufen wurden
* Function Coverage
    * Misst auf der Basis der Funktionen ob sie aufgerufen wurden
* Race Coverage
    * Konzentriert sich auf Codestellen die parallel ablaufen

## Was versteht man unter Dependency Injection?
* eine Klasse/Komponenten erzeugt ihre Abhängigkeiten nicht selber
* sondern lässt sich diese von Aussen übergeben
* eine sehr einfache Lösung für DI ist ein alternativer Konstruktor

## Was sind die Vorteile von Dependency Injection?
* Kopplung wird reduziert
* einfacheres Testen möglich
* verschiedenen Implementationen möglich
* es können Test Doubles eingefügt werden

