# Integrations- und System-Testing

## Was ist der Unterschied zwischen Validieren und Verifizieren?
* Validieren
    * mach das System was ich brauche
    * "Do the right thing"
* Verifizieren
    * macht das System das, was definiert wurde
    * "Do the thing right"

## Was sind die Grundgedanken des V-Modells?
* zu jeder Disziplin gibt es eine Entsprechung auf der Test-Seite
* Anforderungen und Spezifikationen sind Grundlage für weitere Arbeiten

## Was sind die Grundsätze des Testen?
* nur dokumentierte (oder automatisierte) Tests lassen sich wiederholen 
* mit keiner Testart und mit keinem Review findet man alle Fehler
* nur durch unterschiedlichen Techniken findet man ein Maximum an Fehlern
* vollständiges Testen ist schlicht nicht machbar

## Was sollte getestet werden?
* Interfaces
    * Objekt Kompatibilität (Typen und Wertebereiche)
    * Aufruf-Sequenzen
    * Wer validiert Inputs – der Aufrufende oder der Aufgerufene
* Datenabhängigkeiten
    * für jede Komponente ermitteln
    * Abhängigkeiten feststellen und diese testen
* CallGraph Abdeckung
    * Bei Komponenten, die von verschiedenen Aufrufern genutzt werden
    * alle Aufrufvarianten testen

## Welche Integrationsstrategien gibt es?
* Bottom-Up the Small
    * kleinere Teilsysteme lassen sich bottom-up integrieren
* Top-Down the Controls
    * dei aufwändigen Kontrollstrukturen mit Hilfe von Stubs top-down vorgehen
    * und dann die richtigen Komponenten integrieren
* Big-Bang the Backbone
    * was für den Testablauf benötigt wird in einem Aufwisch zusammenführen
* Continuous Integration
    * neu dazu gekommenes laufend integrieren und testen

## Welche zwei Arten von Test Doubles gibt es?
* Stubs
    * ersetzt einen Komponente durch einen Ersatzbaustein mit identischem Interface
    * gibt nach festem Muster Reaktionen bzw. Berechnungsergebnisse zurück 
* Mocks
    * ist ein intelligenter Stub
    * wertet den Aufruf und die Daten des Testobjektes aus
    * kann die Daten auf Korrektheit überprüfen
    * gibt abhängig dabvon eine Reaktion bzw. ein Berechnungsergebnis zurück

## Welche Aspekte sind beim System Testing wichtig?
* ausserhalb der Entwicklungsumgebung lauffähig sein
* über eine Bedienschnittstelle verfügen
* mit anderen Applikationen und Systemen interagieren

## Von was können Systemtestfälle abgeleitet werden?
* den im Backlog formulierten Anforderungen
* den im Backlog formulierten Abnahmekriterien
* zugehörigen, detaillierteren UseCase-Beschreibungen
* von der Definition of Done

## Was sind die wichtige Bestandteile der Beschreibung eines Testfalls?
* die Vorbedingungen für die Testausführung
* die Handlungen und Eingaben für die Durchführung des Tests
* die erwarteten Ergebnisse und Nachbedingungen

## Was sind die vier Quadranten des agilen Testens?
* Unit- und Komponententests
    * Ziel: Vertrauen in den Code
    * Verifikation: der Code macht, was er soll, Zusammenarbeit funktioniert
    * Tests: automatisiert und unter SourceCode-Verwaltung
    * Werkzeuge: JUnit , Stubs, Mockups
    * Wer: Team
    * Wann: in jedem Sprint
* Funktionale Tests
    * Ziel: Vertrauen in den Weg
    * Validierung: die Software macht, was der Kunde erwartet
    * Tests: nur teils automatisiert, dokumentiert & protokolliert
    * Werkzeuge: Prototypen, Mockups
    * Wer: Team & ProductOwner
    * Wann: in jedem Sprint
* Abnahmetests
    * Ziel: Vertrauen in das Produkt
    * Validierung: die Software macht, was der Kunde erwartet
    * Tests: dokumentiert (Testplan) & protokolliert (Test- / Abnahmeprotokoll)
    * Werkzeuge: Testdaten, Log
    * Wer: Team & ProductOwner, bei Abnahmen auch Kunde
    * Wann: nach einem Sprint, vor einem Release
* Performance, Last, etc. Tests
    * Ziel: Vertrauen in Performance, Security und ..ility
    * Verifikation: der Code ist stabil und leistungsfähig
    * Tests: Tool-gestützt, dokumentiert & protokolliert
    * Werkzeuge: Scripting, Performance Monitors, Profiler, ...
    * Wer: Team & Spezialisten
    * Wann: projektabhängig

## Wann fallen bei Scrum Testaufgaben an?
* im Planning-Meeting:
    * Abschätzen wieviel Zeit zum Testen von User Stories benötigt wird 
    * Zeit für Testen bei der Aufwandschätzung berücksichtigen
* während dem Sprint:
    * Tests möglichst rasch durchführen
    * Anhäufung von pendenten Testfällen vermeiden
* Sprint-Abnahme:
    * getestete Features demonstrieren 
    * inkrementelle Validierung
* Retrospektive:
    * Stolpersteine für Testing finden
    * Massnahmen für besseres Testing festlegen

