# Planung der systemtechnischen Architektur

## Was sind die Anforderungen an Realtime-Data-Warehouse-Systeme?
* stellen Daten in der gewünschten Aktualität zur Verfügung 
* es wird auch von "Data Freshness" gesprochen
* Aktualitätszyklen von Monaten bis zu Sekunden
* rechenintensive Datenbeschaffungsprozess arbeitet vorwiegend in der Nacht

## Was bedeutet In-Memory Computing?
* es werden bessere Server und mehr Speicher benötigt
* Daten werden in Echtzeit verarbeitet
* Speichern und Verwalten von Daten im Arbeitsspeicher
* löst sich vom konventionellen Ansatz der Festplattendatenverwaltung

## Was sind mögliche Hard- und Software-Innovationen?
* Hardware-Innovationen
    * Multi-Core Architektur
    * 64Bit-Adressen
    * grosser Datendurchsatz
    * Verbesserung Preis/Performance
* Software-Innovation
    * Zeilen- und Spaltenabfragen
    * Komprimierung
    * Partitionierung
    * Aggregate unnötig
    * Vermeiden teurer Datenbankoperationen

## Wieso benutzt man In-Memory Computing? 
* Realtime Analytics
* OLTP & OLAP Annäherung
* Reduktion von Batch Prozessen
* Real Time Datenbank
* Geschäftsprozessoptimierungen
* Serverkonsolidierung
* Reduzieren der TCO (Total  Cost of Ownership)
* Reduzieren des Stromverbrauchs
* Reduzieren der Fläche

## Was sind die Geschwindigkeiten der verschiedenen Speicherarten?
* RAM - bis 38400 MB/s
* SSD - bis 509 MB/s
* HDD - bis 150 MB/s

## Was bedeutet die Abkürzung NUMA?
* Non-Uniform Memory Access
* Kommunikation zwischen mehreren Prozesses
* welche alle einen eigenen RAM haben

## Was ist der Unterschied zwischen reationaler und In-Memory Datenbank?
* relationale Datenbanken werden zeilenorientiert gespeichert
* In-Memory Datenbank werden spalten- oder zeilenorientiert gespeichert

## Was sind die Unterschiede zwischen zeilenbasiert und spaltenbasiert?
* Zeilenbasiert
    * Schneller Schreibzugriff
    * Langsamer Lesezugriff
    * OLTP-System
* Spaltenbasiert
    * Schneller Lesezugriff
    * Langsamer Schreibzugriff
    * OLAP-System

## Was sind die Unterschiede zwischne Row- und COlumn-Store?
* Column Store
    * bei einer Aggregation (SUM) nur auf zwei Spalten zugegriffen werden
    * dadurch sehr effizient
* Row Store
    * wenn auf ganze Zeile zugegriffen werden muss effizienter

## Was sind Chancen und Risiken von In-Memory Computing?
* Chancen für das Business
    * Analysen in Echtzeit
    * Neue Analyse-Möglichkeiten
    * Bessere Entscheidungsmöglichkeiten
* Risiken für das Business
    * Erhöhte Ausfallzeit
    * Erhöhtes Risiko von Datenverlust
    * Geschäftsprozesse müssen angepasst werden
* Chancen für die IT
    * Bereitstellung von neuen Lösungen für das Business
    * Optimale CPU Ausnutzung
    * Schlankeren IT-Umgebung
* Risiken für die IT
    * Fehlendes Know-How
    * Hohe Einführungskosten
    * Applikationen müssen angepasst werden

## Wie funktioniert Dictionary Encoding?
* Dictionary wird angelegt mit ID und einem Wert
* ursprüngliche Daten werden durch Liste mit ID ersetzt
* dadurch ist eine starke Komprimierung möglich

## Was ist das 3V Model?
* Velocity - Geschwindigkeit der Daten 
* Variety - Vielfalt der Daten
* Volume - Grösse der Daten

