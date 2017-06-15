# Prozess Modellierung

## Was ist der Zweck der IT?
* Unterstützt Geschäftsprozesse
* IT-Service entwickeln und betreibt Applikationen

## Was ist ein Geschäft oder Betrieb?
* Einheit von zusammenwirkenden Personen und Produktionsmitteln zum
    * Hervorbringen von Gütern und Dienstleistungen (Output) aus
    * Eingangsmaterialien (Input)
    * für Dritte
    * mit dem Zweck der Erzielung eines Gewinns

## Wie lässt sich ein Prozess beschreiben?
* Ein Prozess ist ein allgemeiner Ablauf mehrerer Schritte, bei denen es sich um Aufgaben, Ausführungen, Arbeitsschritte oder Ähnliches handeln kann
* Zwischen diesen Prozessabschnitten bestehen bestimmte Abhängigkeiten

## Was ist ein Geschäftsprozess?
* Ein Geschäftsprozess ist ein Ablauf von Aktivitäten, die der Erzeugung eines Produktes/einer Dienstleistung für Dritte dienen
* Er wird durch ein oder mehrere Ereignisse gestartet und durch ein oder mehrere Ereignisse abgeschlossen
* Es liegt eine Organisationsstruktur zu Grunde
 
# Was ist eine Prozesslandkarte?
* dient dazu, Übersicht über Prozesse zu gewinnen
* stellt entweder alle Prozesse eines Unternehmens dar oder fokussiert auf die für ein betroffenes IT-System oder IT-Projekt relevanten Prozesse
* Die Prozesse einer Prozesslandkarte werden üblicherweise als Rechtecke dargestellt und zwischen Prozessen werden - falls sinnvoll - Informationsflüsse eingezeichnet

## Wie sieht die Prozesslandkarte eines Tante Emma Ladens aus?
* Marketing
    * Aktionen festlegen
    * Schild beschreiben
    * Analyse was gefordert ist
* Einkauf
    * Einkaufsliste aufstellen
    * Zum Grosshändler gehen
    * Produkte auswählen
    * Zum Laden transportieren
* Lager
    * Produkte einsortieren
    * Bestand aktualisieren
    * Alte Produkte aussortieren
* Verkauf
    * Preise aktualisieren
* Beschwerde Management
    * Beschwerden aufnehmen
    * Kulanz
    * Ersatz
* Personalmanagement
    * Löhne zahlen
    * Arbeitspläne
* Unterhalt
    * Putzen
    * Abfall entsorgen
* Buchhaltung
    * Geld in Kasse überprüfen
    * Buchhaltung nachführen
    * Budget erstellen
    * Monatsabschluss / Jahresabschluss

## Was ist BPMN?
* Business Process Modelling Notation
* Verständliche graphische Modellierung für das Business
* Ausführbare technische Modelle durch Verfeinerung von Attributen

## Was sind die Elemente von BPMN?
* Aufgabe / Aktivitäten
    * [Objekt] + [Verb]
    * Bsp: Lebensmittel einkaufen
* Sequenzfluss
    * Verbindungen zwischen Aufgaben, Ereignissen und Gateways
* Startereignis (min 1x)
    * [Objekt] und passives [Verb]
    * Hunger festgestellt
* Zwischenereignis (optional)
* Endereignis (min 1x)
* Exklusives Gateway (Verzweigung)
    * x Symbol
    * XOR-Gateway
    * Frage darüber formulieren
    * Verschiedene Pfade führen weg mit Bezeichnungen
    * Kann auch zum zusammenführen verwendet werden
    * als Raute dargestellt mit Symbol in der Mitte
* Parallele Gateways
    * + Symbol
    * zu Beginn parallelisierend
    * am Schluss synchronisierend
* Inklusives Gateway (OR)
    * O Symbol
    * OR-Gateway
    * Mehere Wege sind möglich
* Daten-Objekt
    * repräsentieren alle möglichen Informationen
    * kann aus einer Aufgabe entstehen
    * oder wird für eine Aufgabe gebraucht
    * als Dokumentent-Symbol dargestellt
* Verknüpfungs-Ereignis
    * Doppelter Kreis mit Pfeil und unterhalb Buchstaben
    * zwei Teile eines Prozess verknüpft
    * beispielsweise bei einer Aufteilung auf zwei Blätter

## Für was werden Lanes verwendet?
* Stellen der Primärorganisation, z.B. Sachbearbeiter Buchhaltung
* Rollen der Sekundärorganisation, z.B. Datenschutzbeauftragter
* Allgemeine Rollen, z.B. Kunde
* Abteilungen, z.B. Vertrieb
* IT-Anwendungen, z.B. CRM-System

## Was ist ein Pool?
* Zusammenfassung verschiedener Lanes
* bezeichnet übergeordnete Instanz (z.B. Firma)

## Was ist ein Teilprozess?
* Aufgabe mit einem Pluszeichen
* beschreibt einen detaillierten Ablauf
* nimmt aber im Diagramm des Oberprozesses nicht mehr Platz ein als eine Aufgabe

## Wie wird ein Hauptprozess visualisiert?
* geschriben in Grossbuchstaben
* wird gebraucht für Referenz auf einen Hauptprozess in einem Teilprozess

## Welche andere Modellierungssprachen gibt es noch?
* EPK: Ereignisgesteuerte Prozessketten
* UML: Unified Modeling Language

