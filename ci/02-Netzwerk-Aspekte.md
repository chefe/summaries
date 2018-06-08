# Netzwerk-Aspekte

## Welche VPN Szenarien gibt es?
* Remote-Access VPN
    * Zugriff eines Clients auf ein Netzwerk
* Site-to-site VPN
    * Verbindung zweier Netzwerke über einen verschlüsselten Tunnel
    * Verbindung von Router/Firewall zu Router/Firewall
    * Feste Endpunkte (fixe IP)

## Welche VPN Technologien gibt es?
* PPTP (Point-to-Point-Tunneling Protokoll)
    * basierend auf PPP-Protokoll
    * Veraltet und unsicher
* L2TP (Layer 2 Tunneling Protokoll)
    * veraltet und unsicher
* SSL-VPN
    * wird breit eingesetzt für Clientzugriff
    * einfache Konfiguration des Clients
    * nur Port 443 wird benötigt
* IPSec-VPN
    * ursprünglich für IPv6 entwickelt, Portierung auf IPv4
    * für Site-to-Site VPN und Remote Access VPN geeignet
    * wichtigstes VPN Protokoll heute

## Was sind die Eigenschaften des IPSec Headers?
* IPv6 unterstützt das Konzept von Header Extensions
    * IPSec wurde auf IPV4 zurückportiert
    * bei IPv4 werden die IPSec Header zwischen dem IP-Header und dem TCP/UDP-Header eingefügt
* IPSec kann den AH und/oder ESP Header verwenden
    * AH: Authentication Header (die Authentizität des Datenursprungs ist sichergestellt)
    * ESP: Encapsulating Security Payload (die Daten sind verschlüsselt)
* Header enthalten eine Sequenz-Nummer und einen Index auf eine SA (Security Association)
* das Datenpaket wird mit einem Hashwert ergänzt (Integrität)

## Was ist eine Security Association (SA)?
* jedes IPSec Endgerät kann beliebig viele SA speichern
* eine SA ist eine Datenstruktur mit folgenden Informationen (unvollständig)
    * Authentifikationsverfahren: Modi und Schlüssel falls AH verwendet wird
    * Verschlüsselungsverfahren: Modi und Schlüssel falls ESP verwendet wird
    * Lebensdauer der SA und der Schlüssel
    * IP-Adresse der Endsysteme (ev. Netzwerk)
* beim Verbindungsaufbau wird die SA aufgebaut
    * dazu wird das Protokoll ISAKMP verwendet

## Was bedeutet die Abkürzung ISAKMP?
Internet Security Association Key Management Protocol

## Wie sind die zwei Phasen des ISAKMP Protokoll aufgebaut?
* Phase 1
    * Aushandlung des gemeinsamen Schlüssels mit einem erweiterten Diffie-Hellman-Verfahren
    * Aushandlung der Verschlüsselungs- und Hash-Protokolle
	* im Main-Mode (langsamer)
		* Partner einigen sich auf die verwendeten Krypto-Protokolle für die Phase 2
    * im Aggressiv-Mode
		* verlangt der Initiator ein bestimmtes Set von Protokollen
    * Authentisierung der Partner (Pre shared Key, Digitale Signatur, RSA oder EL-Gamal)
* Phase 2
    * die SA wird aufgebaut
	* die weiteren Parameter für die IPSec-Verschlüsselung und den Tunnel werden ausgetauscht

## Welche zwei Modi werden bei IPSec unterschieden?
* Tunnel-Modus (heute Standard)
* Transport-Modus (nur Host-Host-Verbindungen sind möglich)

## In welche zwei Kategorien lassen WAN-Technologien einteilen?
* Internet-basiert
	* Zugriffe über Applikationen (RDP, Citrix), SSL VPN, Site-to-Site VPN
* nicht Internet-basiert
	* Dark fiber, LAN-Interconnect Service, Private Line, Business VPN, Richtfunk

## Wie heissen mögliche Beurteilungs-Kriterien für WAN-Verbindungen?
* Geschwindigkeit (Up, Down, Garantierung)
* Zuverlässigkeit (SLA, Support)
* Kosten
* Redundanz
* Konfiguration und Management
* Provider (Reputation, Standort, Örtliche Aspekte)
* Sicherheit

## Was sind die Probleme von Hardware Netzwerken?
* verschiedenste Geräte (Devices, Switches, Routers, Firewalls, Patch-Panels, ...)
* Netzwerke sind statisch
* Veränderungen unterliegen einem Change Management
* Management ist komplex und proprietär
* Unterschiedliche Anbieter auf den verschiedenen Layers

## Was sind die Eigenschaften von Software Defined Networks?
* Eigenschaften des Netzwerkes können dynamisch angepasst werden
* Entkopplung von Data Plane und Control Plane
* Anforderungen von Protokollen (QS) und Applikationen können dynamisch angepasst werden
* Höhere Bandbreiten können erreicht werden

