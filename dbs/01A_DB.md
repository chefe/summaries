# Datenbanktheorie

## Was ist der Unterschied zwischen Daten, Informationen und Wissen?
* Daten
    * rohe, unverarbeitete Informationen
    * ohne Struktur oder Beziehungen
* Informationen
    * Daten werden in Beziehung zueinander gesetzt
* Wissen
    * Informationen mit Erfahrung und Vorwissen verknüpft

## Welche Teile enthält ein Informationssystem?
* Benutzerführung
* Dialoggestaltung
* Abfragesprache
* Munipulationssprache
* Recherchehilfen
* Zugriffsrechte
* Datenschutz

## Was ist die Definition einer Datenbank?
Eine Datenbank ist eine selbständig, auf Dauer und für flexiblen
und sicheren Gebrauch ausgelegte Datenorganisation, die einen
Datenbestand und die dazugehörige Datenverwaltung umfasst.

## Was ist ein DBMS?
Das Datenbankverwaltungssystem ist ein leistungsfähiges Programm
für die flexible Speicherung und Abfrage strukturierter Daten.

## Wie funktioniert das Datenbankmodell nach Zehnder?
Mehrere Anwenderprogramme greifen auf die gleiche Datenbasis zu,
aber ausschliesslich über das DBMS.

## Was ist ein Datenbank-System?
 * System zur Verwaltung von Datenbeständen
 * bestehend aus Datenbasis und Verwaltungsprogrammen
 * welche zusammen als Einheit gekapselt sind

## Was ist der Unterschied zwischen Dateisystem und Datenbank?
In einem Dateisystem kann jedes Anwenderprogramm direkt auf die Daten
zugreifen. In einer Datebank wird der Zugriff durch das DBMS geregelt.

## Was sind die Motivationen hinter Datenbanken?
* Mehrbenutzerbetrieb (mit Transaktionsmanagement)
* Möglichkeiten für Zugriff und Manipulation von Datensätzen
* Konsistenz und Integrität der Daten
* Sicherheit der Daten
* Effizienz bei Applikationsentwicklung durch Wiederverwendung
* Einfachere Wartung durch Kapselung der Daten

## Was ist der Unterschied zwischen  SQL und NoSQL?
* SQL
    * Daten und Beziehungen in Tabellen
    * Metadaten in Systemtabellen
    * Anfrage- und Manipulationssprache SQL
    * Spezialfunktionen (Recovery, Sicherheit, ...) in SQL
* NoSQL
    * Daten in Spalten, Dokumenten oder Graphen
    * verteilte Datenreplikate
    * parallele Ausführung
    * schwache bis starke Konsistenzgewährung

## Wie heissen die wichtigen Begriffe für den Umgang mit SQL-Datenbanken?
* Tabellenname / Tabelle / Entität
* Merkmal / Attribut / Spalte
* Schlüsselmerkmal / Primary Key / Foreign Key
* Datensatz / Zeile / Tupel

## Was versteht man unter den 3 V's bei Big Data?
* Volume
    * Datenbestand ist umfangreich und liegt im Tera- bis Zettabytebereich
* Variety
    * Vielfalt von (semi|un)strukturierten Multimedia Daten
* Velocity
    * Geschwindigkeit, Auswertung von Daten in Echtzeit

## Wie ist der Begriff NoSQL definiert?
* wird für nicht-relationale Ansätze im Datenmanagement verwendet
* es gelten die folgenden zwei Bedingungen:
    1. die Speicherung der Daten erfolgt nicht in Tabellen
    2. die Datenbanksprache ist nicht SQL

## Welche NoSQL-Datenbankmodelle gibt es?
* Key/Value Store
* Document Store
* Graphdatenbank

