# Informations- und Datenqualität III

## Für was steht die Abkürzung ETL?
* Extraktion: 
    * die relevanten Daten werden aus verschiedenen Quellen herausgezogen
* Transformation: 
    * die Daten werden in das Schema und das Format der Zieldatenbank gebracht
* Laden: 
    * die Daten werden in die Zieldatenbank abgefüllt

## Welche Extraktions-Vorgehensweisen werden unterschieden?
* periodisch
* auf Anfrage
* ereignisbasiert
* sofort

## Warum müssen Aktualisierungen i.d.R. inkrementell propagiert werden?
* sehr grosser Zeitaufwand

## Was ist der Unterschied zwischen inkrementell und differenziell?
* inkrementell 
    * Differenz zum letzten inkrementellen Backup
* differentiell
    * immer Differenz zum ursprünglichen Voll-Backup

## Wie heissen die 10 wichtigen Methoden beim Transformieren?
* Aggregate
* Conditional Split
* Data Conversion 
* Derived Column 
* Lookup
* Merge
* Merge Join 
* Multicast
* Sort
* Union All 

## Was ist eine Materialized View?
* auch bekannt als Indexed View oder Automatic Summary Tables
* sind in der Datenbank abgelegte Kopien von Views zu einem bestimmten Zeitpunkt
* um Zugriffe zu beschleunigen und die Netzwerklast zu verringern

## Wie werden Materialized View aktuell gehalten?
* inkrementelle Updates (logbasiert)
* komplette Neuerstellung (einfach aber extrem teuer)
* transaktionsbasiert bei Update der Basistabellen (damit versteckte Kosten für den Updater)
* zeitpunktgebunden (mit zeitweise nichtaktuellen Daten in der View)

## Welche Querys sollen durch Materialized Views gemacht werden?
* Zur Beschleunigug von häufigen Abfragen
* Abfragen mittels materialisierte Sichten lassen sich effizienter beantworten
* die Daten der materialisierten Sichten sind nicht immer aktuell

## Was sind die Unterschiede zwischen differenzieller und inkrementeller Sicherung?
* Differenzielle Sicherung
    * zuerst wird eine Komplettsicherung angelegt
    * danach werden alle Daten gesichert, welche sich seit der Komplettsicherung geändert haben
    * Vorteil: Wiederherstellung aus der Komplettsicherung und der jüngsten Teilsicherung
    * Nachteil: verbraucht mehr Platz und Zeit, da die Datenmenge wächst
* Inkrementelle Sicherung
    * zuerst wird eine Komplettsicherung angelegt
    * danach werden alle Daten gesichert, welche sich seit der Teilsicherung geändert haben
    * Vorteil: ist sehr schnell
    * Nachteil: Benötigt Komplettsicherung und alle Teilsicherungen zur Wiederherstellung

