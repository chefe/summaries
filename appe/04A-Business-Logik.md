# Business Logik

## Was sind die Anforderungen an das Design?
* gute Wartungs- und Erweiterbarkeit
* möglichst hohe Wiederverwendung
* möglichst geringer Overhead
* wenig (Code-)Redundanzen

## Was sind Anforderungen an die Entwicklung?
* einfache und schnelle Implementation
* einfacher Zugriff persistente Daten 
    * (z.B. Repository)
* einfache Integration verschiedener Technologien
    * (z.B. Kommunikation)
* gleichzeitig aber möglichst hohe Technologieunabhängigkeit

## Was sind Herausforderungen an die Laufzeit?
* gute Performance
* hohe Robustheit, Stabilität und Resilienz

## Was sind bekannte Domain Logic Patterns?
* Transaction Script
* Table Module
* Domain Model
* Service Layer

## Was bedeutet "Transaction Script"?
* strukturiert die Geschäftlogik in einzelne in sich abgeschlossene Funktionen
* welche genau einen Request der Präsentationslogik erfüllen
* Transaktion im Sinne von "logical unit of work" (LUW)
* Klassische EVA (Eingabe, Verarbeitung Ausgabe)
* Ursprung der Idee von Hostsystemen mit Terminals

## Was ist ein Beispiel für "Transaction Script"?
* Beispiel: Suche eines Artikels
* Benutzereingaben verarbeiten und validieren (Eingabe)
* Suche in der Datenbank durchführen (Verarbeitung)
* Gefundene Artikel an die Präsentation übergeben (Ausgabe)

## Was sind die Vor- und Nachteile von "Transaction Script"?
* sehr starke Kopplung zu Präsentation und Datenbank
* hohe Spezialisierung, schlechte Austauschbarkeit
* gute Performance, weil minimaler Overhead
* für sehr kleine Systeme: 
    * einfache und schnelle Implementation
* für grosse oder komplexe Enterprise Systeme:
    * Schlechte Wartbarkeit
    * viel Redundanzen
    * praktisch keine Wiederverwendung möglich

## Was bedeutet "Table Module"?
* Pro Entität eine Klasse 
* welche die Businesslogik für alle Tupel enthält
* Arbeitet effizient mit ganzen Tupelmengen
* direkte Datenweitergabe an Präsentation möglich
* Ursprung in der 2-Schicht (Client/Server) Architektur
* Daten- und mengenorientierte Bearbeitung
* Anzeige in Tabellenform

## Was ist ein Beispiel für "Table Module"?
* Logisches Beispiel: Singletonklasse Artikel mit CRUD-Operationen.
* Artikel erzeugen (Create)
* Artikel suchen und lesen (Read)
* einen bestimmten Artikel verändern (Update)
* einen bestimmten Artikel löschen (Delete)

## Was sind die Vor- und Nachteile von "Table Module"?
* sehr starke Kopplung an Datenbank oder Persistenz
* für Systeme mit wenig oder einfacher Businesslogik:
    * einfaches und übersichtliches Muster
    * gute Performance (z.B. durch direkte Weitergabe des ResultSets)
* für grosse oder komplexe Enterprise Systeme:
    * hohe Redundanz und somit schlechte Wartbarkeit
    * kann bei grossen Datenmengen kollabieren

## Was bedeutet "Domain Model"?
* Abstraktion der Geschäftsprozesse und -daten
* reines objektorientiertes Modell der Domäne
* vollständige Trennung von der physischen Datenspeicherung
* Interaktion nur zwischen den Objekten
* Realisiert praktisch alle Vorteile einer logischen 3-SchichtArchitektur

## Was ist ein Beispiel für "Domain Model"?
* Logisches Beispiel: Klassen Artikel und Lager
* Artikel: 
    * Beschreibt einen konkreten Artikel der einem Lagerort zugeordnet ist
* Lager: 
    * Beschreibt ein Lager welches Artikel enthält
    * hat die Fähigkeit Artikel z.B. zu reservieren, zu beziehen etc.

## Was sind die Vor- und Nachteile von "Domain Model"?
* Entkopplung von der Präsentation und Datenspeicherung
* hohe Wiederverwendung des Modelles
* gute Wart- und Erweiterbarkeit
* starke Strukturierung und leichteres Verständnis
* skaliert auch für sehr grosse und komplexe Enterprise Systeme 
* Mapping des Persistenzmodells verursacht einen gewissen Overhead
* effizienter Datenaustausch zwischen den Schichten ist eine Herausforderung

## Was bedeutet "Service Layer"?
* Optionale Ergänzung zu einem der Domain Logic Patterns
* Problem: 
    * Verschiedene Clients wünschen sehr unterschiedliche Schnittstellen
* Lösung: 
    * man bietet Services an, welche die Businesslogik adaptieren

## Was ist ein Beispiel für "Service Layer"?
 * Beispiel: Webservices
 * Adaptiert eine bestehende Businessschnittstelle als Webservice

## Welche Distribution Patterns gibt es?
* Data Transfer Objects
* Remote Facade

## Was bedeutet "Data Transfer Objects"?
* werden auch DTO genannt
* man definiert sie für den Datentransport
* sind auf die unterschiedlichen Services optimierte
* enthalten nur Daten und keine (wesentlichen) Methoden
* enthalten nur die Daten welche vom Service benötigt werden

## Was sind die Vor- und Nachteile von DTOs?
* Vorteile:
    * Nur ein Funktionsaufruf notwendig
    * Effizient bezüglich der Datenmenge
    * DTOs sind spezifisch auf Schnittstellen definiert
    * führt zu Entkopplung
* Nachteile:
    * sehr viele verschiedene DTOs
    * Mapping notwendig
    * DTOs sind nicht wirklich objektorientiert

## Was bedeutet "Remote Facade"?
* man definiert eine Fassadenklasse
* welche die feingranularen Methodenaufrufe 
* auf die verschiedenen Businessobjekte kapselt
* und aus den Resultaten DTOs baut
* Fassade enthält keine Businesslogik, ist also schmal
* Fassade übernimmt das Mapping zwischen Business-Objekten und DTOs

## Was sind die Vor- und Nachteile einer "Remote Facade"?
* Vorteile:
    * guter Kompromiss zwischen Modell und effizienter Kommunikation
    * bricht explizit die Datentypen und sorgt für echte Entkopplung
* Nachteile:
    * Gefahr darin Businesslogik zu implementieren
    * reiner Durchlauferhitzer

## Was versteht man unter MDA?
* Model Driven Architecture
* Schnittstellen mit DTOs einzeln modellieren
* Teile des Quellcode auf Basis des Modelles generieren lassen
* Hilfswerkzeuge zum Mapping von Objekten

