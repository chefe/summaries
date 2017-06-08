# Das Data Center

## Was sind die Building Blocks eines Datacenters?
* Gebäude
* Zutrittskontrolle
* Brandschutz / Hochwasserschutz
* Klimatisierung
* Serverracks mit Rechnern
* Stromversorgung
* Datenleitungen / Netzwerk
* Administration und Überwachung

## Wie kann die Stromversorgung sichergestellt werden?
* USV (Unterbrechungsfrei Stromversorung)
* Notstromgenerator (Diesel)

## Was ist bei der Klimatierung wichtig?
* Konstante Luftparameter und Feuchtigkeit
* ca. 26C als Optimum empfohlen (früher ca. 18C)
* Reine Luft

## Was gibt es für Probleme bei der Klimatisierung?
* Kondenswasser
* Filterkontrolle
* Braucht zusätzliche Energie
* Luftverteilung
* Überwachung

## Wie funktioniert ein Free Flow System?
* Absaugen der warmen Luft an der Decke
* Kühlung der Luft und Wiedereinspiesung in den Doppelboden
* Doppelboden wird als Verteilsystem genutzt

## Was sind die Vor- Nachteile eines Free Flow Systeme?
* Einfacher Aufbau
* Keine zusätzlichen Hindernisse
* Kalt-/Warmluftvermischung
* Unterschiedliche Temperaturen

## Wie funktioniert eine Kalt- oder Warmgang-Einhausung?
* Absaugen der warmen Luft an der Front des Serverschranks
* Kühlung der Luft und Wiedereinspiesung in den Doppelboden
* Einspiesung der Luft durch die Rückseite des Serverschrankes

## Was sind die Vor- und Nachteile einer Kalt- oder Warmgang-Einhausung?
* Energieoptimiert durch Trennung von Kalt- und Warmluft
* Geringere Energiekosten
* Kleine vertikale Temperaturdifferenzen
* Zusätzliche Kosten im Aufbau
* Erhöhter Abschottungsbedarf

## Was versteht man unter Immersion Cooling?
* Eintauchen von ganzen Komponenten in eine Flüssigkeit
* Wärme wird direkt über Flüssigkeit abgeleitet
* Spezielle Bauweise und (nicht leitende) Flüssigkeit erforderlich

## Wie werden Serverrack spezifiziert?
* Höhe 21-49U
* Tiefe 0.8-1.2
* Breite 0.6-1m
* Integrierte Kühlung möglich
* Zuleitungen oben / unten / seitlich
* 19 Zoll als Standard (48.26 cm)
* 1 HE = 1 U = 1.75 Zoll = 44.45 mm

## Was hat es alles in einem Serverrack?
* Netzwerk (Kupfer, Glas)
* Stromverteilung (Trasse oben/unten)
* Kabelführung über Hohlboden oder Deckentrasse
* Klimageräte, USV, Batterieschränke
* Ev. Kühlleitungen und Überwachungsgeräte

## Was ist beim Aufbau und Betrieb eines Serverschanks wichtig?
* Rack stehen meistens auf einem Montagerahmen (wegen Gewicht)
* Front immer Schliessen (damit nicht warme Luft angesogen wird)

## Was sind die Gefahren und entsprechende Massnahmen für ein Data Center?
* Einbruch/Diebstahl/Vandalismus/Sturmschäden/Trümmer
    * bauliche Massnahmen
* Fremdzugriff
    * Zutrittskontrolle, Abhörsicherheit, Firewall, ...
    * Abhörsicherheit mit Hilfe Elektromagnetische Abschirmung 
* Feuer / Rauch
    * Brandfrüherkennung, Löschung, Abschottung
    * Problem: Brandgasverteilung durch Klimaanlage
    * Automatische Abschaltung
        * Vorallem für Handfeuerlöscher
        * Akute Branbekämpfung eines kleine Brandherdes
    * Löschanlage CO2 (Vorwarnungszeit für Flucht)
    * Löschanlage mit Gas (Verdrängung des Sauerstoffs)
        * Feuer erlischt bei unter 10% Sauerstoff im Raum 
        * Nicht brennbares Gas
    * kein PVC (bildet Salzsäure mit der Luft zusammen)
