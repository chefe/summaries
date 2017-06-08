# Filesysteme

## Wie funktioniert ein Buffer Cache?
* bringt den Kern der Blöcke in den Hauptspeicher
* ändert diesen nach Bedarf
* macht danach eine Anfrage diese File im System zu speichern
* um Antwortzeiten zu verkleinern, verkleinert er Zugriffszeiten
* Blöcke werden im Memory abgelegt und eine Zeit lang verwaltet
* Blockzugriff stark beschleunigt bei mehrfacher Verwendung
* Datentranfser passiert über DMA (direct memory access)

## Was für 3 Listen werden für einen Buffer Cache gebraucht?
* Freie Liste
    * Listet alle freien Plätze vom Cache auf
* Device Liste
    * Listet alle Buffer die momentan mit einem FS verknüpf sind
* Driver I/O Queue
    * Listet Buffer auf die bei einem bestimmten Devices  mit I/O interagieren

## Wie funktioniert ein Buffer Cache?
* enthalten Daten von kürzlich verwendeten Blcöken
* wenn der Kern Daten lesen möchte versucht er es immer zuerst vom Cache
* falls die Daten im Cache sind braucht er sie nicht von der Disk zu lesen
* falls die Daten nicht im Cache sind, wernden sie geladen und im Cache abgelegt

## Was bedeutet VFS?
Virtual File System

## Was ist das Unix Virtual File System?
* universelles FS interface
* FS calls im POSIX Format
* Vorraussetzungen
    * symbolischen und einzigartiger Namen
    * hat einen Besitzer und ist geschützt
* für jedes spezifische FS wird ein mapping Modul bereitgestellt

## Wie sind die Blöcke um eine File zu lesen?
* suche nach einem Superblock
* findet root Verzeichnes und Pfad über iNode
* kopiert iNode in vNode (RAM)
* vNode enthält Pointer auf Funktionstabelle
* Erstellt für den Prozess einen File Deskriptor
* User Process greift über File Deskriptor und vNode auf das File zu

## Was sind die Anforderungen an ein modernes Filesysstem?
* grosse Adressierbarkeit
* Volume Manager eingebaut
* umfangreiche Funktionalitäten
* immer konsistent und integer
* kein fsck mehr nötig nach Absturz
* kann mit silent corruption umgehen

## Was gibt es für verschiedene Arten 2 Volumen zu benutzen?
* normal
* volume concat (lower and upper)
* volume stripe (even and odd)
* volume mirror (left and right)

## Wie funktionert ein Merkle Tree?
* Jeder innere Knoten besitzt Hash von seinen Kind Knoten
* Hash 0-0 und 0-1 sind die Hashes für Data Blocks 0 und 1
* Hash 0 ist der Hash der Verkettung der Hashes 0-0 und 0-1
* Verifikation eines Knotens in Zeit: Olog(n)
* Merkle Signatur Schema braucht nur ein public Key für 2^n Knoten Signaturen

## Was ist DVA?
* data virual address
* kann bis auf 3 verschieden Blöcke zeigen
    * DVA für Daten
    * DVAs für File System Meta Data
    * DVAs für global Metadata über alle File System Instanzen im Pool

## Wie kann die Konsistenz von Daten sichergestellt werden?
* fsck angewendet kann von einigen Minuten bis zu 72 Stunden
* wir möchten jederzeit wissen, wenn Daten korrupt sind
* welche Verfahren werden angewant
    * CoW => Copy on Write
    * RoW => Redirect on Write

## Was ist bei Snapshots zu beachten?
* meistens sehr einfach zu erstellen
* alte Datenblöcke werden weiterhin von altem Snapshot referenziert
* eignen sich gut um Daten wiederherzustellen
* Snapshots sind keine Backups!

## Was versteht man unter Striping?
* Verteilen der Daten auf mehrere Disks
* dabei wird meistens mindestens eine Disk für Parity gebraucht
* die Parity sollte abwechslungsweise auf allen Disks vorkommen

## Was sind die EIgenschaften von RAID Z?
* Variable Block Size 512B – 128K
* Single und Double Parity
* Detektiert Silent Data Corruption
* Verträgt den Ausfall bis zu 2 Disks

