# Architektur von Komponeneten

## Was ist das Ziel von Software Architektur?
Kostenoptimierung, aber nicht kurzfristig sparen,
sondern langfristig gute Qualität liefern

## Für was steht die Abkürzung NIH?
Not Invented Here

## Für was steht die Abkürzung RAD?
Rapid application developement

## Welche Design Patterns gibt es gemäss der Gang of Four?
* __Creational__
    * Abstract Factory, Builder, Factory Method, Prototype, Singleton
* __Structural__
    * Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy
* __Behavioral__
    * Chain of Responsability, Command, Interpreter, Iterator, Mediator
    * Memento, Observer, State, Strategy, Template Method, Visitor

## Welche Objekte gibt es bei einem Domain Driven Design?
* __Entities__ -- Objekte haben eine Identität (z.B. Person, Firma)
* __Value Objects__ -- Objekte ohne Identität (z.B. Adresse, Telefonnummer)
* __Aggregates__ -- Kombinieren Entities und Value Objects
* __Repositories__ -- Speichern Entities und Value Objects
* __Factories__ -- Erstellen Entities und Value Objects
* __Services__ -- Geschäftsoperationen die nicht zu einem Objekt gehören

## Was ist der Unterschied zwischen Event und Command?
* __Event__ -- Etwas hat sich im System verändert (z.B. `OrderPlaced`)
* __Command__ -- Objekt wird zu Command-Handler geschickt (z.B. `PlaceOrder`)

