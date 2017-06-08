# Paralelle Architekturen

## Was ist ein SMP?
* Symmetrische Multiprozessoren
* Zwei oder mehr gleichartige Prozessoren mit vergleichbaren Möglichkeiten
* Prozessoren teilen sich das gleiche main Memory
* sind über einen Bus oder andere interne Verbindungen zusammengeschaltet
* Prozessoren teilen sich die I/O Devices
* alle Prozessoren können die gleichen Funktionen ausführen
* das System wird durch ein integriertes OS kontrolliert

## Was sind die Vorteile von SMP?
* mehreren Prozessoren führt zu einer grösseren Performance, wenn die Arbeit parallelisiert wird
* Hersteller können unterschiedliche Produkte mit verschiedenen Preisen und Leistungen anbieten
* Der Ausfall eines Prozessors führt nicht zum Stillstand des ganzen Rechners
* Zusätzliche Prozessoren können dazugefügt werden um die Performance zu erhöhen

## Was ist ein Multicore Computer?
* Besser bekannt als Chip Multiprozessor
* Kombiniert 2 oder mehr Prozessoren (Cores) auf einem Die
* Jeder Core beinhaltet alle Komponenten von einem unabhängigen Prozessor
* Zusätzlich beinhalten multicore Chips L2 Cache und unter Umständen sogar L3 Caches

# Wie ist ein Intel Core i7 aufgebaut?
* L1 direkt beim Core
* L2 neben dem Core
* 1x L3 für alle Cores

## Was bedeutete UMA?
* unified memory architecture
* Alle Prozessoren haben direkten Zugriff auf alle Speicherstellen
* einfacher und schneller Kommunikationsmechanismus
* Private-Memory: mehrere lokale Addressräume

## Was bedeutete NUMA?
* none unified memory architecture
* meistens werden 2 oder mehr SMPs physikalisch verbunden
* Shared-Memory: ein globaler linearer Addressraum
* Nicht alle Prozessoren haben die gleiche Zugriffszeit
* Ein SMP kann direkt auf das Memory der anderen SMPs zugreifen
* Memory Zugriff auf remote Memory ist langsamer
* Wenn Cache Kohärenz unterhalten wird, reden wir von CC-NUMA

## Was ist der LLC?
* last level cache
* z.B. Level 3
* L1 und L2 sind zum Core lokale Caches. LLC ist (ge)shared über alle Cores
* Der ganze LLC ist aufgeteilt in 2,5MB grosse Stücke auf die alle Cores vom System zugreifen und verwenden könne
* Ein Core kann die Platzierung der Daten nicht kontrollieren. Er kann nur auf den ganzen LLC zugreifen
* Auf den LLC wir über den on-die ring zugegriffen und die Latenz richtet sich nach den Anzahl hops die gemacht werden müssen

## Was sind Memory Stalls?
* Zeit für das warten auf die Daten
* Beispiel Datenbank: >75%
* Webserver: ~50%
* Compute Cyles gefolgt von memory wait cycles

## Was ist SMT?
* Simultanes Multi Threading
* SMT (Symmetrische Multiprozessoren) erhöht die Zahl der Transistoren um 10%
* CMP (chip multiprocessing) erhöht die Zahl der Transistoren um 50%

## Was ist eine superskalar Architektur?
* mehrere reduntante Einheiten
* SC Prozessor erledigt mehr als eine Instruktion während eines Clock-Cycle
* es werden mehrere Instruktionen auf mehrere redundante Funktionseinheiten ausgeführt
* funktionale Einheit ist nicht eine CPU sondern eine Ausführungsressource in einer CPU

## Was ist Amdahls Gesetz?
* Overhead steig mit steigender Anzahl Prozesse
* Ausführungszeit nimmt ab
* Konvergiert gegen den nicht parallelisirbaren Anteil

