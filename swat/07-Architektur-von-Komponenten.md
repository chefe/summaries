# Architektur von Komponeneten

## Was ist das Ziel von Software Architektur?
* Kostenoptimierung
* aber nicht kurzfristig sparen
* sondern langfristig gute Qualität liefern

## Für was steht die Abkürzung NIH?
Not Invented Here

## Für was steht die Abkürzung SOLID?
* S - Single Responsibility Principle
* O - Open Close Principle
* L - Liskov Substitution Principle
* I - Interface Segregation Principle
* D - Dependency Inversion Principle

## Für was steht die Abkürzung RAD?
Rapid application developement

## Welche Design Patterns gibt es gemäss der Gang of Four?
* __Creational:__
    * Abstract Factory, Builder, Factory Method, Prototype, Singleton
* __Structural:__
    * Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy
* __Behavioral:__
    * Chain of Responsability, Command, Interpreter, Iterator, Mediator
    * Memento, Observer, State, Strategy, Template Method, Visitor

## Welche Objekte gibt es bei einem Domain Driven Design?
* Entities - Objekte haben eine Identität (z.B. Person, Firma)
* Value Objects - Objekte ohne Identität (z.B. Adresse, Telefonnummer)
* Aggregates - Kombinieren Entities und Value Objects
* Repositories - Speichern Entities und Value Objects
* Factories - Erstellen Entities und Value Objects
* Services - Geschäftsoperationen die nicht zu einem Objekt gehören

## Was ist der Unterschied zwischen Event und Command?
* __Event:__ Etwas hat sich im System verändert (z.B. `OrderPlaced`)
* __Command:__ Objekt wird zu Command-Handler geschickt (z.B. `PlaceOrder`)