* Netzausfälle und Netzstörungen
    * Netzfilter, USV mit Batterien, Generatoren
    * kurzfristig Strom über USV
    * nach 5-10min wird der Generator gestartet
* elektromagnetische Störfelder
    * Abschirmung
    * metallische Aussenfassaden (Ableitung)
    * Blitzableiter
* Staub / Schmutz / Wasser
    * Filteranlagen, Schleusen, Standortwahl, Abschottungen, Pumpenanlagen, ...

## Was sollte alles überwacht werden?
* Gebäude (Türen, Kameras, Bewegungsmelder, Zutritte)
* Räume (Temperatur, Luftfeuchte, Bewegung, Rauch, Brand, Leckage und Wasser)
* Energieversorgung (Netzausfall, Strom, Spannung, Leistung, Leistungsfaktor)
* Einzelne Geräte (Schalterstellungen, Stromverbrauch, Kurzschluss, Überlast)
* Generator (auf Kraftstoffmangel, Funktionsbereitschaft, Temperatur, Überlast)
* Klimageräte (Temperaturen, Luftfeuchtigkeit, Filterwiderstand, Störungen)
* USV-Anlagen (Betriebsmodus, Ladezustand, Batterietemperatur)
* Brandmelde- und Löschanlage (Zustandsanzeigen, Störung, Service)

## Nenne 5 beliebigen Bausteinen, ihr Funktion und ihre Gefährdung?
| Baustein          | Funktionen                     | Gefährdet durch                          | Abhilfe gegen Gefährdungen                                    |
|-------------------|--------------------------------|------------------------------------------|---------------------------------------------------------------|
| Gebäude           | Schutz vor äusseren Einflüssen | Umweltkatastrophen                       | Resistente Bauweise                                           |
| Klimatisierung    | Schutz vor Überhitzung         | Verunreinigung der Filter, Kondenswasser | Filterservice, Abpumpvorrichtung                              |
| Stromversorgung   | Bereitstellung von Energie     | Stromausfälle, Netzschwankungen          | USV mit Batterie, Diesel-Generatoren                          |
| Netzwerk          | Verbindung der Komponenten     | Ausfall, Überlastung, Überhitzung, Brand | Redundanzen, Lastverteilung, Monitoring                       |
| Eingangskontrolle | Authorisierung                 | nicht-autorisierte Personen              | Biometrie, Kameras, Chipkarten, Passwörter, Personenkontrolle |

## Was sind die Kostenanteil der Baustein im gesammten Rechenzentrum?
| Kosten    | Baustein                     |
|-----------|------------------------------|
| 600'000.- | Gebäude                      |
| 665'000.- | Technische Gebäudeausrüstung |
| 355'000.- | Baunebenkosten               |

| Kosten    | Baustein                            |
|-----------|-------------------------------------|
| 25'000.-  | Sanitäranlagen                      |
| 15'000.-  | Wärmeversorgungsanlagen             |
| 170'000.- | Kältetechnik und Klimatisierung     |
| 270'000.- | Elektrotechnik                      |
| 55'000.-  | Brandmelde- und Sicherheitstechnik  |
| 40'000.-  | Löschanlagen                        |
| 55'000.-  | Automationstechnik                  |
| 35'000.-  | sonstige Massnahmen für techn. Anl. |

## Was ist der PUE Faktor und was sind die erreichbaren und effektiv erreichten Werte?
* PUE = Power Usage Effectiveness
* PUE = Gesamte vom Rechenzentrum verbrauchte Energie / Verbrauch der IT-Geräte
* Erreichbare Werte:
    * 1.0: optimal, kein Energieaufwand für Kühlung nötig
    * 1.2: guter Wert, Bereich der normalen RZs
    * 1.4: Optimierungsbedarf

## Was sind die Kosten für Downtime?
| Branche                  | Kosten (Richtwert) |
|--------------------------|--------------------|
| Fertigung                | 28'000.-           |
| Logistik                 | 90'000.-           |
| Einzelhandel             | 90'000.-           |
| Home-Shopping            | 113'000.-          |
| Medien                   | 1'100'000.-        |
| Bank (Rechenzentrum)     | 2'500'000.-        |
| Kreditkartenverarbeitung | 2'600'000.-        |
| Broker                   | 6'500'000.-        |

