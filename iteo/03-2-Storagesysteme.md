# Storagesysteme im Rechenzentrum

## Was ist Storage?
* Nicht flüchtiger Bereich zur Ablage von Daten
    * Kurzfristig als Cache
    * Mittelfristig als aktive Daten (Files, DBs, ...)
    * Langfristig für Achivierung
* Integriertes oder eigenständiges Gerät
    * Lokale Festplatte, DVD, ...
    * NAS, Disk-Subsystem, Enterprise-Storage
* Primär Storage: online, hoch verfügbar, direkt erreichbar
* Sekundär: near line, langsamer, offline, Wechselmedien
* Archiv: offline, nicht mehr aktive Daten, ausgelagert

## Welche 2 Speichermedien wurden früher hauptsächlich genutzt?
* Magnetkernspeicher
* Trommelspeicher

## Welche Speichermedien werden heute unterschieden?
* HD
    * Magnetische Aufzeichnung, erschütterungsempfindlich
    * Rotierende Teile, Verschleiss, Energieverbrauch relativ hoch
* SSD
    * Elektronische Speicherung, begrenzte Schreibzyklen
    * lage- und erschütterungsunempfindlich
    * Sehr schnell, geringer Stromverbrauch
* TAPE
    * Höchste Speicherdichte, langsam, Abrieb an Leseköpfen
* CD/DVD/BlueRay
    * Kleine Dateneinheiten, kein Stromverbrauch

## Wie können Daten permanent gelöscht werden?
* Mechanische Zerstörung (schreddern)
* Erhitzen (Curie-Temperatur)
* Verbrennen
* Entmagnetisieren (Degausser)

## Welche Festplattenanschlüsse werden unterschieden?
* IDE / ATA
    * Paralleles Kabel, kurze Strecken, 2 Geräte pro Bus, ca. 10 MB/s
* SATA
    * Serial ATA, HotPlug möglich,
* SCSI
    * Paralleler Bus, bis 15 Geräte, 8-32 Bit breit
* SAS
    * Serial attached SCSI, bis 10 m, 2 * 6 Mbit/s
* FC
    * Meist Glasfaserinterface, Geräteintern auch Kupfer
    * Schnelle und mächtige serielle SCSI Schnittstelle
    * FC-Netzwerke mit eigenen Switches, Glas, sehr lange Distanzen
* M.2
    * Neustes Interface im SSD Bereich
    * Basiert auf PCI-Express

## Welche Raid-Levels gibt es?
* JBOD (Just a bunch of disks)
* RAID 0 (Verbund)
* RAID 1 (gespiegelt)
* RAID 10 (Raid 0 + 1)
* RAID 5 (min 3. Platten, mit Parity)
* RAID 6 (Raid 5 + eine zusätzliche Parity disk, es können zwei ausfallen)

## Welche Bauformen werden bei Storagesysteme unterschieden?
* Disk Subsystem
    * Lokale Speichererweiterung für Server
    * Direkt an Diskkontroller angehängt
* NAS
    * Speicher wird via Netzwerk verteilt
    * Zugriff via Webinterface, SMB, ...
* Storage Server
    * Spezialisertes OS für Speicherverwaltung
    * Anbindung via Netzwerk
* Storage Arrays
    * Anschluss via SAS, FC, FCoE
    * Interne Intelligenz zur Blockverwaltung
    * Zentrale, redundante Controller mit X Diskshelfs

## Welche Enterprise Array Technologien gibt es?
* Conventional
    * Disks werden zu Arrays mit RAID-Level zusammengestellt
    * Bereitstellung von Luns aus Teilen von physikalischen Arrays
* Compellent
    * Disks werden zusammengefasst und als Block-Array verwaltet
    * Zusammenstellung der virtuellen Disks (LUN) via lokale Intelligenz
    * Blöcke über das gesamte Array verstreut
    * RAID Level innerhalb der Auswahl gewährleistet

## Welche Funktionen bieten Storage Systeme?
* HotSpare Disks
    * Als Reserve eingebaute Disks welche im Fehlerfall ausgefallene Disks ersetzen, z.T. schon vor Komplettausfall
* Replikation
    * Im Controller eines Arrays/Storage integriert
    * Autonome Funktion, meist Lizenzgebunden (Diskgrösse)
    * Synchron oder Asynchron möglich
* SnapShot
    * Der aktuelle Zustand wird eingefroren und weitere Änderungen
separat verwaltet, mehrere Stufen, sehr schnelles zurückstellen
    * Möglichkeit zum Kopieren von Daten bei komplettem SnapShot
* AutoService
    * Grosse Arrays sind oft mit speziellem SLA verbunden
    * Array ruft selbstständig um technische Hilfe

## Was für Ausbaumöglichkeiten gibt es bei einem Storage System?
* Speichererweiterung on the fly
    * HotPlug Disks, dynamische Arrays, ...
* Speichererweiterung mit neuer Technologie
    * SAS/FC zu SSD: migrieren auf schnelleren Speicher während Betrieb
* Einbau von Cache
    * Grosse Arrays haben z.T. noch grosse RAM-Speicher als Cache
* Mehr Shelfs / Controller

## Welche Faktoren bestimmen die Leistung eines Storage-Geräts?
* Anzahl (Festplatten, Controller, Interface)
* Schnittstellen
* Anzahl Zugriffe pro Sekunde

