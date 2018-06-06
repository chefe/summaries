# Layers und Tiers

## Was ist ein Architekturmuster?
beschreiben als Konzept den Grundaufbau eines ganzen Systems

## Für welche Aspekte existieren Architekurmuster?
* um (grosse, komplexe) Systeme zu strukturieren
* für (stark) verteilte Systeme
* für inter(re)aktive Systeme

## Was versteht man unter Schichten (layers)?
* Gliederung eines Systems in aufeinander aufbauende, funktional getrennte Schichten
    * Kommunikation über wohldefinierte Schnittstellen
    * Abhängigkeit nur in Richtung der tieferliegenden Schicht
* zur Strukturierung sowohl innerhalb eines Systems als auch systemübergreifend
* bei möglicher physischer Verteilung der einzelnen Schichten spricht man von Tiers

## Wie funktioniert die Schichtenbildung?
* kann grundsätzliche nach verschieden Kriterien erfolgen:
    * Logisch/Funktional, Technik, Abstraktionsebene, ...
* kann auch hierarchisch verfeinert werden:
    * in erster Linie funktionale Schichtung
    * in zweiter Linie nach Abstraktionslevel
    * in dritter Linie nach Technologie

## Wie ist ein 3-Schicht-Architektur aufgebaut?
* Präsentation (Presentation-Layer, [G]UI-Layer)
    * Visualisierung, User Interface, UI-Logik
    * z.B. Bestellmaske für Artikel
* Geschäftslogik (Business[logic] Layer, Domain Layer)
    * Implementation der Geschäftsprozesse und -modelle
    * z.B. Ablauf einer Bestellung, Modell eines Artikels
* Datenhaltung (Data Layer, Persistence Layer)
    * Persistente Datenspeicherung, Datenlogik
    * z.B. Speicherung der Artikeldaten in einem RDBMS

## Wie lässt sich die Präsentationsschicht weiter unterteilen?
* Trennung von Präsentation und Präsentationslogik
* z.B. durch Model View Control
    * Spezielle Modelle für die Präsentation
    * Wiederverwendbare Views
    * Präsentationslogik im Control

## Wie lässt sich die Geschäftslogikschicht weiter unterteilen?
* weitere logische Trennung ist auch hier sinnvoll und möglich
* Businessfunktionen => Services / Businessmethoden
    * enthält Klassen für die Geschäftsprozesse
    * Arbeitet mit Business Model
    * z.B. BestellService (Kunde bestellt Artikel)
    * kann technologisch weiter verfeinert werden:
    * z.B. Business Service als Webservice anbieten
* Business Objects, Domain Objects => Model
    * reines objektorientiertes Modell
    * unabhängig sowohl von Präsentation als auch von Persistenz
    * enthalten Daten und Methoden
    * z.B. Artikel, Kunde, Adresse

## Wie lässt sich die Datenhaltungsschicht weiter unterteilen?
* Trennung/Abstraktion der reinen Datenlogik
    * unabhängig vom physischen Datenmodell
    * unabhängig vom verwendeten DBMS
* O/R-Mapping
    * Einsatz eines Persistenz-Frameworks
* Transparentes Einbinden von Legacy-Systemen
* Abstraktion mehrerer Backend Systeme

## Wie lässt sich eine 3-Schicht-Architektur in eine 6-Schicht-Architektur umwandeln?
1. Visualisation, User Interface: Formulare, Dialoge
2. User Interface Logik: Steuerung des UI, Ablauf
3. Business Services, Business Logik: Fachliche Prozesse
4. Business Objects, Business Modell: Objektmodell
5. Datenlogik, Integrität: Datenmodell
6. Infrastruktur: z.B. O/R-Mapping-/Persistenzframework

## Was sind die positiven und negativen Aspekte von vielen Schichten?
* Positive Effekte:
    * bessere Strukturierung, einzelne Schichten kleiner und einfacher
    * somit besseres und schnelleres Verständnis
    * grössere Chance auf Wiederverwendung
    * höhere Flexibilität, z.B. Austausch einzelner Schichten
    * bessere Skalierbarkeit
    * einfachere und präzisere Planung/Schätzbarkeit
    * parallele und getrennte Entwicklung möglich
