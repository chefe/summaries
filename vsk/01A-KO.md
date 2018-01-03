# Begriffe & Architekturen

## Was bedeutet der Begriff Komponente?
* aus dem lateinischen componere (zusammensetzen)
* eigenständig / unabhängig
* wiederverwendbar / installierbar
* enthält definierte Schnittstellen

## Was sind die wichtigen Eigenschaften von Komponenten?
* eigenständige, ausführbare SW-Einheiten
* über ihre Schnittstellen austauschbar definiert
* lassen sich unabhängig voneinander entwickeln
* kunden- / anwendungsspezifische, bzw. wiederverwendbare Software
* können installiert / deployed werden
* kann weitere Sub-Komponenten enthalten

## Was sind verbreitete Komponentenmodelle?
* MS .NET
* Enterprise Java Beans
* DCOM (Distributed Component Object Model)
* CORBA Component Model
* OSGi (Open Services Gateway initiative) Framework

## Was ist der Nutzen von Komponenten?
* Wiederverwendbarkeit
    * Enthält Komplexität (nach dem Prinzip "Hersche und Teile")
    * Wiederverwenden ist schneller als neu erstellen
    * Auslieferungszeit verringern
    * verbesserte Konsistenz
    * Möglichkeit um zu Vergleichen
* Schnittstellen
    * Produktivität erhöht, durch Nutzung von bestehendem
    * insgesamt bessere Qualität
    * meistens näher an Spezifikationen
* Ersetzbarkeit
    * inkremmentelle Entwicklung und Testbarkeit
    * parallele und verteilte Entwicklung
    * vereinfachte Wartung

## Was sind die Auswirkungen von Änderungen (mit und ohne Komponenten)?
* mit Komponenten
    * nur Komponenten muss angepasst werden
* ohne Komponenten
    * viel Abhängigkeiten müssen angepasst werden

## Was sind die praktischen Eigenschaften von Komponenten?
* man braucht nur die Schnittstelle zu kennen
* Komponenten mit derselben Schnittstelle sind austauschbar
* der Komponententest ist ein Blackbox-Test
* Komponenten lassen sich unabhängig voneinander entwickeln
* Komponenten unterstützen die Wiederverwendbarkeit

## Wie sollte eine Komponenten spezifiziert werden?
* __Export:__ unterstützte Interfaces, die andere Komponenten nutzen können
* __Import:__ benötigte / benutzte Interfaces von anderen Komponenten
* __Verhalten:__ Verhalten der Komponente
* __Kontext:__ Rahmenbedingungen im Betrieb der Komponente

## Was sind die Rollen der Komponenten in den Architekturmustern?
* Pipe-and-Filter
    * Component: Filter
    * Connector: Pipe
    * Data Transformation
* Shared Data
    * Component: Repositories
    * Connector: Data Reader/Writer
    * Multiple Accessors & Persistence
* Publish-Subscribe
    * Component: any
    * Connector: publish-subscribe
    * Send events & msgs. to unknown set of recipients
* Client-Server
    * Component: Client und Server
    * Connector: request/reply
    * Decoupling Apps. from Services
* Peer-to-Peer
    * Component: Peer
    * Connector: bidirectional RPC
    * Collaboration
* Communicating Processes
    * Component: any concurrent unit
    * Connector: data exchg., msg. passing, sync., ctrl.
    * Concurrent Systems

## Wie findet das Deploxment von Java-Komponenten statt?
* mittels JAR (Java ARchive)
* Kompilierte Klassen und Interfaces werden in einem Zip-Format gespeichert
* `META-INF/manifest.mf` - Datei enthält Meta-Informationen

## Wie ist das dreistelliges Versionsschema mit semantischer Bedeutung aufgebaut?
`Version: {major}.{minor}.{bugfix}`

* __Major:__ Nicht rückwärtskompatible Veränderung
* __Minor:__ Rückwärtskompatible Erweiterung
* __Bugfix:__ Reine Implementationsänderung / Korrektur

## Wie werden Komponenten in Java versioniert?
* Variante 1:
    * Versionsschema in Dateiname (1.2.18)
    * Vorteile:
        * Artefakt kann sehr einfach anhand des Namens identifiziert werden
        * Eindeutige Referenz in Klassenpfaden möglich
    * Nachteil:
        * Einfach Manipulierbar
        * Bei Bugfix Anpassung von Klassenpfaden notwendig
* Variante 2:
    * Versionsinformation gemäss JAR-Spezifikation in `manifest.mf` enthalten
    * Vorteile:
        * Manipulation nur durch Änderung in der JAR-Datei
        * Spezifikationskonform
        * Dateiname ohne Versions-Nummer möglich
        * konstante Klassenpfade möglich
    * Nachteile:
        * Version nur durch Blick in das JAR sichtbar

