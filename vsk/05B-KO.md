# Entwurfsmuster

## Für was steht die Abkürzung GoF?
* Gang of Four
* Erich Gamma, Richard Helm, Ralph Johnson und John Vlissides

## Welche Arten von Wiederverwendung gibt es in der Softwareentwicklung?
* Objekte zur Laufzeit wiederverwenden
* Wiederverwendung von Quellcode / Klassen
* Wiederverwendung von einzelnen Komponenten
* Einsatz von Klassen-Bibliotheken / Frameworks
* Wiederverwendung von Konzepten

## Was sind die Probleme bim wiederverwendetn von Quellcode?
* unterschiedliche Kontexte / Fachverständnisse
* unterschiedliche Technologien / Lösungsansätze
* Weiterentwicklung und Wartung
* aufwändige Verwaltung
* verschiedene Designkonzepte
* Abhängigkeit von Dritten

## Wie werden Entwurfsmustern klassifiziert?
* Erzeugungsmuster (Creational Patterns)
    * abstrahieren die Erzeugung von Objekten
    * Delegation der Erzeugung an andere Objekte
* Strukturmuster (Structural Patterns)
    * fassen Objekte (oder Klassen) zu grösseren Strukturen zusammen
    * erlauben unterschiedliche Strukturen einander anzupassen
* Verhaltensmuster (Behavioral Patterns)
    * beschreiben die Interaktion zwischen Objekten
    * legen die Kontrollflüsse zwischen den Objekten fest

## Was sind ein paar Beispiele für Erzeugungsmuster?
* Abstrakte Fabrik (Abstract Factory, Kit)
* Erbauer (Builder)
* Fabrikmethode (Factory Method, Virtual Constructor)
* Prototyp (Prototype)
* Einzelstück (Singleton)

## Was sind ein paar Beispiele für Strukturmuster?
* Adapter (Adapter, Wrapper)
* Brücke (Bridge, Handle/Body)
* Dekorierer (Decorator, Wrapper)
* Fassade (Facade)
* Fliegengewicht (Flyweight)
* Kompositum (Composite)
* Stellvertreter (Proxy, Surrogate)

## Was sind ein paar Beispiele für Verhaltensmuster?
* Befehl (Kommando, Command, Action, Transaction)
* Beobachter (Observer, Dependents, Publish/Subscribe, Listener)
* Besucher (Visitor)
* Interpreter (Interpreter)
* Iterator (Iterator, Cursor)
* Memento (Memento, Token)
* Plugin (Plugin)
* Schablonenmethode (Template Method)
* Strategie (Strategy, Policy)
* Vermittler (Mediator)
* Zustand (State, Objects for States)
* Zuständigkeitskette (Chain of Responsibility)

## Wie heissen die meistverwendeten Patterns und was sind ihre Ziele?
* Singleton
    * es kann nur genau eine Instanz einer Klasse geben
    * stellt für diese Objekt einen Zugriffspunkt zur Verfügung
* Facde
    * stellt eine einheitliche Schnittstelle zur Verfügung
    * kapselt ein Menge von Schnittstellen eines Subsystems
* Strategy
    * definiere eine Familie von Algorithmen
    * kapsle jeden Einzelnen und mache sie austauschbar
* Observer
    * definiert eine Abhängigkeit zwischen einem Subjekt und Beobachtern
    * informiert die Beobachter, wenn sich der Zustand ändert
* Adapter
    * anpassen der Schnittstelle einer Klasse
    * auch bekannt als Wrapper