* Negative Effekte:
    * Komplexität des ganzen Systems wird grösser
    * Mehr Schnittstellen, mehr Aufwand, mehr Planung

## Wie ist ein Tier definiert?
Wenn vorhandene Schichten auch physisch getrennt wurden, spricht man von so genannten Tiers

## Wie ist eine 2-Tier Architektur aufgebaut?
* typischerweise GUI-Client und DB-Server
* Anwendungsschicht:
    * Rich-Client (oder fat-Client) auf Client-Hosts
    * enthält GUI-, Anwendungs- und Business-Logik
    * häufig Plattformspezifisch
    * eher Intranet / Firmennetzwerk
    * hohe Usability und Ergonomie möglich
* Datenschicht:
    * Datenhaltung mit Integrität (Datenmodell, Constraints)
    * Datenlogik (z.B. über Triggers und Stored Procedures)

## Was sind die Vor- und Nachteile einer 2-Tier-Architektur?
* Vorteile:
    * Zentrale Datenhaltung
    * einfache Architektur
    * sehr gut überschaubar
* Nachteile:
    * kein guter Ort für die Businesslogik vorhanden
    * wenn im Client: Client wird fat-Client, Business-Logik ist redundant vorhanden
    * wenn im DB-Server: Programmierung im Server häufig andere Sprache
    * wenn aufgeteilt: schwierige Entscheidung was wo implementiert wird

## Wie ist eine 3-Tier Architektur aufgebaut?
* Grundbasis für die meisten Enterprise Architekturen
* Aufteilung erfolgt gemäss den logischen 3-Schichten
    * Anwendungsschicht: Präsentationslogik
    * Domänenschicht / Business-Schicht: Businesslogik
    * Datenschicht: Datenlogik und Datenhaltung
* Keine Redundanzen in der Logik vorhanden
* Einbinden mehrerer verschiedener Datenquellen
* Verschiedene Clients realisierbar
* Zentralisierung reiner Businesslogik möglich
* erlaubt zentrale Änderungen

## Was sind die Vor- und Nachteile einer 3-Tier-Architektur?
* Vorteile:
    * siehe allgemeine Vorteile von n-Schicht-Architekturen durch Aufteilung 
    * effizientere Nutzung der vorhandenen Rechenleistung möglich
    * Clients können redimensioniert werden
    * wird die Businesslogik zusätzlich aufgeteilt, verschwindet der SPOF
* Nachteile:
    * siehe allgemeine Nachteile von n-Schicht-Architekturen
    * Kommunikation zwischen den Tiers kann kritisch werden (Datenmenge, Latenz, Performance)
    * Potentiell hoher Ressourcenbedarf im Middle-Tier

## Wie lässt sich ein Microservice charakterisieren?
* Applikation wird aufgeteilt in kleine Services
* Jeder Service läuft in eigenem Prozess / eigener Plattform
* Leichtgewichtige Kommunikation (meist RESTfull/http/JSON)
* Voneinander unabhängig deploybar (somit auch Release)
* Automatisiertes Deploment und (DevOps, PaaS, IaaS)

## Was sind die Unterschiede zwischen "klassischer" Architektur und Microservice?
* Schichten (horizontal) und Microservices (vertikal) sind orthogonal!
* Am Schnittpunkt befände sich idealerweise ein Modul
* Entscheidend ist die Grösse und der Schnitt der Release und Deployment-Einheiten!
* Dabei sollen die gegenseitigen Abhängigkeiten minimal sein

## Was ist die zentrale Herausforderung bei Microservices?
* möglichst wenig und gering Abhängigkeiten
* Microservices forcieren die Modularisierung, verlagern das Problem aber potentiell ins Deployment

## Was sind die Vor- und Nachteile von Microservices?
* Vorteile:
    * sind überschaubar, unabhängig und gut wartbar
    * können relativ schnell und flexibel angepasst werden
    * können von kleinen, schlagkräftigen Teams entwickelt werden
    * sind für/in unterschiedlichen Plattformen, Sprachen oder Technologien realisierbar
* Nachteile:
    * Hohe Anforderungen an das Operating
    * Höhere Komplexität durch Asynchronität und Resilienz
    * Neue Herausforderung Sicherheit, Überwachung, Monitoring und Logging

