# Modularisierung

## Was ist der Zusammenhang zwischen Kopplung und Kohäsion?
* Kopplung (Coupling):
    * Ausmass der Kommunikation zwischen Modulen
    * beschreibt Unabhängigkeit der einzelnen Module
    * Ziel: Minimiere die Kopplung!
* Kohäsion (Cohesion):
    * Ausmass der Kommunikation innerhalb eines Moduls
    * beschreibt interner Zusammenhalt innerhalb eines Moduls
    * Ziel: Maximiere die Kohäsion!

## Welche Arten von Modulen gibt es?
* Bibliotheken
    * Sammlung von oft benötigte und thematisch zusammengehören Funktionen
* abstrakte Datentypen
    * implementiert einen Datentyp und stellt Operationen zur Verfügung
* Modellierung physischer Systeme
    * insbesondere in technischen Anwendungen der Informatik
* Modellierung logisch-konzeptionelle Systeme
    * Systeme modellieren und für andere Komponenten nutzbar machen

## Was sind die wichtige Kriterien für einen modularen Entwurf?
* Zerlegbarkeit
    * Teilprobleme sind unabhängig voneinander entwerfbar
* Kombinierbarkeit
    * Module sind unabhängig voneinander (wieder-)verwendbar
* Verständlichkeit
    * Module sind unabhängig voneinander zu verstehen
* Stetigkeit
    * kleine Änderungen der Spezifikation führen nur zu kleinen Code-Änderungen

## Was sind die Prinzipien des modularen Entwurf?
* lose Kopplung
    * schmale Schnittstellen, nur das wirklich benötigte austauschen
* starke Kohäsion
    * hoher Zusammenhalt innerhalb eines Moduls
* Information Hiding
    * Modul ist nach aussen nur über seine Schnittstelle bekannt
* wenige Schnittstellen
    * zentrale Struktur, minimale Anzahl Schnittstellen (Aufrufe, Daten)
* explizite Schnittstellen
    * Aufrufe und gemeinsam genutzte Daten sind im Code ersichtlich