## Was ist die Cache Koherenz?
* Konsistenz zwischen Werte welche im Cache gespeichert werden
* write through cache
    P1 schreibt X. Der Hauptspeicher wird beim write through Cache ebenfalls verändert. P2 liest den alten (inkohärenten Wert aus dem eigenen Cache
* write back cache
    * P1 schreibt X. Der Hauptspeicher wird nicht sofort verändert. P2 liest nun den alten, inkohärenten Wert aus dem Hauptspeicher

## Wie lässt sich das Cachekohärenz Problem lösen?
* Cachekohärenzprotokolle
* Verwendung eines gemeinsamen Caches
* Unterteilung der Daten

## Welche Cachekohärenzprotokolle gibt es?
* Snoop
    * Da alle Zugriffe über gleiches Medium verlaufen (Bus, Switch) können die Cachecontroller beobachten und erkennen welche Blöcke sie selbst gespeichert haben
    * Subprotokolle
        * Write-Back-Invalidierung (WIWT)
        * Write-Back-Update
    * skaliert schlecht
    * Erweiterung der Status-Bits jeder Cachezeile
    * Zusätzliche Cache-Controller, die das jeweilige Cachekohärenz-Protokoll implementieren
    * Protokolle werden üblicherweise durch endliche Automaten dargestellt
* Directory
    * Zentrale Liste mit Status aller Cache Blöcken. Welcher Prozessor hat was?
    * Ab 64 Prozessoren oder Cores werden ausschliesslich Directory basierende Protokolle eingesetzt, da die Bandbreite des Busses nicht ausreichend skaliert
    * Subprotokolle
        * Write-Back-Invalidierung
        * Write-Back-Update
    * skaliert gut
    * Directories enthalten den Zustand von Speicherblöcken
    * Ein Bitvektor zeigt zudem an, in welchen Caches der jeweilige Block gespeichert ist
    * Pro Speicherblock existiert ein Eintrag in einem Directory
    * Zustände
        * Shared (Block ist in einem oder mehreren Caches, Wert ist up-to-date)
        * Uncached (Block ist in keinem Cache)
        * Exclusive (Block gehört einem Cache, Wert ist nicht up-to-date)

## Was versteht mann unter einem Verbindungsnetzwerke?
* 1000 Prozessoren
* 10^6 Verbindungen, jede z.B. 64 Bit breit also 6.4 * 10^7 Leitungen
* Bei einer 100-lagigen Platine wäre das eine Platinenbreite von ca. 6 km

## Was versteht man unter Prozessor Interconnect?
* Uni direktionale Verbindungen (QPI, quick path interface) zwischen den Prozessoren erlauben Intel viel grössere Geschwindigkeiten.
* 4 Sockets (Prozessoren)
    * verlangen bei einer jeder zu jedem Verbindung nur 12 Verbindungen. Das ist noch machbar
* 8 Sockets (Prozessoren) 
    * sind das aber schon 56 Verbindungen. Das ist sehr aufwändig in Anbetracht, dass die Verbindungsbreite mit 64 Bit noch um einiges komplizierter wird
* ein Crossbar Switch optimiert Aufwand und Ertrag der Core zu Core Verbindungen

## Welche Entwurfskriterien gibt es bei Verbindungsnetzwerke?
* hohe Leistung -> viele Leitungen
* niedrige Kosten -> wenig Leitungen

## Welche Klassifikationskriterien gibt es bei Verbindungsnetzwerke?
* Topologie
    * Wie sind die Prozessoren miteinander verbunden (gemeinsames Medium vs. geschaltete Verbindung) ?
    * Statisch oder dynamisch veränderbar (Verbindungen invariant
vs. auf Anforderung etabliert).
* Routing
    * Wie werden die Nachrichten verteilt (store and forward, wormhole, cut-trough, circuit switching, packet switching) ?
    * Welcher Algorithmus zur Pfadbestimmung wird verwendet (deterministisch, off-line, adaptiv, randomized ) ?


## Was sind die Bewertungskriterien für Topologien?
* Inzident: Knoten ist inzident mit einer Kante wenn der Knoten wenigstens an einem Ende der Kante liegt.
* Durchmesser D: Maximum der Anzahl der Kanten im kürzesten Pfad zwischen zwei beliebigen Knoten des Netzwerks.
* Grad k des Netzwerks: Maximale Grad (Zahl der inzidenten Kanten) der Netzwerk- Knoten.
* Halbierungsbandbreite (Bisektionsbreite): Wird ein Netzwerk in zwei etwa gleich grosse Teile getrennt, so ist die Halbierungsbandbreite die minimale Anzahl an Verbindungsleitungen, die dabei durch- trennt werden müssen. Eine hohe Bisektionsbreite verhindert Flaschenhälse.
* Symmetrie: Die Knoten und/oder Links in einem symmetrischen Netz verhalten sich gleich, egal welchen Knoten oder welchen Link man betrachtet.
* Skalierbarkeit: Ein Verbindungsnetzwerk ist skalierbar, wenn einer Erweiterung des Netzwerks keine Beschränkungen entgegen stehen.
* Konnektivität: Minimale Anzahl Knoten oder Links die durchtrennt werden müssen, damit das Netz nicht mehr funktionstüchtig ist.

## Was gibt es für Topologien?
* Lineares Feld
    * Das lineare Feld ist das einfachste Verbindungsnetzwerk
* Ring
    * Der Ring ist ein asymetrisches Netzwerk
    * Im Gegensatz zum linearen Feld können die Verbindungen im Ring uni- oder bidirektional ausgelegt sein
* Stern
    * Der Stern ist ein asymetrisches Netzwerk mit einem herausragenden Zentrumsknoten
* Baum
    * Ein Baum ist ein asymetrisches Netzwerk. Als Beispiel wird ein ausgewogener binärer Baum betrachtet
* Hypercube
* Crossbar Switch
    * Jeder Punkt ist mit jedem Punkt (oder auch Port genannt) verbunden über eine konstante Anzahl Hops
    * Crossbar Switches sind nicht blockierend
* Omega Netzwerk
    * Omega Netzwerke sind blockierend

## Wie bilde ich skalierbare Applikationen?
* Skalierbare Algorithmen
* verwenden von fein granularen Locking Mechanismen pro Objekt
* Verwenden von Worker Thread Pools
* Identifizieren der Orte wo wait-time involviert sind

