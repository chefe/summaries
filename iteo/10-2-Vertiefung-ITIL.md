## Was bedeutet SACM?
Service Asset & Configuration Management

## Was ist das Ziel von SACM?
* Überblick über das vorhandene Equipment
* Wo und wofür etwas verwendet wird
* Verständnis der Infrastrucktur verbessern

## Was ist das grösste Problem bei SACM?
* Aufrechterhaltung der Datenqualität

## Was beinhaltet SACM?
* Bereitstellung von aktuellen und konsistenten Informationen
    * zur Konfiguration der IT-Infrastruktur
    * und über die benötigten Komponenten

## Was sind die wichtigsten Prozessschritte im SACM?
* Definition von Configuration Items
* Konfigurations- und Inventar-System bereitstellen
* Überwachung der Qualität
* Sicherstellung der Datenqualität

## Was bedeutet CI?
* Configuration Item
* Komponente welche in der Datenbank gespeichert wird
* wird kategorisiert (HW, SW, Dokumente, Konfigurationen, Gebäude, ...)

## Was für Informationen gibt es zu einem CI?
* Eindeutige Bezeichnung
* CI-Type
* Name
* Beschreibung
* Hersteller
* Status
* Owner

## Was bedeutet CMDB/CMS?
* Configuration Management Database / Configuration Management System
* Verwaltet Daten über Management-Werkzeuge
* Stellt definierte Schnitstellen zur Verfügung

## Was versteht man unter Historisierung/Planzustände?
* verwaltende Objekte ändern sich ständig
* Änderungen müssen gespeichert werden
* auch Erfassung der geplannten Änderungen

## Was sind typische CI-Unterteilungen?
* HW (Server, Desktop, Laptop, Tablet, Phone, Printer, Scanner, Monitor, Other)
* SW (Hypervisor, OS, Middleware, Server Applications, Client Applications)

## Was sind die Rollen im Configuration Management?
* Configuration Manager
    * Planung und Überwachung der Aktivitäten
    * Definition und Pflege von Schnittstellen
    * Überwachung und Sicherstellung der Datenqualität
    * Tool-Evaluierung und Auswahl für das CMS
    * Definition eindeutiger Konventionen für Configuration Items
    * Pflege und Aktualisierung des CMS
    * Reporting an andere Prozesse und an das Management
* Configuration Administrator
    * Durchführung der Pflegeaktivitäten im SCAM
    * für die Bereitstellung der Informationen der gespeicherten CI
    * unterstützen des Configuration Manager
* Datenverantwortlicher / Data Owner
    * TODO
* CMS Tools-Administrator
    * Funktionsfähigkeit und Weiterentwicklung des CMS
    * und die anforderungsgerechte Konfiguration der eingesetzten Tools

## Welche KPI sind für das Configuration Management relevant?
* Dimension Qualität
    * Datenaktualität und –qualität der Konfigurationsdaten
    * Anteil erfolgloser RFC aufgrund falscher oder fehlender Informationen
    * Quote genutzter Lizenzen in Bezug zu gekauften Lizenzen
* Dimension Wirtschaftlichkeit:
    * Stückkosten pro Konfigurationsitem für Erfassung und Pflege
* Dimension Leistung:
    * Verfügbarkeit: Soll-/Ist-Vergleich der geplanten und effektiven Zeiten

## Was sind die Erfolgsfaktoren für CM?
* Automatisierung
* Beschränkung der Daten
* Prozesse für die Datenpflege
* Sicherung der Datenqualität
* Aktives CM

## Was kontrolliert das Change Management?
* alle Veränderungen an vorhandenen Services
* das Hinzufügen neuer Services
* die Ausserbetriebnahme von Services

## Was sind die Ziele des Change Management?
* Effiziente und effektive Durchführung von Changes
* Minimierung der negativen Auswirkungen von Veränderungen
* Reduziert Störungen und Service-Unterbrechungen aufgrund von Changes
* minimiert unnötige Nacharbeiten
* Anforderungen auf das Business ausrichten
* Changes in angemessener Zeit durchführen
* Sicherstellung der Dokumentation aller Changes
* priorisieren, plannen, testet, implementieren und überprüfen
* Configuration Managemengt nachführen

## Was bedeuten die  Begriffe RFC und CS?
* Service Change
    * Hinzufügen, Verändern oder Entfernen von Service
* Request for Change (RFC)
    * Antrag zur Durchführung eines Service Change
    * Basis für die Bewertung, Planung und Genehmigung des Changes
* Change Schedule (CS)
    * Enthält alle genehmigten Changes inklusive Datum

## Was bedeutet Change Model?
Vordefinierte und dokumentierte Abläufe für die
Durchführung bestimmter Arten von Changes

## Was ist ein Standard Change?
* wiederkehrende Changes mit überschaubarem Risiko
* Entlastung der Bürokratie

## Was sind die Aufgaben des Configuration Management?
* Kommunikation mit den Beteiligten
* Steuerung der durchzuführenden Changes
* Planung der Changes (ab RFC bis Nachbearbeitung)
* Zeitplanung für die Change-Durchführung
* Bewertung der Changes bezüglich Risiken und Auswirkungen
* Autorisierung der Changes
* Erstellen von Management Reports

## Was sind die Rollen im Change Management Prozess?
* Change Manager
    * Einberufen des CAB/ECAB und Vorlage der relevanten Changes
    * Autorisieren der Changes, ggf. nach Abstimmung mit dem CAB
    * Review aller implementierten Changes
* Change Advisory Board (CAB)
    * Bewertung, Planung und Genehmigung von Changes
    * Vertritt technische als auch Business-Sicht
    * Mitglieder: Kundenvertreter, Spezialisten, ...
* Emergency CAB (ECAB)
    * Bei zeitkritischen Changes mit in der Regel hohen Auswirkungen
    * Muss kurzfristig erreichbar sein
    * Besitzt Autorität für notwendige Entscheidungen

## Was ist sind die Herausforderungen beim Change-Management?
* Flexibilität
    * schnelle Change-Umsetzung und somit eine hohe Flexibilität
    * erhöht das Risiko fehlgeschlagener Changes oder Nebeneffekte
* Stabilität
    * bürokratische Vorgehensweise stellt hohe Zuverlässigkeit sicher
    * kostet viel Zeit und Ressourcen
    * wird kurz nach einer Neueinführung oft zu einem Flaschenhals

