# Medatadaten und Strategien

## Was bededeutet die Abkürzung XMLA?
XML for Analysis

## Welche Anbieter unterstützen XMLA?
* Microsoft
* SAS
* Hypersion-Oracle
* SAP
* Oracle
* IBM

## Was bedeutet die Abkürzung SOAP?
* Simple Object Access Protocol
* ist ein Netzwerkprotokoll, mit dessen Hilfe Daten zwischen Systemen ausgetauscht 
* und Remote Procedure Calls durchgeführt werden können
* ist ein industrieller Standard des W3C

## Wie ist ein XMLA Execute aufgebaut?
```
<Execute xmlns="urn:schemas-microsoft-com:xml-analysis">
    <Command>
        <Statement>
            SELECT [Measures].MEMBERS ON COLUMNS FROM [Adventure Works]
        </Statement>
    </Command>
    <Properties>
        <PropertyList>
            <DataSourceInfo>Provider=MSOLAP;Data Source=local;</DataSourceInfo>
            <Catalog>Adventure Works DW Multidimensional 2012</Catalog>
            <Format>Multidimensional</Format>
            <AxisFormat>ClusterFormat</AxisFormat>
        </PropertyList>
    </Properties>
</Execute> 
```

## Wie ist ein XMLA Discover aufgebaut?
```
<Discover xmlns="urn:schemas-microsoft-com:xml-analysis:rowset">
    <RequestType>MDSCHEMA CUBES</RequestType>
    <Restrictions>
        <RestrictionList>
            <CATALOG NAME>Adventure Works DW Multidimensional 2012</CATALOG NAME>
        </RestrictionList>
    </Restrictions>
    <Properties>
        <PropertyList>
            <DataSourceInfo>Provider=MSOLAP;Data Source=local;</DataSourceInfo>
            <Catalog>Adventure Works DW Multidimensional 2012</Catalog>
            <Format>Tabular</Format>
        </PropertyList>
    </Properties>
</Discover> 
```

## Was ist die Definition von Metadaten?
Als Metadaten bezeichnen wir jede Art von Information, die für den Entwurf, die Konstruktion 
und die Benutzung eines Informationssystems benötigt wird.

## Was beschreiben Metadaten im Data Warehouse Umfeld?
* manuelle und maschinelle Prozesse (die Dynamik)
* Daten und Datenstrukturen (die Statik)

## Was trägt alles zu den Metadaten ein Data Warehouse bei?
* Applications
* Extract Tool
* Transformation Tool
* Data Load Function
* Source Systems
* OLAP Tool
* Data Mining Tools
* Query Tools

## Was ist der Unterschied zwischen Date-Warehouse-Manager und Metadaten-Manager?
* Date-Warehouse-Manager
    * ist eine zentrale Komponenteeines Data-Warehouse-Systems
    * ist für die Initiierung, Steuerung und Überwachung der einzelnen DWH Prozesse zuständig
* Metadaten-Manager (MDM)
    * ist eine Software
    * initialisiert, steuert und überwacht die Metadaten eines DWH Systems 
    * verwaltet alle Metadatenflüsse 
    * beinhaltet Versions- und  Konfigurations Übersicht, Import/Export Funktion, etc. 

## Wo überall entstehen Metadaten in der Referenzarchitektur?
* in den Datenquellen
* in dem Arbeitsbereich
* in der Basisdatenbank
* in der Ableitungsdatenbank
* in der Auswertungsdatenbank

## In welche Kategorien werden die Werkzeuge zur Metadatenverwaltung eingeteilen?
* allgemein einsetzbaren Metadatenverwaltungssysteme
    * stellen ein allgemeines Kernschema zur Verfügung
    * das aufgrund der Anforderungen leicht erweitert werden kann
* werkzeugspezifischen Metadatenverwaltungskomponenten 
    * sind feste Bestandteile bestimmter Werkzeuge

## In welche Kategorien werden Metadaten unterteilt?
technische, geschäftliche und prozessuale Metadaten

