# NoSQL

## Was sind die 5 V von Big-Data?
* Volume (Horizontale Skalierung)
    * Terabytes
    * Recors/Arch
    * Transaction
    * Tables, Files
* Variety (Schemafreiheit)
    * Structured
    * Unstructured
    * Multi-factor
    * Probabilistic
* Veracity
    * Trustworthiness
    * Authenticity
    * Origin, Reputation
    * Availability
    * Accountability
* Value
    * Statistical
    * Events
    * Correlations
    * Hypothetical
* Velocity
    * Batch
    * Real/near-time
    * Processes
    * Streams

## Was sind die beliebtesten Datenbanksystem?
* Oracle
* MySQL
* Microsoft SQL Server
* PostgreSQL
* MongoDB
* DB2
* Cassandra
* Microsoft Access
* Redis
* SQLite

## Welche Typen von NoSQL Datenbanken gibt es?
* Key-Value Stores
* Column-Family Stores
* Document Stores
* Graph Databases

## Was sind die Nachteile von relationalen Datenbanken?
* sind nur sehr schwierig auf mehrere Rechner verteilbar
* haben starke Schemarestriktionen (Tabellen, Foreign Keys, etc.)

## Welche Eigenschaften weist eine NoSQL-Datenbank auf?
* Das Datenmodell ist nicht relational
* Ausrichtung auf verteilte und horizontale Skalierbarkeit
* Schemafreiheit
* Einfache Datenreplikation
* Einfacher Zugriff über eine Programmierschnittstelle (Application Programming Interface, API)
* Anderes Konsistenzmodell als ACID (z.B. BASE)

## Was versteht man unter CAP?
* Consistency
* Availability
* Partition Tolerance

## Was bedeuten die Abkürzngen ACID und BASE?
* ACID
    * Konsistenz hat oberste Priorität (strong consistency)
    * meistens pessimistische Synchronisationsverfahren mit Sperrprotokollen
    * Verfügbarkeit bei überschaubaren Datenmengen gewährleistet
    * einige Integritätsregeln sind im Datenbankschema gewährleistet
* BASE (Basically Available, Eventually Consistent)
    * Konsistenz wird verzägert etabliert (weak consistency)
    * meistens optimistische Synchronisationsverfahren mit Differenzierungsoptionen
    * hohe Verfügbarkeit resp. Ausfalltoleranz bei massiv verteilter Datenhaltung
    * einige Integritätsregeln sind im Datenbankschema gewährleistet

## Was sind die Eigenschaften einer Schlüssel-Wert-Datenbank?
* es gibt eine Menge von identifizierenden Datenobjekten, die Schlüssel.
* zu jedem Schlüssel gibt es genau ein Datenobjekt
* mit der Angabe des Schlüssels kann der zugehörige Wert manipuliert werden
* durch Schemafreiheit beliebig horiziontal skalierbar

## Was sind die Eigenschaften einer Spaltenfamilien-Datenbank?
* Daten werden in mehrdimensionalen Tabellen gespeichert
* Datenobjekte werden mit Zeilenschlüsseln adressiert
* Objekteigenschaften werden mit Spaltenschlüsseln adressiert
* Spalten der Tabelle werden zu Spaltenfamilien zusammengefasst
* das Schema einer Tabelle bezieht sich ausschliesslich auf Spaltenfamilien
* innerhalb einer Spaltenfamilie können beliebige Spaltenschlüssel verwendet werden
* Daten von Spaltenfamilie werden physisch möglichst am gleichen Ort gespeichert
    * dies wird gemacht um die Antwortzeiten zu optimieren

## Was sind die Eigenschaften einer Dokument-Datenbank?
* ist eine Schlüssel-Wert Datenbank
* die gespeicherten Datenobjekte werden Dokumente genannt
* Dokument haben Schlüssel, welche zur Identifikation dienen
* Dokumente enthalten Datenstrukturen in der Form von verschachtelten Attribut-Wert-Paaren
* Dokumenten sind schemafrei
    * in jedem Dokument können beliebige Attribute verwendet werden
    * ohne diese zuerst in einem Schema zu definieren.

## Was sind die Eigenschaften einer Graphdatenbank?
* Daten als Graphen oder graphähnlichen Strukturen abgebildet
* Datenmanipulationen werden als Graph-Transformationen ausgedrückt
* unterstützt die Prüfung von Integritätsbedingungen, welche die Datenkonsistenz sicherstellt
* Definition von Konsistenz bezieht sich direkt auf Graph-Strukturen 

## Was ist ein Property-Graph?
* bei jeder Kante oder Knoten können weitere Werte hinterlegt werden
* die Werte werde als Key-Value-Pairs abgespeichert

