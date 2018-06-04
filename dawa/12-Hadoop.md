# Hadoop

## Welche drei Anwendungen von Hadoop gibt es in einem Datawarehouse?
1. Hadoop als neuer Datenspeicher
2. Hadoop als Daten Plattform und zusätzlicher Input für das Data Warehouse
3. Hadoop als Daten Platform und Basis für BI und Analytics

## Was bedeutet die Abkürzung MOOC?
* M - Massive
* O - Open
* O - Online
* C - Course

## Was ist die Motivation hinter Hadoop?
* automatische Erfassen von Daten erzeugt riesige Datenmengen
* Speicherkapazitäten sind in den letzten Jahrzehnten stark angestiegen
* Zugriffszeiten und Transferraten haben sich vergleichsweise wenig verbessert
* Zeit zum Auslese einer kompletten Festplatte wird immer grösser
* Mehrere Recheneinheiten werden zu Clustern verbunden
* Parallele Verarbeitung von grossen Datenmengen möglich

## Was kann Hadoop?
* kann intensive Rechenprozesse mit grossen Datenmengen durchführen
* kann Daten fehlertolerant auf viele Servern innerhalb eines Clusters verteilen

## Woher kommt Hadoop?
* wurde von der Apache Software Foundation entwickelt
* ist ein in Java geschriebenes open source Framework 
* wurde für skalierbare und verteilt arbeitende Software entwickelt
* basiert auf dem MapReduce-Algorithmus von Google

## Welches sind die zwei zentralen Bausteine von Hadoop?
* HDFS
    * Hadoop Distributed File System 
    * Filesystem zum Speichern von Daten
* MapReduce
    * Algorithmus zum paralellen Verarbeiten von Daten

## Was versteht man unter Nebenläufigkeit?
* ist die Eigenschaft eines Systems, mehrere Befehle gleichzeitig ausführen zu können
* Operationen können dabei nur scheinbar nebenläufig auf einem Prozessor ausgeführt werden
* oder auch echt nebenläufig auf einem Mehrkernprozessor 
* oder auf auf physisch getrennten Prozessoren
* oder auf mehreren, durch ein Netzwerk verbunden, Computer

## Was ist ein Transputer?
* ist ein Parallelrechner, der mit Kommunikationshardware ausgestattet ist
* effizienter Datenaustausch zu benachbarten Rechnern mittels Message Passing
* das Wort ist ein Kunstwortwort aus "Transistor" und "Computer"
* 1983 wurde der Transputer offiziell vorgestellt
* dabei handelt es sich um vollständige Mikrorechner
* Wesentlich an dem Konzept des Transputers waren seine Cluster Fähigkeiten 
* sowie die darauf basierenden Versuche der Parallelisierung der Rechenprozesse

## Wie funktioniert der Map-Reduce Algorithmus?
1. Input wird in verschiedenen Teile gesplittet
2. Teile werden einzeln in Key-Value-Pairs gemappt
3. Key-Value-Pairs werden sortiert
4. Gleiche Keys werden zusammengezogen und der Value addiert
5. Alle Keys werden in ein grosses Dictionary vereint

## Welche Komponenten gibt es bei Hadoop?
* Master (Verwaltet Anfragen von Clients)
* Client (Schickt Anfragen zum Speichern und Verarbeiten von Daten)
* Cluster (Sammlung von Racks)
* Rack (Enthält mehrere Nodes)
* Node (Computer, enthält einen Task Tracker und eine Data Node)
* HDFS (Hadoop Distributed File System)
* Name Node (managed das Filesystem)
* Data Node (verwaltet die Daten und liefert sie den Clients)
* Job Tracker Node (enthält Anfragen von Client, überwacht den Algorithmus)
* Task Tracker Node (führt die MapReduce Transaktion aus)

## Welche Anwendungsfälle gibt es für Hadoop?
* Hadoop als Staging Are im ETL-Prozess
* Hadoop als ETL Worker
* Hadoop in der Vorverarbeitung unstrukturierter Daten
* Hadoop als Datenbank für feingranulare Daten
* Hadoop als langfristig verfügbares aktives Archiv für Rohdaten

## Wo liegen Daten typischerweise in einer betrieblichen Umgebungen?
* Dateidienste
    * konzentrieren die Datenbestände mit einem eigenen Dienst-Betriebssystem
    * ist für Zugriffssicherung und ggf. Verschlüsselung zuständig
* Network Attached Storage (NAS) Systeme
    * konzentrieren die Datenbestände
    * sind eigentlich auf Firmware-Steuerung basierende Dateidienste 
    * werden vorwiegend in kleinen Umgebungen verwendet
* Storage-Area-Network (SAN) Systeme
    * verteilen die Datenbestände über ein eigenes Storage-Netzwerk
* Speichervirtualiserung
    * meint die Verteilung eines diskret adressierbaren Daten-Volumes auf mehrere Platten im Rack oder SAN
    * ist in NAS- und SAN Systemen möglich

## Was ist ein Objektspeicher?
ist ein allgemeiner Begriff für einen Ansatz, wie man eigenständige Einheiten an Storage 
manipuliert und adressiert, die man Objekte nennt

## Was ist die Motivation hinter Objektspeicher?
1. ermöglicht es riesige Mengen unstrukturierter Daten zu verwalten
2. das Volumen unstrukturierter Daten wächst ständig
3. Hierarchische Dateisysteme sind nicht geeignet bei sehr vielen Dateien
4. viele Public-Cloud-Dienste bieten bereits Objektspeicher
5. Objektbasierte Speicher sind praktisch grenzenlos skalierbar
6. schneller Lese und Schreibzugriff
7. schnelle Indexierung und Suche möglich

