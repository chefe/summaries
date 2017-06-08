# Netzwerk im Rechenzentrum

## Was erwarte ich von einem Netzwerk?
* Aus der Sicht eines gewöhnlichen Benutzers der neuen Firma
    * Dateiaustausch
    * EMail
    * Internet
    * Geschwindigkeit
    * Verfügbarkeit
* Aus der Sicht eines IT-Mitarbeiters
    * Stabilität
    * Performance
    * Benutzerfreundlichkeit
    * einfacher Aufbau
    * Wartbarkeit
    * Zugänglichkeit
* Aus der Sicht des IT-Administrators
    * Wartungsufwand
    * hohe Verfügbarkeit
    * Dokumentation
    * hochwertige Komponentent
    * Überwachung
* Aus der Sicht des CIO/CEO der Firma
    * Gerige Kosten
    * Keine Unterbrüche
    * Gesetztgebungen eingehalten
* Aus der Sicht des CSO (Chief Security Officers)/Auditor
    * Datenschutz
    * kein unbefugter Zugriff
    * Abhörbarkeit
    * Datensicherung
    * Schutz vor Zugriff von aussen

## Welche Ressourcen, Teile oder Dienst werden für den Aufbau eines Netzwerkes benötigt?
| Input                | Output                              |
|----------------------|-------------------------------------|
| Strom                | Betriebsfähigkeit der Firma         |
| Kabel                | Verbindung zweier Knoten            |
| Firewall             | Filterung des Verkehr               |
| Switch               | Verbindung zwischen Komponenten     |
| Backup-Server        | Kopien der Daten                    |
| Benutzerverwaltung   | Rückverfolgbarkeit                  |
| Dateiserver          | Teilen von Daten                    |
| PC                   | Arbeitsleistung                     |
| WLAN                 | Verbindung der Laptops zum Netzwerk |
| Redundanzen          | Verfügbarkeit                       |
| Überwachungssoftware | Metriken                            |
| Sicherheitskonzept   | erhöhte Sicherheit                  |
| Dokumentationen      | erleichterte Fehlersuche            |
| Gateway              | Verknüfung verschiedener Topologien |
| Clients              | Nutzung des Netzwerks               |
| Server               | Dienstleistung im Netzwerk          |

## Was braucht es alles für die Topologie?
* Provider
    * Angebot, Speed, Technik
* Grenze
    * Router, Firewall, IDP, Redundanz
* DMZ
    * Web-Services, Authentifizierung, Dienste
* Lokales Netzwerk (LAN)
    * Topologien, Speed, Trennungen, Services

## Was bedeutete IDP?
Intrusion Detection Protection

## Was sind die Geschwindigkeiten der Kabel?
* ADSL (Asymmetric Digital Subscriber Link, Uplink 10%) => 16Mbit/s
* VDSL (Very High Speed Digital Subscriber Line, Uplink 10%) => 100bit/s
* SDSL (Symmetric Digital Subscriber Line, Up=Down) => 200Mbit/s
* Antennenkabel => 500Mbit/s
* Glasfaser => 10Mbit/s - 10Gbit/s
* Richtfunk => 20Mbit/s

## Was gibt es für Grenzen?
* Router
    * oft in Firewall oder in Layer3-Switches integriert
    * Umsetzung von öffentlichen in private Adressen (NAT/PAT)
    * Aufrechterhaltung von QOS durch spezifische Weiterleitungen
    * Kann auch VPN-Endpunkt sein
    * Anpassung an unterschiedliche Netzwerktechniken
* Firewall
    * Sicherheitsbaustein,
    * Übernimmt meist auch Routing-Funktionen
    * Regelbasierte Sperrung oder Weiterleitung
    * VPN-Endpunkt mit Authentifizierung
* IDP
    * Intrusion Detection Systeme (IDS) und Intrusion Prevention Systeme (IPS)
    * Eindringversuche erkennen
    * Rechenintensive Funktion
