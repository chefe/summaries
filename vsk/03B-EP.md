# Buildautomatisation

## Was sind die Vor- un Nachteile von Build-Scripts?
* Vorteile:
    * automatisierter Ablauf, keine Interaktion mehr
    * reproduzierbare Ergebnisse
    * lange Builds können z.B. über Nacht laufen
    * unabhängig von Entwicklungsumgebung
* Nachteile:
    * eher sturer, unflexibler Ablauf
    * Abhängigkeit von Shell und Plattform
    * aufwändige Wartung und Erweiterung

* eigenständiges, spezialisiertes Werkzeug
* optimiert für die typischen Build-Aufgaben
    * Aufruf von Kompiler, Packer, Tests, Deploying
    * vereinfachter Umgang mit Ressourcen
    * Abhängigkeiten zwischen Dateien überprüfen und steuern
    * logische Abfolge und Abhängigkeiten zwischen Aufgaben
* Plattformübergreifend lauffähig

## Wie heissen bekannte Build Werkzeuge für Java?
* Ant -- altes und bewährtes Werkzeug, Java mit XML
* Maven -- populäres, etabliertes Werkzeug, Java mit XML
* Buildr -- junges Werkzeug, Ruby-Script
* Gradle -- populäres, junges Werkzeug, Groovy-Script mit DSL
* Bazel -- Buildwerkzeug von Google, Java mit Python-like Scripts

## Wa sind diw wichtigsten Phasen im "lifecycle" von Apache Maven?
* validate -- Validiert die Projektdefinition
* compile -- Kompliation der Quellen
* test -- Ausführen der Unit-Tests
* package -- Packen der Distribution (JAR)
* verify -- Ausführen der Integrations-Tests
* install -- Deployment im lokalen Repository
* deploy -- Deployment im zentralen Repository

