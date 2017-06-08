# Ressourcen Management im DataCenter

## Was bedeuten die Abkürzungen Iass, PaaS und SaaS?
* IaaS
    * Infrastructure as a Service
    * Verwendung von Servern, Storage und Netzwerk eines Anbieters
    * Virtualisierungsumgebung eines Anbieters genutzt den Kunden
    * OS bis Anwendung in Verantwortung des Kunden
    * Beispiele: Amazone EC2, Rackspace, Joyent, Google Cloud Storage
* PaaS
    * Platform as a Service
    * Verwendung von fertigen Servern des Providers
    * Provider betreut OS und Updates, Netzwerk, Storage
    * Meist auch Backup der gesamten Server durch Provider
    * Kunde nur für Applikation und Daten verantwortlich
    * Beispiele: Google App engine, MS Azure, Amazon
* SaaS
    * Software as a Service
    * Nutzen von Software / Diensten via Internet
    * Meist über Webbrowser
    * Kunde kann sich auf sein Kerngeschäft konzentrieren
    * Provider managed Hardware und Software, Backup und Servicezeiten
    * Integration in eigene Prozesse je nach Schnittstelle möglich
    * Lizenzkosten können variabel aufgeteilt werden

## Wie werden Schichten unterteilt?
* SLA (service level argeements)
* Rechte
* Interface

## Was sind die Aufgaben des Ressourcen Management?
* Messung der aktuellen Auslastung
* Vergleich mit den zur Verfügung stehenden Ressourcen
* Verteilung von Lasten auf die nicht ausgelasteten Bereiche

## Was bedeutet DRM?
* Distributed Ressource Management
* Steuerung über Policies, zeitabhängig, lastabhängig, ...
* Beispiel: VMware Cluster mit Automatismen

## Was sind die Aufgaben der neuen IT?
* Abbildung von ITIL auf den Betrieb
* Capacity Management (Prozessor, RAM, Netzwerk, Storage)
* Ressource Management (Skills, Deputies, Money, Space, Racks, Contractors)

## Was bedeutet DevOps?
* Kunstwort aus Development und Operations
* weder konkrete Technologie, noch konkreter Prozess
* Denkweise und Methodik zur Zusammenarbeit
* Verbindung von IT-Entwicklung und IT-Betrieb

## Was ist der Kerngedanke von DevOps?
* Integration aller an der Software Entwicklung, Einführung und Betrieb 
* Beteiligten: Nutzer, Entwickler, Tester, Administratoren

## Welche Tools werden für den DevOps Worklflow gebraucht?
* Code: Entwicklung , Reviews, CI
* Build: Versionskontrolle
* Test: Statische und Dynamische Analysen und Test
* Package: Package Manager, Auslieferung von Formaten
* Release: Change Management, Release-Automation-Tools
* Configure: Configuration oder System Management
* Monitor: Monitoring von Applikationen

## Was sind bekannte DevOps Tools?
* Docker (Bereitstellen und Verteilen von Software-Containern)
* Jenkins (Continuous Integration)
* Ansible (Configuration Management)
* Puppet (Infrastructure as Code)
* Vagrant (Virtualisierungsplattform)

## Was sind die Aufgaben eines SysAdmins?
* planen, installieren, konfigurieren und pflegen der Infrastruktur
* ausführen der zum täglichen Betrieb erforderlichen manuellen Tätigkeiten
* teilweise können sich die Aufgaben auf ein ganzes Team erstrecken

## Was sind Aufgaben, welche ein SysAdmin beherschen können sollte?
* Erstellen von Backups und deren Kontrolle
* Störungserkennung und Behebung
* Messung und Planung der Auslastung
* Einbau, Konfiguration, Test und Inbetriebnahme von diversen Komponenten
* Erstellen von Reports für die Organisation / GL
* Benutzerverwaltung und Support
* Softwareverteilung

## Was bezeichnet man als Kluft zum Unternehmen?
* IT-Umfeld wird immer breiter
* IT-Budget wird prozentual schrumpfen
* Technologieverständniss und Wissen steigt
* IT wird immer mehr unternehmerisch, nicht mehr nur Freaks
* IT näher am Betrieb
* IT viel weiter verbreitet

## Bei welchen Aufgaben kann ein System die Arbeit eine SysAdmins unterstützen?
* Leistungsoptimierung
* Arbeitsspeicherengpässe eliminieren
* Storage-Engpässe beseitigen
* Probleme der Netzwerkleistung lösen
* Zukünftige Risiken besser verwalten
* Effizienz verbessern

