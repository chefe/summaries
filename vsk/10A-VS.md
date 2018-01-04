# Clock-Synchronisation 

## Was sind die Voraussetzung für Uhr-Synchronisierung?
* Timer: 
    * Schaltung in Computern, welche die Zeit verwaltet
    * Quarzkristall unter Spannung schwingt mit bestimmter Frequenz
    * Zählerregister zählen Schwingungen mit und erzeuge Interrupts in bestimmten Intervallen.
* Uhr-Tick
    * ein, durch den Timer erzeugter Interrupt
    * z.B. Timer mit H=60 erzeugt 216'000 Ticks pro Stunde
* Uhr-Asymmetrie: 
    * Unterschiede von Zeitwerten verschiedener Uhren
    * auch wenn diese ursprüngliche synchronisiert waren
    * Zeitwerten laufen auseinander weil Kristalle unterschiedlich sind 
    * ausserdem Schwingen sie mit unterschiedlichen Frequenzen schwingen

## Was sind die Probleme des Algorithmus von Cristian?
* Grosses Problem: Zeit kann nicht rückwärts laufen
    * Zeit vom Zeitserver liegt in der Vergangenheit der lokalen Zeit
    * Uhr kann nicht einfach zurück gedreht werden, da inkonsistente Zustände im System entstehen könnten
    * Lösung: Verlangsamung der lokalen Zeit, bis Zeitdifferenz ausgeglichen
* Kleines Problem: Antwort des Zeitservers braucht Zeit
    * Laufzeit der Anfrage kann nicht genau bestimmt werden
    * abhängig von Netzwerklast
    * Kompensation durch mehrfache Messung der Dauer der Anfrage
    * Adaption des vom Zeit-Servers gelieferten Wert

## Was ist NTP?
* Network Time Protocol
* Zweck: Synchronisierung von Rechneruhren im Internet
* NTP-Dämon auf fast allen Rechnerplattformen verfügbar
* erreichbare Genauigkeiten von ca. 0.01s in WANs und kleiner als 1ms in LANs
* Fehlertolerant

## Was sind die wichtigen Punkten bei der Uhren Synchronisation?
* die Bestimmung der Zeit ist unverzichtbar zur Koordination von Aktivitäten
* Zeitwerte verschiedener Uhren laufen auseinander
    * zwei Algorithmen, Cristian und Berkeley, sind zur Synchronisierung möglich
* Lamport: es ist ausreichend, wenn sich alle Maschinen über dieselbe Zeit einig sind
* eine Übereinstimmung mit der Zeit ausserhalb des Systems ist nicht notwendig
* die Happened-Before-Relation besagt
    * dass eine Nachricht nicht empfangen werden kann, bevor sie gesendet wurde
* beim Lamport-Zeitstempel wird die Uhrzeit des sendenden Prozesses mitgegeben
* der empfangende Prozess richtete seine Uhrzeit nach dem Zeitstempel + 1
* die Uhrzeit muss immer vorwärts laufen

