## Was ist das Ziel von Internetworking?
* Benutzer in verschiedenen Netzen können miteinander kommunizieren
* Datenaustausch über Netzgrenzen hinweg
* Optimale Architektur in Teilnetzwerken verwenden

## Womit werden Netzwerke auf verschiedenen Schichten miteinander verbunden?
* Anwendungsschicht: Applikations-Gateways
* Transportschicht: Transport-Gateways
* Vermittlungsschicht: Router
* Sicherungsschicht
    * Bridge: verbindet Netzwerke; weiss, welche MAC-Adresse zu welcher Seite gehören
        * transparente Bridge: verbindet zwei lokale Netzwerke mit gleichem Layer-2-Protokoll
        * übersetzende Bridge: verbindet zwei lokale Netzwerke mit unterschiedlichem Layer-2-Protokoll
        * Remote-Bridge (Tunnel): schliesst weit entfernte LANs über ein WAN zusammen
    * Switch: "intelligentes" Hub, schickt Pakete nur an Zielhost weiter
* Bitübertragungsschicht
    * Repeater: Regeneriert das Signal auf der Leitung
    * Hub: Sternförmige Verkabelung der Busteilnehmer (simuliert gemeinsames Ethernetkabel)
* Alle Schichten
    * Gateway

## Wie werden die verschiedenen Teilnetze des Internets zusammengeschaltet?
durch verschiedenste Komponenten und Protokolle

## Was enhält der IPv4 Header?
Verison, Type of service, Identification, TTL, Protocol Type, checksum, source, destination

## Was passiert mit grossen IP-Paketen?
sie werden in kleinere Pakete aufgeteilt und beim Empfängwe wieder zusammengesetzt

## Welches sind die privaten IPv4 Bereiche?
* 192.168.x.x
* 10.x.x.x
* 172.16.x.x–172.31.x.x

## Was ist ein Internet-Steuerprotokoll?
Ein Protokoll, das parallel zu IP auf der Vermittlungsschicht angesiedelt ist. Beispiele:

* ICMP: Internet Control Messag Protocol (für Roter, ping)
* ARP: Address Resolution Protocol (Auflösung von MAC- zu IP-Adresse)
* DHCP: Dynamic Host Configuratoin Protocol (Vergabe dynamischer IP-Adressen)