## Was versteht man unter dem Rätsel der Neunen?
| Uptime (%) | Downtime bei 24/7 | Downtime bei 9/5 |
|------------|-------------------|------------------|
| 99%        | 87.6 Stunden      | 23.5 Stunden     |
| 99.9%      | 8.76 Stunden      | 2.35 Stunden     |
| 99.99%     | 52.56 Minuten     | 14.09 Minuten    |
| 99.9999%   | 31.536 Sekunden   | 8.46 Sekunden    |

## Was bedeutete SAN?
Storage Attached Network

## Wie funktioniert en Failover Cluster?
Der Zugriff auf die Daten erfolgt über eine virtuelle IP Adresse, welche zusammen mit einem Service (Datenbank, Mailserver, Fileshares, Druckserver, ...) im Fehlerfall eines physischen Hosts automatisch auf den zweiten Hoste verschoben wird.

## Wie lässt sich die Laufzeit bei der Replikation vrbessern?
Damit die primäre DB nicht durch die Laufzeiten bei der Spiegelung belastet
wird, werden die Daten synchron auf eine lokale Instanz gespiegelt.
Die zeitintensivere Datenübertragung auf das entfernte Datacenter wird
danach asynchron vorgenommen.
Das off-site Rechenzentrum befindet sich im Standby Betrieb.

## Was beschreibt die AEC?
* Harvard Research Group (HRG) teilt Hochverfügbarkeit in ihrer Availability Environment Classification (AEC) in sechs Klassen ein
* AEC-0 (Convectional, kann unterbrochen werden) bis AEC-5 (Disaster Tolerant, muss immer zur Verfügung stehen)

## Welche Verfügbarkeit muss im SLA festgehalten werden, wenn ich 1h Ausfallzeit während den Bürozeiten nicht überschreiten will?
99.95745% (Montag bis Freitag von 08:00 bis 17:00)

## Was versteht man unter Failover-Cluster-Services?
Redundante Server, welche automatisch gegenseitig den Betribe übernehmen können in einer kurzen Zeit

## Wenn z.B. das SAN gespiegelt werden soll, wie erhöhen sich die Kosten?
Mehr als eine Verdoppelung, da evtl. auch noch das Netzwerk erweitert werden muss oder zusätzliche Lizenzen gekauft werden müssen.

## Was sind die verschiedenen Data Center Tiers?
* Tier 1: Redundanz: N, Jährliche Ausfallzeit: 28.8h, 99.67% Verfügbarkeit
* Tier 2: Redundanz: N+1, Jährliche Ausfallzeit: 22h, 99.75% Verfügbarkeit
* Tier 3: Redundanz: N+1, Jährliche Ausfallzeit: 1.6h, 99.98% Verfügbarkeit
* Tier 4: Redundanz: 2*(N+1), Jährliche Ausfallzeit: 0.8h, 99.99% Verfügbarkeit

## Was sind bekannte Anbieter?
* https://www.rackspace.com/
* https://www.hetzner.de/
* https://www.greendatacenter.ch/
* http://www.rechenzentrum-ostschweiz.ch/

## Was bedeutete ILM?
* Information Life Cycle Management
* ILM beschreibt eine Speicherstrategie. Ziel dieser Strategie ist die Speicherung von Informationen entsprechend ihrem Wert auf dem jeweils günstigsten Speichermedium einschließlich der Regeln und Prozesse, wie Information auf die geeigneten Speichermedien verschoben wird.
* Die Gewichtung orientieren sich an Wichtigkeit, Wertigkeit und Kosten der
elektronischen Information.
* Diese Gewichtung nennt sich Klassifizierung der Daten.

### Welche ILM Tiers gibt es?
* Tier 1: Höchster Speed, Sehr zuverlässig, Hohe Skalierbarkeit, Sehr teuer
* Tier 2: Mittlerer Speed, Zuverlässigkeit, Skalierung limitiert, Weniger teuer
* Tier n: Hohe Kapazitaet, Niedrigerer Speed, Sehr kleine Kosten pro TB
* spezialisiert: Offsite Tape, Einmal beschreibbar, Disk-to-Disk backup

