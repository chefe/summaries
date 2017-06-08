# Firewallkonzept

## Was ist ein Firewallkonzept?
* umfasst eine Gruppen von Netzwekkomponenten
* an den Schnittstellen zweier Netze
* und Regeln zur Kommunikation über diese Schnittstellen

## Für was ist eine Firewallkonzept?
* gewährleistung der Sichrheitsrichtlinien 
* zwischen Netzen unterschiedlicher Sicherheitsstufen

## Was ist wichtig bei einem Firewallkonzept?
* muss auf Sicherheitsrichtlinien aufsetzen
* muss korrekt implementiert und konfiguriert werden
* muss korrekt administriert werden

## Was sind diw wichtigen Punkte bei einem Firewallkonzept?
* Sicherheitsrichtlinie notwendig
* je weniger Zugriffe desto sicherer
* effizient dank Zentralisierung
* der gesamte Datenverkehr muss über diese Station laufen
* die Firewall selber muss resisten gegen Eindringlinge sein

## Was ist der Kreislauf der Siherheits-Politik?
* Analyse
* Anpassung / Konfiguration
* Überwachung

## Was sind die Sicherheitsanforderungen an ein solches Konzept?
* Zugangskontrolle
* Verbergen der internen Netzstruktur
* Schutz gegen Angriffe auf Verfügbarkeit

## Was sind die Allgemeinen Anforderungen bei einem Firewallkonzept?
* Minimalsystem (gehärtetes System)
* Integritätstests
* wenige und einfache Schnittstellen 
* Deny All
* Sicherheitsprüfungen

## Wie unterscheiden sich die verschiedenen Firewall Generationen?
* Firewall der 1. Generation
    * Nur 1 Paketfilter
    * Filterregeln pro Interface
    * Nur statisches Routing
    * Drops protokollieren
* Firewall der 2. Generation
    * Circuit-Level-Proxies
    * generischer Proxy-Server für TCP und UDP
    * keine Möglichkeit protokollspezifischer Regeln
    * kommt zum Einsatz wenn es keine Application-Level-Proxies gibt
    * wird UDP-Relay ider TCP-Relay genannt
* Firewall der 3. Generation
    * Application-Level-Proxies
    * Proxy-Prozess für ein spezielles Protokoll
    * für jedes Protokoll ein Proxy-Prozess nötig
    * sehr wirkungsvoll wegen inhaltsabhängige Regeln
* Firewall der 4. Generation
    * Dynamische Paketfilter
    * "Stateful Inspection"
    * Zustand der Verbindung in Filterung einbeziehen
    * komplexe Implementation

## Was ist genau ein Proxy?
* heisst Bevollmächtigter
* handelt nach innen oder aussen für einen Client
* kann auch Nutzdaten und Headers in Analyse einbeziehen
* notwendig für inhaltsbezogene Filterung
* nicht für jede Applikation verfügbar

## Wie können Circuit-Level-Proxies für verschiedene Clients Verbindungen zu unterschiedlichen Zielen im Internet herstellen?
Die ausgehenden Ports werden auf dem Proxy gespeichert, 
so können die Pakete wieder dem richtigen Absender zugeordnet werden

## Was bieten Gateways?
* Umfangreiche Protokollierung möglich
* Benutzerauthentifizierung möglich
* Direkte Verbindungen werden unterbunden
* Proxy-Dienste stellen Verbindungen her
* alles andere ist verboten

## Wie unterscheiden sich die Abhängigkeiten von Gateways?
* Application-Level-Proxy (höchste Abhängigkeit)
* Zustandsabhängiger Paketfilter
* Circuit-Level-Proxy
* Dynamischer Paketfilter
* Paketfilter (geringste Abhängigkeit)

## Was für Varianten gibt es für das Konfigurationsmanagement?
* Turnschuh-Schnittstelle
    * Konfiguration über Konsolenverbindung
* Dediziertes Management-Netz
    * Erfordert bauliche Massnahmen
    * Physikalisch getrenntes Netzt
    * Keine Adminnistration über andere Interfaces
    * Daten werden weniger Risiken ausgesetzt
* Konfiguration über das produktive Netz
    * z.B über HTTPS oder SSH
    * eingeschränkt auf bestimmte Interfaces oder Adressen

## Was bedeuten IDS und IPS?
* IDS: Intrusion Detection System
* IPS: Intrusion Prevention System

## Wie funktionierz ein IDS?
* Anomalie-Erkennung
    * Normales Bentzerverhalten
    * Protokolldaten
* Signatur-Analyse
    * Protokolldaten
    * Angrifssignaturen

## Welche 2 Konzepte gibt es für IDS?
* host-based (HIDS)
* network-based (NIDS)

