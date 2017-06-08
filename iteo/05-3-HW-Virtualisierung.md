# HW Virtualisierung

## Was gibt es für Virtualisierungsbereiche?
* Server
* Speicher
* Applikationen
* Desktops
* Netzwerke (LAN, SAN)

## Was gibt es für Server Virtualisierungsarten?
* HW Partitionierung (nur bei sehr grossen Servern)
* HW Virtualisierung (Hypervisor)
* OS Virtualisierung (populär und leichtgewichtig)

## Was sind Gründe für eine HW Virtualisierung?
* Ressourcen Optimierung
* Konsolidierung (Sicherung der Hardware)
* Maximierung der Uptime
* Schutz der Applikation von Serverausfällen
* Einfache Migration, wenn Anforderungen wechseln
* Schutz der Investitionen in existierende Systeme

## Was ist eine Emulation?
* bezeichnet ein System, das ein anderes in bestimmten Teilaspekten nachbildet
* Das nachgebildete System erhält die gleichen Daten, führt vergleichbare Programme aus und erzielt die möglichst gleichen Ergebnisse in Bezug auf bestimmte Fragestellungen wie das zu emulierende System
* das komplette System lässt sich nicht vollständig als matematisches Modell realisieren

## Was ist eine Simulation?
* Simulation imitiert die Operationen eines real-world Prozesses oder Systems über die Zeit. Der Simulationsvorgang verlangt als erstes die Entwicklung eines Modells. Dieses Modell muss die Schlüssel- Charakteristika (Verhalten/Funktionen) des ausgesuchten abstrakten oder physikalischen Systems resp. des Prozesses repräsentieren. Das Modell repräsentiert das System selber während die Simulation die Operationen über die Zeit repräsentieren.
* Eine Computer Simulation ist ein Simulationsprogramm das auf einem einzelnen Computer oder einem Netzwerk von Computern läuft um das Verhalten eines Systems zu reproduzieren. Die Simulation verwendet ein abstraktes Modell (ein Computer Modell oder ein Rechenmodell) um das System zu simulieren.
* komplettes System lässti sich als mathematisches Model realisieren

## Was bedeutet der Begriff Virtualisation?
* Virtualität ist die Eigenschaft einer Sache, nicht in der Form zu existieren, in der sie zu existieren scheint, aber in ihrem Wesen oder ihrer Wirkung einer in dieser Form existierenden Sache zu gleichen.
* Virtualisierung in Computing, bezieht sich auf den Vorgang der Erstellung einer virtuellen (und nicht tatsächlichen) Version von etwas wie zB. virtuelle Computer-Hardware-Plattform, Betriebssystem (OS), Speichergerät oder Computer-Netzwerk-Ressourcen.

## Was ist ein VMM?
* virtual machine monitor
* auch Hypervisor genannt

## Was sind die Herausforderungen beim Betrieb einer VMM?
* Applikationen wissen nicht, dass eine VMM existiert
* isolieren des SW Stack gegenüber den anderen Gästen
* Schutz der VMs untereinander
* Interface zu Hardware und Guest OS

## Was sind die formalen Anforderungen an einen Hypervisor?
* Gleichheit
    * Muss sich gleich verhalten wie auf der originalen Maschine
* Effektivität
    * Wenn möglich immer Instruktionen direkt af Prozessor ausführen
    * möglich wenig Instruktionen auf auf virtuellem Prozessor
    * harmlose Instruktionen werden direkt von der Hardware ausgeführt
* Ressourcenkontrolle
    * VMM hat komplette Kontrolle über Ressourcen
    * VMM hat keine Kontrolle über Prozessaktivitäten
    * Programme können die Sytemressourcen nicht beeinflussen

## Aus welchen 3 Teilen besteht ein VMM?
* **Dispatcher** dessen Initial Instruction am Speicherplatz liegt wohin die HW trapped
* **Allocator** der entscheidet wer welche Systemressourcen bekommt
* **Interpreter** für alle Instruktionen die trappen, eine Interpreter Routine pro privilegierte Instruktion

## Wie werden Instruktionen klassifiziert?
* Privilegierte Instruktionen
    * Trap wenn Prozessor im User Modus
    * kein Trap falls im System Modus
    * Kontrollkritische Instruktionen (control sensitive)
        * versuchen die Konfigurationen von Systemressourcen zu verändern
    * Verhaltenskritische Instruktionen (instruction sensitive)
        * Verhalten oder Resultat abhängig von der Konfiguration der Ressourcen