* DMZ
    * Geschützter Bereich, in welchen bestimmte Zugriffe erlaubt werden
    * 1 oder 2 Firewalls
    * Bei 2 Schritten sollten verschiedene Firewalls verwendet werden
* Netzwerk
    * 1 Provider / 2 Zugänge
    * 2 Provider / je 1 Zugang
    * Ausfallüberwachung nötig
    * Getrennte Wege/Trasse
    * Loadbalancing möglich
    * TOR: Top Of Rack: jedes Rack hat eigene Switches
    * EOR: End Of Row: Racks nur über Patchpanels verbunden

## Wie werden die verschiedenene LAN-Ebenen genannt?
* Peering / Peripherie (Anschluss nach aussen)
* Backbone / Spine / Core (Rückgrat, zentrales Netz)
* Leaf (Anschlüsse für Server)

## Wie werden die verschiedenene Funktionsstufen genannt?
* Core (Zentrale Verbindungen, auch RZ zu RZ)
* Aggregation (Direkte Verbindungen von Serverfarmen)
* Access (Zugangspunkt für physikalische Server und Komponenten)

## Was bedeutete MPLS, QOS & COS?
* MPLS
    * Multiprotocol Label Switching
    * VPN-ähnliche Strukturen zur Verbindung von zusammengehörigen Netzwerken
    * Paketvermittlung durch den Provider
* QOS
    * quality of service
    * Latenz, Jitter, Verlust, Durchsatz
* COS
    * class of service
    * Reservierte Bandbreiten

## Was bedeutete SDN?
* Software Defined Networking
* Zwei Ebenen (Control-Plane, Data-Plane)
    * Control-Plane ist Management Netzwerk
    * Data-Plane ist das Austauschnetzwerk
* Netzwerke werden via Management SW erstellt
* Netze sind virtuell, sie werden auf einem Trägernetzwerk mit speziellen Protokollen konfiguriert und verbunden

## Was versteht man unter SDN?
* Auftrennung der Kontroll- un der Datenebene
* Software kontrolliert die logischen Verbindungen
* HW übernimmte den technischen Transport

## Was bedeutet SDS?
* Software Defined Storage
* wir sehen keine Disks mehr, nur gemäss SLA definierte LUN's (logical unit numbers)
* fremdverwaltet, können überall liegen
* System kann den Speicherort selber dynamisch gestalten

## Was ist ein VLAN?
* Virtual LAN
* Bildung von getrennten Netzen auf gemeinsamer Hardware
* Tagged (VLAN id im frame header) oder Untagged (getrennte switches)
* Trunks (mehrere VLANS verbinden, über swichtes hinweg)
* Access Port (normal 1 VLAN, 1 port an einem switch)

## Wie heissen die folgenden Technikbegriffe?
* DNS: Domain Name System
* IPAM: IP Address Management
* DHCP: Dynamic Host Configuration Protocol
* NAP: network access protection
* NAC: network access control

## Was ist Netzwerkmanagement?
* Verwaltung und Überwachung von Netzwerken
* OAMP: Operation, Administration, Maintenance, Provisioning
* FCAPS: Fault, Config, Accounting, Performance, Security Mgmt

## Was versteht mann unter Systemmanagement?
Monitoring aller Betriebsparameter und der Konfiguration

## Was ist das Management Netzwerk?
* Vom restlichen Netzwerk getrenntes LAN
* welches nur für das Management benutzt wird
* Beschränkter Zugriff (Stationen und Benutzer)
* Oft nur via Jump-Host mit starkem Logging erreichbar

## Wie sieht die Kostenverteilung in einem Rechenzentrum aus?
* 51% - Server (Einkauf, Betrieb, ...)
* 19% - Power Distribution & Cooling (Stromnetz, Filter, Kühlung, ...)
* 15% - Power (Batterien, USV, ...)
* 11% - Network Equipment (Switches, Router, Kabel, ...)
* 04% - Other Infrastructure
