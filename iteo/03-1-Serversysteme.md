# Serversysteme

## Was ist ein Server?
* aus dem lateinischen servus (Diener)
* grundsätzlich dasselbe wie ein Desktop-Computer
* hat aber in mehreren Punkten Vorteile
* Mehrere Prozessoren und schnellere Arbeitsspeicheroptionen
* Festplatteneinschübe für mehr Datenkapazität und Redundanz
* Spezielle Netzwerkkarten (TCP-Offload) und mehr Slots

## Welche Ausprägung von Verwendungsformen gibt es bei Server?
* Towergehäuse
    * ältere Serverräume
    * kleinere Anlagen in Räumen ohne Rack
* 19-Zoll Rackmount
    * Rack optimiert
    * 1 HE = 1 U = 1.75 Zoll = 4.45 cm
    * Ausziehbar Verkabelung auf Rückseite, Schwenkarm für Kabel)
    * Luftführung vorne nach hinten
    * Hohe Packungsdichte (hohe Belastung, Gewicht)
* Rackmount Server
    * 1U für hohe Dichte (nur 1-2 Slots, Ausbau begrenzt)
    * 2U für Standwardanwendungen (2-8 Slots, Liestungsstarke Prozessoren)
    * 3-6U für High Performance Rechner (Viele Slots, bis 48 Festplatten)
* Blade Server
    * Höchste Dichte
    * Zentralisierte Komponenten (Power, Switches, ...)
    * Hot-Swap von ganzen Servern
    * Flexibler Ausbau mit Switches
    * Alle Komponenten redundant und Hot-Swap
* Spezialserver
    * Dedizierter Server mit fixen Aufgaben
    * Firewall / IDP / Web-Filter / Storage (NAS) / ...
    * Einfache Konfig (USB oder Web)
    * Ersatz sehr einfach (Konfig kopieren)
    * Oft futuristische Gehäuse
    * Platz für Entwicklungen und Nischenprodukte

## Auf was wird bei der Bauweise eines Servers geachtet?
* Modulare Bauweise
* Hot-Swap Möglichkeiten
* Redundanzen

## Wie lassen sich die Server nach Einsatzzweck unterscheiden?
* Einfache Dienste
    * Kleinere Leistung, wenig Memory, lokale Disks, Webserver, Firewall, ...
* Virtualisierungs-Plattform
    * Hohe Prozessorleistung, viel Arbeitsspeicher,  Zentrale Disks, SAN
* HPC High Performance Computing
    * Höchste Prozessordichte, Sehr viel Speicher
* Standalone DB Server
    * InMemory DB Server (mehrere TB RAM)

## Wo können überall Ausbauten vorgenommen werden?
* HDs (Local storage, Diskless, SAN, SD-Card-Boot)
* Steckplätze für Erweiterungskarten (Netzwerk, Fibre-Channel, ...)
* RAM (OnBorad, InterLeave, Raiser-Cards)
* CPU (Anzahl Cores, Taktrate, Cache)

## Welche Faktoren bestimmen die Leistung eines Server?
* CPU (Anzahl, Cores, Takt, Cache)
* Arbeitsspeicher
* Schnittstellen
* Slots
* Redundanz (Netzteile, Lüfter, Datenpfade, ...)