* Harmlose Instruktionen
    * nicht sensitive Instruktionen

## Wie funktioniert ein Trap?
* Wenn die Instruktion trapped wird das Memory nicht verändert, außer die Memory Stelle E(0) in welche das aktuelle PSW (vor dem Trap der Instruktion) geschrieben wird.
* Ein Trap speichert den momentanen Status der Maschine in E(0) und übergibt die Kontrolle einer Routine die "ihre" Werte aus der Memory Stelle E(1) liest

## Was sind die Vorteile der Virtualisierung?
* Workload Isolation
    * Aufteilung in kleinere Systeme
* Workload Consolidation
    * Zusammenfassung mehrer Systeme auf einer Hardware (Hardwareausnützung)
* Workload Migration
    * Wechsel eines Systems von einem Host auf einen anderen
* Workload Embedding
    * gleiche Applikationen auf gleichem System laufen lassen
    * gleichen Kernel oder Ressourcen nützen
    * gut möglich bei gleichem Betriebsystem

## Welche Hypervisor-Arten gibt es?
* Direct Execution
* Binary Translation
* para Virtualization
* full Virtualization

## Was sind die Probleme bei einem Hypervisor?
* Probleme
    * Mehrere Betriebssysteme gleichzeitig auf einem physikalischen Server
    * BS sind konstruiert dass sie die Zugriffe auf die Betriebsmittel regeln
    * Betriebssystem kann nicht abgeändert werden
* Lösungen
    * Hypervisor verwaltet die Betriebsmittel
    * Betriebssystem ist isoliert
    * Betriebssystem erfährt keine Änderung (ausser bei Paravirtualisierung)

## Welche 2 Hypervisor-Typen gibt es?
* Typ 1 Hypervisor
    * Direkt auf der HW installiert
    * Beispiele: VMware ESXi, XEN, Hyper-V
* Typ 2 Hypervisor
    * Installiert auf einem Host Betriebssystem
    * Beispiele: VMware Workstation, KVM

## Was versteht man unter der Hypervisor-Art Direct Execution?
* x86 kennen 4 Levels von Privilegien
* User Level Programme laufen nicht privilegiert (Ring 3)
* das OS braucht HW Zugriff (Ring 0)
* eine Virtualisierungsschicht muss unter Ring 0 gelegt werden!
* oder es braucht eine Schnittstelle vom Hypervisor mit speziellem Befehlssatz
 
### Was sind Sicherheitsringe?
* CPUs hat die Möglichkeit sicherzustellen, dass die Instruktion auch das entsprechende Privileg hat
* CPL (current privilege level)
* 2bit = 4 Privilegien = 4 Sicherheitsringe

## Full Virtualization mit Binary Translation
* Kombination zwischen direkter Ausführung und binary translation
* User Level Code wird direkt ausgeführt
* kontrollkritischer Code wird übersetzt und im Cache abgelegt
* Übersetzter Kernel Code ersetzt nun nicht virtualisierbare Instruktionen
* Keine HW Unterstützung nötig
* Gast OS ist voll abstrahiert, hat keine Ahnung dass es in einer VM läuft

## OS Unterstützte (Para) Virtualisierung
* bezieht sich auf Kommunikation um die Geschwindigkeit zu erhöhen
* Kernel vom OS muss modifiziert
* ersetzen von nicht virtualisierbare Instruktionen mit Hypercalls
* Der Hypervisor stellt Hypercall Interfaces zur Verfügung
* Keine unmodifizierte Gast OS

## Was sind die Unterschiede zu Binary Translation?
* Paravirtualisierung ist nicht so verschieden von Binary Translation
* BT übersetzt kritischen in harmlosen Code
* Paravirtualisierung macht dasselbe aber im Source Code
* Änderungen im Source Code erlaubt grössere Flexibilität
* braucht keine Laufzeit-Übersetzung und wird daher schneller ausgeführt

## HW unterstützte Virtualisierung
* Neuer CPU Modus eingeführt
* Erlaubt Ausführung unterhalb Ring 0
* Privilegierte und sensitive Calls trapen automatisch zum Hypervisor
* der Gast Status wird in virtual machine control structures abgespeichert

## Welche Möglichkeiten gibt es Memory zu sparen?
* Page Sharing
    * in homogenen Gast Systemen finden sich viele identische Pages
* Page Patching
    * fast gleiche Pages gibt es sehr viele
* Page Compression
    * viele Pages die in naher Zukunft nicht verwendet werden
* Balloning
    * wenn das Memory vom Gast OS knapp wird

