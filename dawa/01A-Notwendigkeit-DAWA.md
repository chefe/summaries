# Die Notwendigkeit von Data Warehouses

## Was ist eine Entscheidung?
Unter Entscheidung versteht man die Wahl einer Handlung aus mindestens
zwei vorhandenen potenziellen Handlungsalternativen unter Beachtung der
übergeordneten Ziele. Mit der Evaluation der Konsequenzen von 
Entscheidungen befasst sich die Entscheidungstheorie.

## Welche Methoden gibt es zur Entscheidungsunterstützung?
* Modellbasiert
    * z.B. Lineare Optimierung
    * ein mathematischer Ansatz oder regelbasierte Systeme
    * Modell = Abbildung der Realität
* Wissensbasiert
    * z.B. Expertensysteme 
    * und andere Ansätze von Künstlicher Intelligenz
* Datenbasiert 
    * auf einer grossen Fülle von Daten aufbauend
    * Data Warehouse,  OLAP, Data Mining
* KI (Künstliche Intelligenz)
    * Entscheidungen werden von einem Systemen getroffen
    * auf der Basis von Daten und/oder gelernten Inhalten (Machine Learning)

## Welche Abkürzungen gibt es bei Entscheidungsunterstützungssysteme?
* GL - General Ledger
* MIS - Management Information Systems
* DSS - Decision Support Systems
* EIS - Executive Information System
* OLAP - Online Analytical Processing

## Was ist ein Experten System?
* auch XPS oder ES genannt
* ist ein Computerprogramm
* unterstützt Menschen bei der Lösung von komplexeren Problemen
* indem es Handlungsempfehlungen aus einer Wissensbasis ableitet
* basiert auf Fakten, Regeln und Hintergrundwissen

## Aus welchen drei Komponenten besteht ein Experten System?
* Erklärungskomponente
* Problemlösungskomponente
* Wissenserwerbskomponente

## Was ist das Probelm mit viele Datenhaltungen?
* Verschiedene Datenformate
* Unterschiedliche Werkzeuge
* Heterogenität der Daten

## Was versteht man unter Heterogenität der Daten?
* technisch (Mainframe, Flatfile, DBMS, ...)
* logisch (Schemata, Formate, Darstellungen)
* syntaktisch (Datum, Codierung, Währung, ...)
* qualitativ (fehlende oder falsche Werte, Dubletten, ...)
* verfügbarkeitsmässig (permanent, periodisch, ...)
* rechtlich (Datenschutz, Zugriffsverwaltung, ...).

## Was versteht man unter OLTP-Systemen?
* Online Transactional Processing
* DBs aus dem operativen Geschäft werden mit sehr vielen schreibenden und lesenden Zugriffen beschäftigt 
* Operative DBs eigenen sich aus Performancegründen schlecht für eine analytische, vorausschauende Bewirtschaftung
* die Daten in OLTP-DBs liegen meist auch in 3. Normalform vor
* diese Datenspeicherung entspricht oft nicht dem intuitiven Denken der Wirtschaftsmanagerinnen

## Was ist der Unterschied zwischen OLTP und OLAP?
* OLTP
    * __Zweck:__ Rationalisierung, Automatisierung
    * __Entscheidung:__ Deduktiv
    * __Bewirtschaftung:__ Ändernd
    * __Optimierung:__ Schneller Insert und Delete
    * __Transaktionsdurchsatz:__ hoch
    * __Antwortzeit:__ Milisekunden bis Sekunden
    * __Redundanz:__ Normalisiert
    * __Aktualisierung:__ laufenden
* OLAP
    * __Zweck:__ Plannung, Entscheidung
    * __Entscheidung:__ Induktiv, Explorativ
    * __Bewirtschaftung:__ Befragend
    * __Optimierung:__ Schneller Lesezugriff auf vorberechnete Daten
    * __Transaktionsdurchsatz:__ tief
    * __Antwortzeit:__ Sekunde bis Stunden
    * __Redundanz:__ Denormalisiert
    * __Aktualisierung:__ periodisch

## Was bedeutet die Abkürzung DIKW?
* Data / Daten
* Information / Information
* Knowledge / Wissen
* Wisdom / Weisheit

