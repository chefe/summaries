# Testing

## Welche Testarten werden unterschieden?
* Unit- und Komponententest (Entwicklertest)
    * Schnell und einfach durchführbar
    * Tests von einzelnen Klassen und/oder Komponenten
    * während der Entwicklung automatisiert
    * möglichst wenig Abhängigkeiten
    * überall lauffähig
    * beliebig wiederholbar
* Integrationstests, Teilsystemtest
    * Testen eines gesamten Teilsystems
    * innerhalb der Systemumgebung
    * werden anhand der Spezifikation erstellt
    * überprüfen auf fachliche Korrektheit
    * aufgrund der Komplexität häufig manuell durchgeführt
    * teilweise viel Aufwand, speziell bei GUI-Tests
    * Automatisierung birgt grosses Potential

## Was sind Ziele für gute Tests?
* so weit wie möglich automatisieren
* Einsatz von Frameworks erleichtert Arbeit
* Qualität von Testcode wie bei produktivem Code behandeln!
* Frühe Erstellung der Teststories auf Basis der Use Cases
* Möglichst kurze und einfache Testfälle
* eine grössere Anzahl von feingranularen Testfällen.
* schnellere Lokalisation eines Defektes (Selektivität der Testfälle)
* Use Cases / Funktionen möglichst einzeln testen
* Testen der normalen Abläufe als Basis
* Aber auch unbedingt absichtliche provozierte Fehler
* Ausnahmen und nicht erlaubte Vorgänge testen

## Wie können die Testarten weiter unterschieden werden?
* Funktionale Tests
    * Testen der Applikation wie sie vom Endbenutzer eingesetzt wird
    * Kombiniertes Testen von Business- und Applikationslogik
    * erfordern wohldefinierte Startbedingungen
    * zeitaufwendig, wenn Applikation z.B. immer wieder neu gestartet werden muss 
* Performance-/Stress-Tests
    * Analyse des Memorybedarfs und Zeitverhalten einzelner Aktionen
    * Wie reagiert die Anwendung bei hoher Belastung?
    * Wiederanlaufverhalten (Robustheit, Stabilität, Resilienz)
* Sicherheits-Tests
    * Systematisches Testen auf verschiedenen Sicherheitslücken
    * vor allem bei Web-Anwendungen wichtig
    * Häufigster Fehler ist die mangelhafte Prüfung von Eingaben

## Was ist das Ziel von Unittests in der Schichtenarchitekturen?
* Ziel:
    * Wir möchten die Schichten möglichst einzeln und entkoppelt voneinander testen!
* Lösung: 
    * Einsatz von Test Doubles!
    * Untere Schichten werden für Tests dynamisch ersetzt
    * Vereinfachung durch definierte(s) Testdaten bzw. –verhalten

## Welche Test-Doubles gibt es?
* Dummy
    * funktionslos Attrappe
    * sehr primitive und häufig leere Ersatz-Implementation
    * dient zur funktionslosen Entkopplung 
* Stub
    * Platzhalter
    * einfache Implementation
    * mit möglichst geringem Aufwand sinnvolle Werte
    * Erlaubt ein State-Testing
    * State (Zustand) wird durch Daten repräsentiert
    * State ist bei Stubs in der Regel konstant
* Spy
    * Spion
    * alternative Implementation
    * liefert dynamische Werte zurückliefern
    * merkt sich die einzelnen Aufrufe der Methoden
    * aufgezeichneten Ereignisse für die Verifikation des Testfalls
* Mock 
    * vorgetäuscht Simulation
    * Spezialisierung des Spy
    * kann die korrekte Interaktion selber verifizieren
    * werden typisch mit Hilfe von speziellen Mock-Frameworks erstellt
* Fake
    * Fälschung
    * Alternative Implementation
    * ersetzt eine Komponente mit vernünftigem Aufwand vollständig
    * Ermöglicht die vollständige Entkopplung von einer Abhängigkeit

## Was ist beim Testen von DB-Applikationen zu beachten?
* Herausforderung:
    * Datenmanipulation durch Testfälle
    * Reproduzierbarkeit muss gewährleistet sein
* Anforderungen:
    * Zustand der Datenbank muss definiert werden
    * effiziente Verifikation des Datenbankinhaltes
    * Parallele Testausführung erschwert
* Grundlage:
    * Testdatenmanagement 
    * Bereitstellung und aktive Wartung von Testdaten

## Was sind die Lösungsansätze für das Testen von DB-Applikationen?
* Initialisierung mit Testdaten, Testfälle, Verifikation
* Verwendung mehrerer Schemas (DB-Instanzen)
* Lokale Datenbank (pro Entwickler / Buildserver etc.)
* In-Memory-Datenbank für jeden Test
* Produktive Datenbank (Abzug) als Docker-Container