## Was sind die Anforderungen ans ILM?
* Storage Management (Auf welchem Medium)
* Document Lifecycle Management (Wie viele verschiedene Versionen)
* Content Life Cycle Management (Wie viele gleiche Datein)
* Records Management (Was und wo darf gespeichert werden)

## Was sind die Regelen für das Storage Management?
* Änderungshäufigkeit
* Zugriffsgeschwindigkeit
* Zugriffshäufigkeit
* Kosten (Des Mediums)
* Ökonomischer Wert (Aufwand um Daten wieder zu erstellen)
* Relevante gesetzliche Bestimmungen (z.B. 10Jahre Aufbewahrungspflicht)

## Was ist das Verhältniss zwischen aktiven und inaktiven Daten?
* 40% inaktiv
* 60% aktiv

## Was sind die Probleme von inaktiven Daten?
* Konsumieren teuren Speicherplatz
* Werden gepflegt, gesichert, repliziert, etc.
* Unterliegen trotzdem Rechtlichen- und Datenhaltungs- Ansprüchen
* Müssen im Katastrophenfall wiederhergestellt werden

## Was versteht man unter Records Management?
* Was darf gespeichert werden?
* Wie lange darf es gespeichert werden?
* Wo wird es gespeichert?
* Wer darf sehen? / Wer darf bearbeiten?

## Welche Vorschriften für die Datenaufbewahrungszeit kennen sie?
* ca. 10 Jahre bei Finanzdokumenten
* z.B. 3 Jahre bei Sitzugsprotokolle

## Wer soll das Records-Management (RM) anordnen und durchsetzen?
* Geschäftsleitung anordnen
* Rechtsabteilung Konsequenzen/Weisungen bekanntgeben
* Abteilungsleiter müssen es kommunizieren
* Administratoren führen Kontrolle durch

## Was heisst Tiered Storage?
verschiedene Datenklassen gespeichert auf verschiedenen Speicherklassen

## Wie lassen sich Daten charakterisieren?
1. Mission Critical Data (z.B Datenbanken)
2. Business Critical Data
3. Nearline or Historical Data (z.B. alte Pläne)
4. Offline Data

## Wie stuert das Records Management das Datenvolumen?
* Aufbewahrungszeiten (gesetzlich / intern)
* Ablageordnung, Namensgebung, Versionen
* Automatische Routinen zum Löschen

## Für was steht die Abkürzung FC?
Fiber Channel

## Für was steht die Abkürzung MAID?
* Massive Array of Idle Disks
* sehr viele Disk, powersafe oder offline, nur aktiv wenn benötigt

## Was sind die Unterschiede zwischen einer Desktop- und einer Enterprise Festplatte?
* Desktop
    * 8h / 5d
    * niedriger Preis
* Enterprise
    * 24h / 7d
    * moderat bis hoher Preis

## Was ist eine mögliche Tier-Einteilung?
* Tier 1 (Produktionsdaten)
* Tier 2 (Referenzdaten)
* Tier 3 (Compliance Data / vom Gesetzgeber vorgeschrieben)
* Tier 4 (Offsite Disaster Recovery)

## Was bedeuten die Abkürzungen RTO und RPO?
* recovery time object (x stunden um backup zu restoren)
* recovery point objekt (backup all x stunden)

## Was bedeutet allocation efficiency?
Wie gut werden die eingesetzten Ressourcen genutzt?

## Wie viel Verlust kann schlecht genutzer Speicher verursachen?
| Anzahl    | Beschreibung           |
|-----------|------------------------|
| 85%       | Genutzt                |
| 6         | Cluster                |
| 96        | Platten                |
| 73        | GB pro Platte          |
| -         | -                      |
| 7008      | GB Speicher            |
| 3504      | GB Speicher gespiegelt |
| 584       | GB pro Cluster         |
| 496.4     | GB genutzt pro Cluster |
| 87.6      | GB Verlust pro Cluster |
| 1051.2    | GB Verlust total       |
| 107642.88 | Kosten Verlust         |

