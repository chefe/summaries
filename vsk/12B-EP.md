# Deployment

## Was sind die vier wichtigen Aspekte beim Deployment?
* Verteilung
    * Versand von Datenträgern mit Programm und Dokumentation
    * zur Verfügung stellen von entsprechenden Downloads
    * automatisiertes Installation (z.B. Java Webstart)
* Installation
    * Kopieren der nötigen Dateien an die vorgesehenen Orte und Registrieren der Anwendung
    * allenfalls überprüfen, ob das Zielsystem für die Anwendung geeignet ist
* Konfiguration
    * einstellen des Programmes auf Benutzer, Netzwerkumgebung, Hardware etc.
* Organisation
    * Information, Schulung, Support, Planung, Produktion

## Wann findet das Deployment statt?
* natürlich am Ende des Projektes statt
* aufgrund iterativer Entwicklungsmodelle findet Deployment früher und wiederholend statt
* Continuous Delivery erfordert auch Continuous Deployment

## Welche technische und organisatorische Aspekte gehören zum Deployment Umfang?
* Technische Aspekte
    * Deployment Diagramme (Zuordnung Komponenten / Hardware)
    * Installations- und Deinstallationsprogramme / -skripte
    * Konfiguration (Default~, Beispiel~ etc.)
    * Installationsmedium
    * Repositories (Ablage der Binaries)
* Organisatorische Aspekte
    * Konfigurationsmanagement:
    * Welchen Komponenten bilden welchen Release (Baseline)?
    * Installations- und Bedienungsanleitungen
    * Erwartungsmanagement: Welche Funktionalität ist vorhanden?
    * Bereitstellung von Support (intern und extern, Levels)

## Was ist bei der Installation und Deinstallation wichtig?
* Installation (oder Update) der Software sollte möglichst automatisiert sein
* Installation muss reproduzierbar sein
* Saubere Deinstallation ist ebenfalls wichtig
* Vollautomatisierte Verteilung falls möglich

## Was sind die unterschiedliche Kundenbedürfnisse der Zielgruppen?
* Endbenutzer
    * Grafische
    * interaktive GUI-Installation für Endanwender auf dem Desktop
* Administrator
    * Möglichst Script-basierte
    * durch Parameterisierung voll automatisierte Installation auf dem Server für den Administrator
* Entwickler / Tester
    * Spezielle Distributionen
    * manuell oder über zentrale Repositories

## Was sind typische Zielkonflikte beim Deployment?
* Datenbankanwendung: Einsatz einer bestehenden DBMS-Umgebung
* Logging / Audit: Einsatz unterschiedlicher Logging- und Überwachungs-Mechanismen
* Security: Support verschiedener Authentifizierungs- und Autorisierung-Techniken

## Was sind die häufigsten Installationsquellen?
* CD / DVD
* Download von Server (extern oder intern)
* USB-Stick

## Welche Dinge gehören auch noch zum Deployment?
* Binärdateien
* Konfigurationsfiles
* Installationsanleitung
* Bedienungsanleitung
* Release Notes

