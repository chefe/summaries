# Dokument-Datenbanken

## Was sind die Eigenschaften von Dokument Stores?
* verwalten einzelne Datensätze in sogenannten Dokumenten
* ein Dokument ist strukturierte Sammlungen von Schlüssel-Wert-Paaren
* hohe Flexibilität in der Speicherung unterschiedlicher Strukture

## In welchen Formaten werden Dokumente üblicherweise abgespeichert?
* Java Script Object Notation (JSON)
* YAML Ain’t Markup Language (YAML)
* Extensible Markup Language (XML)

## Wie werden Entitätsmengen abgebildet?
* können durch jeweils ein Collection abgebildet werden
* innerhalb einer Collection werden Objekte durch ein Dokument repräsentiert
* Eigenschaften des Objekts werden als Schlüssel-Wert-Paare gespeichert
* Dokumente in einer Collection können sich in ihrer Struktur unterscheiden

## Wie können Beziehungen in Document-DBs abgebildet werden?
1. Referenzierung
    * Speicherung der IDs der referenzierten Datensätze
2. Denormalisierung
    * Speicherung einer Kopie des referenzierten Datensatzes
3. Aggregation
    * Speicherung des referenzierten Datensatzes als Unterteile

## Was ist wichtig beim Transaktionsmanagement auf MongoDB?
* MongoDB unterstützt keine Transaktionen
* Operationen müssen einzeln ausgeführt werden
* Operation umfasst Änderungen auf ein Dokument, werden diese Änderungen atomar durchgeführt
* Operation umfasst Änderungen auf mehreren Dokumenten, werden diese unabhängig voneinander ausgeführt
* transaktionale Atomarität muss bei Document Stores auf Anwendungsebene sichergestellt werden
* Aggregation fasst zusammenhängende Sachverhalten zu einem Dokument zusammen
* Dauerhaftigkeit wird in MongoDB mittels einer Log-Datei (WAL-Prinzip) sichergestellt

## Welche Server-Rollen gibt es bei MongoDB?
* Replica Sets
    * bestehen aus einem oder mehreren Knoten
    * speichern die zu verarbeitenden Dokumente
    * besitzen durch die mehrfache Replikation eine hohe Verfügbarkeit
* Router
    * bilden die Schnittstelle für clientseitige Anfragen
    * sie verarbeiten und leiten Anfragen an die zuständigen Replica Sets weiter
    * und geben schließlich die Ergebnisse an den entsprechenden Client zurück
* Config Server
    * verwalten Metadaten über die Datenverteilung
    * ein Produktivsystem besitzt aus Sicherheitsgründen immer drei Config Server

## Wie ist ein verteilte Anfrageverarbeitung mit MongoDB möglich?
* in MongoDB werden MapReduce-Programme nur für die Analyse von sehr grossen Datenmengen eingesetzt
* Verarbeitung von gewöhnlichen Anfragen wird in einem MongoDB-Cluster von Routern übernommen
* Verteilungsschlüssel ist entscheidend für die Verarbeitungsgeschwindigkeit einer Anfrage
* Basiert die Anfrage auf diesem Schlüssel, können Dokumente direkt an Replica Set adressiert werden
* Eine Anfrage ist ohne diesen Schlüssel ausgeführt, müssen Replica Sets zeitaufwendig durchsucht werden

