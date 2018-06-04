# Das Data Warehouse I

## Weshalb gibt es häufig Probleme mit den Daten?
* existieren in unterschiedlichen Formaten
* existieren in unterschiedlichen DB-Strukturen
* existieren in unterschiedlichen IT-Architekturen und Systemen
* sind zeitaktuell und dynamisch
* sind zu detailliert und zu feingranular für Managementfragen
* sind für Änderungstransaktionen optimiert 
* Zugriff darauf ist stark begrenzt

## Wie ist ein Data Warehouse definiert?
* ist eine Datenbank
* Daten kommen aus verschiedene Quellen
* Ziel ist die Entscheidungsfindung
* Qualität der Date wird verbessert
* heterogene Daten müssen homogenisiert werden

## Was bedeuten die Begriffe SSIS, SSAS und SSRS?
* SSIS - SQL Server Integration Services
* SSAS - SQL Server Analysis Services
* SSRS - SQL Server Reporting Services

## Welche Bestandteile gehören zur Referenzarchitektur?
1. __Datenquelle  (Data Source)__
    * Daily Business, rasche Reaktion, rasches schreiben und lesen
    * Zeichencodierung, Trennzeichen, Zeilenede, Sortierung, XML Schemata
2. __Arbeitsbereich (Staging Area)__
    * periodische Transformationen, Homogenisierung, temporäre Resultate
    * flüchtiges Zwischendepot, wird manchmal weggelassen
3. __Basis-Datenbank (ODS)__
    * ODS = Operational Data Store
    * wird aus finanziellen Gründen oft weggelassen
4. __Ableitungsdatenbank (Data Warehouse)__
    * möglichst homogenisierter Datenbestand
    * Strukturierung orientiert sich an den Auswertungsbedürfnissen
    * eriodisch ergänzt, praktisch nie geändert und selten gelöscht
5. __Auswertungsdatenbank (DataMart)__
    * Teilkopien des DW, Grundlage für mehrdimensonale Auswertungs-Tools
    * basieren (oft) auf dem Datenmodell des DWH
6. __Würfel (Cube)__
    * für analytische mehrdimensionale rasche Abfragen
    * aus DataMart oder aus DataWarhouse erstellt

## Was sind die Eigenschaften eines ODS?
* es liegt eine integrierte Sicht der Quellen vor
* enthält neben aktuellen Daten auch historische Daten
* ist anwendungsneutral aufgebaut
* Daten werden nach definierter Zeit in die Ableitungsdatenbank übertragen
* Aktualisierung der Basisdatenbank kann zu beliebigen Zeitpunkten erfolgen
* Daten in der Basisdatenbank sind bereinigt

## Welche ODS Klassen gibt es?
* Klasse 0
    * komplette Tabellen werden repliziert
    * keine sachlogische Integration
    * keine direkte Verbindung zwischen ODS und Ableitungsdatenbank
* Klasse 1
    * Datenzeilen werden ins ODS repliziert
    * werden dort wie Klasse 0 integriert
* Klasse 2
    * Datenbeständen werden gesammelt und integriert
    * Daten im ODS werden in die Ableitungsdatenbank übernommen
* Klasse 3
    * Daten fliessen von Ableitunsgdatenbank ins ODS zurück
    * eher nicht zu empfehlen
* Klasse 4
    * Kombination von 3 und 2
    * eher nicht zu empfehlen

## Welches ist heute die ODS Referenzklasse?
Klasse 2

## Was sind Gründe für den Einsatz von Data Marts?
* bessere Leistung, weil kleinere Analysen
* Verlagerung von Rechnerleistung
* Verlagerung von Zugriffen (Speicher + Netzwerk)

## Was sind die Unterschiede zwischen Data Mart und Data Warehouse?
* anwendungsorientiert vs. anwendungsneutral
* auf Abteilung ausgerichtet vs. auf Unternehmen ausgerichtet
* mehere va. genau einmal
* dezentral vs. zentral
* tiefe Antwortzeit vs. hohe Antwortzeit
* niedrige Datenmenge vs. hohe Datenmenge
* abgegrenztes Datenmodell vs. unternehmensweites Datenmodell
* niedrige Historisierung vs. hohe Historisierung

