# Das Data Warehouse II

## Welche Aufgabe hat der Integrationsbereich?
* Daten aus verschiedenen Quellen (intern oder extern) 
* über eine Staging Area (=Arbeitsbereich) und ODS  so aufzubereiten
* dass Sie für den Transfer in das Data Warehouse bereit sind
* das ist ca. >50% der Arbeit, welche im Data Warehouse-Umfeld geleistet werden muss

## Was bedeutet die Abkürzung ETL?
* Extrakt
* Transfer 
* Load

## Wie heissen drei bekanntesten Schnittstellen zur Extraktion von Daten?
* Open Database Connectivity (ODBC)
* Java Database Connectivity (JDBC)
* OLE DB (Object Linking and Embedding Database) 

## Welche zeitlichen Arten von Extraktionen gibt es gemäss Farkisch?
* Periodische Extraktion
* Sofortige Extraktion
* Anfragegesteuerte Extraktion
* Ereignisgesteuerte Extraktion
* Zeitstempelbasiert

## Welche Techniken werden zur Extraktion eingesetzt?
* Replikationsbasierte Technik
    * Replikationsdienste schreiben geänderte Tupel in spezielle Replikationstabellen
* Log-basierte Technik
    * Durch Auswertung des Logfiles kann ermittelt werden, welche Daten sich geändert haben

## Was sind die Vor- und Nachteile von Replikationsbasierte Technik?
* Vorteile:
    * geänderte Tupel werden temporär in spezielle Tabellen geschrieben
    * erhöhte Verfügbarkeit der Daten (Redundanz)
    * Beschleunigung von Lesezugriffen
* Nachteile:
    * hoher Updateaufwand
    * erhöhter Speicherplatzbedarf
    * geänderten Tupel müssen später in die Originaltabelle eingefügt werden

## Was sind häufige Transformationen?
* fehlende Daten nachtragen
* Dubletten eliminieren
* Fehler beseitigen
* Daten aktualisieren
* Datentypen vereinheitlichen homogenisieren
* Daten vereinheitlichen, homogenisieren (Datum, Zeit, Währungsformate)
* Datenkonvertierung durch einheitliche Codierung der Daten
* Vereinheitlichung von Zeichenketten (Homogenisierung)
* Umrechnung von Masseinheiten
* Attributwerte separieren bzw. kombinieren

## Was meint der Begriff Laden bei SSIS?
* hochladen in den ODS, in das Data Warehouse oder in den Data Mart

## Wie kann mit SQL ein Datensatz eingefügt werden?
```
INSERT INTO table (col1, col2, col3, ...) VALUES (value1, value2, value3, ...)
```

## Wie können mit SQL mehrere Datensätze gleichzeitig eingefügt werden?
```
BULK INSERT tmpStList FROM 'c:\TxtFile2.txt' WITH (FIELDTERMINATOR=',') 
```

## Was ist das Problem beim Laden von Daten?
* System ist für die Verwendung gesperrt
* bzw. wegen der hohen Auslastung nur eingeschränkt nutzbar

## Welche zwei Arten von Laden unterscheidet man?
* Initialisierungsladen (alle Daten)
* Aktualisierungsladen (nur geänderte Daten)

## Für was wird ein Bulk Loader eingesetzt?
* optimiert auf den Import von grossen Datenmengen
* aus Effizientgründe wird oft keine Standardschnittstellen verwendet
* wird üblicherweise in der Nacht oder am Wochenende durchgeführt

## Was ist ein Monitor?
Der Monitor muss alle Datenänderungen in den verschiedenen
Datenquellen mitbekommen und adäquat reagieren

## Welche Fragen stellen sich bei den verschiedene Monitor-Vorgehensmuster?
* Wird die ganze Änderung festgehalten oder nur das neue Tupel?
* Soll das Quellensystem benachrichtigen oder soll der Monitor nachfragen?
* Soll das Quellensystem sich selbst überwachen oder eine externe Einheit?
* Soll der DWH Bestand in Echtzeit aktualisiert werden oder durch ein Snapshot?

## Was ist eine Nabe-Speiche-Architektur?
* auch bekannt als "Hub and Spoke architecture"
* __Nabe:__ Punkt an dem verschiedene Speichen beginnen oder enden
* __Speiche:__ Datenfluss zwischen zwei verschiedenen Systemen

## Welche DWH Datenstrukturen werden unterschieden?
* __Star__
    * 1 Faktentabelle + mehrere Dimensionstabellen
* __Snowflake__
    * 2 Faktentabellen welche durch Dimensionstabelle verbunden sind
    * jede Faktentabelle ist mit weitere Dimensionstabellen verbunden
* __Galaxy__
    * eine oder mehrere Faktentabellen
    * verschachtelte Dimensiontabellen

## Wie kann mit MS-SQL die Abfrageperformance analysiert werden?
```
SET SHOWPLAN_ALL ON 
-- <<Befehl zum analysieren>>
SET SHOWPLAN_ALL OFF
```

