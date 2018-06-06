# Architekturbeschreibung

## Welche Arten von abstrakten Modelle gibt es?
* Analyse-Model (stark abstrakt)
* Architektur-Model (mittel abstrakt)
* Design-Model (wenig abstrakt)

## Auf welche zwei Arten kann man ein System beschreiben?
* man kann die Struktur beschreiben
    * Uses-Beziehungen: Fokussierung auf "depends-on"
    * Zerlegung: Komponenten, "is-part-of" Beziehung
    * Layer/Schichten (logische Struktur)
    * Verteilung (physische Struktur)
* man kann das dynamische Verhalten beschreiben
    * Informationsfluss und Kontrollfluss
    * Ausführbare Einheiten, Parallelität
    * Zustandsänderungen

## Was ist der Unterschied zwischen Kontrollfluss und Informationsfluss?
* Kontrollfluss beschreibt die zeitliche Abfolge der einzelnen Befehle 
* Informationsfluss beschreibt die zeitliche Abfolge des Informationsaustausches

## Welche Arten von Abhängigkeiten gibt es?
* Class Dependency: 
    * eine Klasse A nutzt eine andere Klasse B
* Interface Dependency: 
    * Abhängigkeit von einer Abstraktion und nicht von einer konkreten Implementation
* Compile-Time / Runtime Dependency: 
    * A benötigt zur Kompilation ein Interface B
    * konkrete Implementation ev. erst zur Laufzeit nötig
* Indirect Dependency / Transitive Dependency: 
    * A nutzt B welches C nutzt -> A ist indirekt abhängig von C

## Welche Architektur-Sichten gibt es?
* Funktionale Sicht / Konzeptionelle Sicht
	* Funktionale Gliederung des Systems
	* Zerlegung in Hauptteile, welche die System-Funktionalitäten darstellen
	* Zerlegung in technische umzusetzende Teilsysteme/Komponenten
	* Typische Diagrammart: Blockdiagramm / Komponentendiagramm 
* Entwicklungs-Sicht
	* Statische Modul-Strukturen (part-of, depends-on, uses, is-a ....)
	* Typische Modelle: Klassen/Paket-Diagramme
* Verteilungs- und Betriebs-Sicht
	* beschreibt die Umgebung, in welche das System verteilt wird
	* Zuordnung von Komponenten/Module zu physikalischen Ressourcen
	* beschreibt wie das System betrieben, administriert und unterhalten wird
* Datenstrukturen
	* Konzeptionelle Datenstrukturen (Analyse-Modell, konzeptionelles ER-Diagramm)

## Was ist ein SAD und was beinhaltet es?
* SAD = Software Architektur Dokument 
* primär aus zwei Bereichen
	* Topics: protokollierte Architekturentscheide 
	* Sichten: unterschiedliche Brillen auf die Architektur 

## Welche Informationen gehören zu jedem Topic?
* Zusammenfassung der Lösung
* Betroffene, relevante bzw. erfüllte Architekturfaktoren
* Motivation für diese Lösung (Entscheidungsgrund)
* Ungelöste Punkte
* Betrachtete Alternativen und warum diese verworfen wurden

