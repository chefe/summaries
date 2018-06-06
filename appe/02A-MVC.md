# Model-View-Control

## Was ist das Ziel von MVC?
* nach SRP und SoC sollte man Aufgaben möglichst strikte voneinander trennen
* um lose Kopplung, hohe Kohäsion, eine bessere Wiederverwendung zu erreichen

## Was ist eine Definition von MVC?
man steuert, welche Daten auf welche Art wo und wann dargestellt werden

## Aus welchen drei Teilen besteht MVC?
* Model - die eigentlichen Datenobjekte, z.B. eine Person
* View - eine GUI-Komponente, welche die Daten anzeigt
* Control - eine Steuerung, welche das Ganze koordiniert

## Welche Abhängigkeiten gibt es bei MVC?
* Model: Ist völlig unabhängig und wird nur verwendet
* View: Verschiedene Varianten für das selbe Model möglich
* Control: Verbindet Modell und View, steuert und koordiniert

## Was muss man über MVC allgemein wissen?
* ist ein sehr fundamentales Konzept
* wird auf unterschiedlichen Abstraktionsebenen mehrfach eingesetzt
* es gibt nicht die einzig richtige Form und Implementation
* wird je nach Situation, Technologie und Intention adaptiert
* das Ziel ist immer die Gewaltentrennung

## Welche zwei Implementationsvarianten gibt es bei MVC?
* Statisches Model 
    * dessen Inhalt sich ggf. aber verändern kann
    * Notifikation über Änderungen im Modell
    * Modell wird der View bei Initialisierung einmal gesetzt
    * eher bei grossen Modellen, mit wenig Änderungen
* Dynamisches Model 
    * eher immutable implementiert
    * Modell wird der View regelmässig neu übergeben
    * eher bei kleinen Datenmodellen, mit vielen Änderungen

## Wo sieh man in Java das MVC Modell?
* MVC in GUI-Widgets 
    * z.B. in Swing: Textbox, Button, DropDown etc.
    * Controller und View sind typisch zusammengefasst
    * das Model existiert jedoch autonom
    * Struktur wird durch das Framework vorgegeben
* MVC auf Applikationsebene
    * Model ist meist eine ganz normale Java Klasse
    * Mehrere verschiedene Views stellen die selben Daten dar
    * Änderungen im Modell werden an View gemeldet

## Für was steht die Abkürzung POJO?
plain old java object

## Für was steht die Abkürzung MVP?
Model View Presenter

## Was sind die Vorteile von MVP?
* die Beziehung von View zum Model komplett eliminieren
* oder mindestens über ein Interface zu entkoppeln
* somit wird die View unabhängiger vom Modell
* so dass die Wiederverwendbarkeit der View ebenfalls steigt
* viel flexibler beim Testen

## Wie sind die Abhängigkeiten bei MVP?
* Model: Ist völlig unabhängig und wird nur verwendet
* View: Verschiedene Varianten für das selbe Model möglich
* Presenter: Vermittelt zwischen Modell und View

## Was sind die Vorteile von MVC?
* stellt die Grundlage für ein gut wart- und erweiterbares SW-Design dar
* Modelle sind meistens sehr stabil, hohe Kohäsion, lose Kopplung
* Pro Modell kann es viele verschiedene Views geben
* Controls sind quasi der 'Leim' zwischen den Objekten
* MVC wird rekursiv auf mehreren Ebenen eingesetzt

