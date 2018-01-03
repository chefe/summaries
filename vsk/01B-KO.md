# Clean Code 

## Was sind gute Kommentare?
Der beste Kommentar ist derjenige, den man gar nicht zu schreiben braucht!

## Was sind notwendige Kommentare?
* juristische Kommentare (Copyright etc.)
* Kommentare, welche Dinge hervorheben, die sonst zu unauffällig wären
* Erklärung der übergeordneten Absicht oder zur expliziten Warnung vor Konsequenzen

## Was sind schlechte Kommentare?
* reine Wiederholungen dessen, was schon der Code sagt
* falsche oder unpräzise Formulierungen
* sture JavaDoc Kommentare, nur damit sie da sind
* Tagebuch- oder Changelog-Kommentare
* Positionsbezeichner und Banner
* Hinweise auf Autor
* auskommentierter Code
* zu viel Kommentar / Information
* endlose Abhandlungen über Gott und die Welt

## welche Anforderungen sollte ein guter Name erfüllen?
* zweckbeschreibend sein
* Fehlinformationen vermeiden
* Unterschiede deutlich machen
* gut aussprechbar und gut suchbar sein
* möglichst keine Codierungen enthalten

## In welche Kategorien wird Clean Code Developer unterteilt?
* Rot:
    * Prinzipien
        * Don't Repeat Yourself (DRY)
        * Keep it simple, stupid (KISS)
        * Vorsicht vor Optimierungen
        * Favour Composition over Inheritance (FCoI)
    * Praktiken
        * Pfadfinderregel beachten
        * Root Cause Analysis (RCA)
        * Versionskontrollsystem einsetzen
        * einfache Refaktorisierungsmuster anwenden
        * täglich reflektieren
* Orange:
    * Prinzipien
        * Single Level of Abstraction (SLA)
        * Single Responsibility Principle (SRP)
        * Separation of Concerns (SoC)
        * Source Code Konventionen: Namensregeln, Kommentare
    * Praktiken
        * Issue Tracking
        * Automatisierte Integrationstests
        * Lesen, Lesen, Lesen
        * Reviews
* Gelb
    * Prinzipien
        * Interface Segregation Principle (ISP)
        * Dependency Inversion Principle (DIP)
        * Liskov Substitution Principle (LSP)
        * Principle of Least Astonishment
        * Information Hiding Principle (IHP)
    * Praktiken
        * Automatisierte Unit Tests
        * Mockups (Testattrappen)
        * Code Coverage Analyse
        * Teilnahme an Fachveranstaltungen
        * Komplexe Refaktorisierungen
* Grün
    * Prinzipien
        * Open Closed Principle (OCP)
        * Tell, don't ask
        * Law of Demeter
    * Praktiken
        * Continuous Integration (CI)
        * Statische Codeanalyse (Metriken)
        * Inversion of Control Container
        * Erfahrung weitergeben
        * Messen von Fehlern
* Blau
    * Prinzipien
        * Implementation spiegelt Entwurf
        * Entwurf und Implementation überlappen nicht
        * You Ain't Gonna Need It (YAGNI)
    * Praktiken
        * Continuous Integration (CI)
        * Iterative Entwicklung
        * Komponentenorientierung
        * Test First