## Was sind Beispiele für technische Metadaten?
* Server und Instanzen (Ort und Name)
* Datenbankobjekte (Tabellen, Indizes, Sichten, ...)
* Datenmodelle der Quellsysteme
* Datenextraktionsregeln und Datentransformationsregeln
* Datenstrukturen
* ...

## Was sind die Eigenschaften von geschäftliche Metadaten?
* sind vorwiegend deskriptiv
* sie beschreiben die Datenherkunft
* deren geschäftliche Bedeutung
* sowie Rolle und Verwendung
* sie unterstütze die geschäftliche Datenanalyse

## Was sind Beispiele für geschäftliche Metadaten?
* Datenlieferanten
* Datennutzer
* Datenflüsse
* Geschäftsregeln der Datentransformation
* ...

## Was sind die Eigenschaften von Prozess-Metadaten?
* sind vorwiegend deskriptiv
* sie beschreiben die Vorgänge im DWH

## Was sind Beispiele für prozessuale Metadaten?
* Auslösezeiten, Endzeiten von Vorgängen
* benutzte Ressourcen (CPU, Primär-, Sekundärspeicher usw.)
* betroffene Objekte
* Mengen, z.B. Tupelmengen (Row Counts)
* ...

## Welche Gesichtspunkte umfasst die Metadaten-Strategie?
* wie integrieren und pflegen wir die Metadaten?
* wer integriert und pflegt die Metadaten?

## Welche Ansätze gibt es bei einer Metadaten-Strategie?
* Ansatz: Do It Yourself
    * Unternehmung errichtet und pflegt ihr eigenes Repositorium
    * Kompromisse sind unumgänglich, da ein Grossteil der Metadaten schon im DBMS liegt
* Ansatz: Kernprodukt
    * das Produkt gibt das Repositorium und seine Struktur weit gehend vor
* Ansatz: Gesamtlösung 
    * ist unter Umständen dann sehr proprietär, wenig oder gar nicht portabel
    * birgt die Gefahr der Bindung an einen einzigen Partner in sich

## Welche Ziele werden beim normieren von Metadaten angestrebt?
* Einheitlichkeit
* Herstellerneutralität
* Maschinenlesbarkeit
* einfache Bearbeitbarkeit mit Werkzeugen

## Für was steht die Abkürzung CWM?
Common Warehouse Metamodel

## Was beschreibt das CWM?
* Modellierung von Metadaten für relationale, nicht relationale und multidimensionale Objekte
* Beschreibung anderer Objekte und Komponenten
* beschreibt den Zugriff und Austausch von Metadaten

## Was sind die Ziele von CWM?
* Speeding ETL Application Development
* Speeding Warehouse and Mart Database Table Creation
* Speeding Database Persistence Layer Creation
* Speeding OLAP Persistence Layer Creation
* Speeding Warehouse to Mart Migration Development
* Speeding Reporting Tool Setup

## Auf welchen drei Spezifikationen basiert CWM?
* UML
	* Unified Modeling Language
	* ein Modellierungsstandard
* MOF
	* Meta Object Facility
	* ein Standard der OMG für Metamodelle und Repositorien
* XMI 
	* Metadata Interchange
	* ein Standard der OMG für den Austausch von Metadaten

## Was gehört zu einer Data Warehouse Strategie?
* die IT-Strategie folgt der Unternehmensstrategie
* die Data Warehouse Strategie ist Teil der IT-Strategie
* ist kein isolierter Prozess und hat einen hohen Stellenwert
* die Strategiefindung und Architekturentwicklung ist ein permanenter Prozess
* muss den verschiedene Auswertungsanforderungen des Managements genügen
* nicht nur technische Aspekte spielen eine Rolle sondern auch menschliche

## Was sind Vorteile von Reifegradmodelle?
* Selbstrefelxion
* Über- und Unterentwicklungen aufzudecken
* Nebeneffekt des Aufräumens

## Was sind Nachteile von Reifegradmodelle?
* wenig anerkannte Reifegradmodelle
* Nomierung der Modelle würde zu grossem Aufwand führen
* basiert sehr oft auf qualitativen statt auf quantitativen Kriterien
* einzelnen Reifegradmodelle beschränken sich sehr oft nur auf Teilaspekte

