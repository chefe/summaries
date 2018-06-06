# Architektur

## Von welchen Begriffen wird häufig gesprochen, wenn es um Architektur geht?
* Datenkapselung (hohe Kohäsion)
* Information Hidding (lose Kopplung)
* Modularisierung (hohe Kohäsion)
* Schnittstellen (lose Kopplung)

## Was beschreibt dir Architektur eines Systems?
* dessen Struktur und Aufbau ( Sub- und Teilsystemen, Schichtung, Verteilung)
* der darin enthaltenen Softwareteile (gegliedert nach Aufgaben, Zuständigkeiten, Komponenten)
* deren Beziehungen untereinander (Abhängigkeiten, Schnittstellen, Datenflüsse, Deployment)

## Wie wird der Begriff Softwarearchitektur definiert?
Softwarearchitektur definiert sich durch die Kernelemente eines Systems, welche als Basis 
für alle weiteren Teile nur schwer und aufwändig verändert werden können

## Welche Aspekte gehören zu einer Softwarearchitektur?
* Grundlegende Struktur 
    * Schichten, Client/Server, Tiers, Architekturmuster, ...
* Kommunikation und Verarbeitung 
    * Kommunikationsmuster, Synchron / Asynchron
    * Verteilbarkeit, Parallelität, Performance, Robustheit, Resilienz
* Eingesetzte Technologien
    * Userinterface (Fat-, Rich- oder Thin-Client)
    * Persistenz der Daten (Frameworks, O/R-Mapping)
    * Referenzarchitekturen
* Qualitätsaspekte
    * Wartungsfreundlichkeit, Erweiterbarkeit

## Wie ist ein System definiert?
* ist die Gesamtheit von Elementen
* ist eine aufgaben-, sinn- oder zweckgebundene Einheit
* hat eine klare Abgrenzung gegenüber Umwelt
* wird organisiert durch Struktur und Beziehungen

## Was sind die Charakteristiken eines Subsystem?
* haben eine gewisse Unabhängigkeit
* interagieren über wohldefinierte Schnittstellen
* reduzieren die Kopplung über möglichst lose Schnittstellen
* fördern die Kohäsion mit starker Datenkapselung und Information Hidding

## Was sind die Vorteile von Subsystemen?
* präzisere Schätz- und Planbarkeit
* unabhängige Entwicklung möglich
* einfachere Testbarkeit
* unabhängiges Deployment
* potential für Wiederverwendung höher

## Was ist eine Komponente?
* ist eine softwaretechnische Einheit
* durch den Einsatz von Komponenten kann ein System realisiert werden
* ein System muss aber nicht zwingend eine Komponente enthalten
* eine Komponente kann zur Realisation von mehreren Systemen verwendet werden

## Bei was hilft eine gute Architektur?
* macht ein System erst richtig "verstehbar"
* ist die fundamentale Grundlage für die Diskussion, Planung, Implementation und Betrieb eines Softwaresystems

## Was sind die positiven Auswirkungen einer guten Architektur?
* bessere Wartbarkeit (Bugfixing), 
* höhere Wiederverwendbarkeit
* leichtere Erweiterbarkeit
* grössere Sicherheit
* vereinfachte Testbarkeit
* höhere Stabilität und Robustheit
* Verkürzung der time-to-market
* Agilität

