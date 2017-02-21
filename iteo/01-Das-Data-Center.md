# Begriffe

## ITIL
* IT Infrastructure Library
* Was braucht es in einem KMU?
* Was sind die wichtigen Teile?

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

# Wie kann die Stromversorgung sichergestellt werden?
* USV (Unterbrechungsfrei Stromversorung)
* Notstromgenerator (Diesel)

# Was ist bei der Klimatierung wichtig?
* Konstante Luftparameter und Feuchtigkeit
* ca. 26C als Optimum empfohlen (früher ca. 18C)
* Reine Luft

# Was gibt es für Probleme bei der Klimatisierung?
* Kondenswasser
* Filterkontrolle
* Braucht zusätzliche Energie
* Luftverteilung
* Überwachung

# Wie funktioniert ein Free Flow System?
* Absaugen der warmen Luft an der Decke
* Kühlung der Luft und Wiedereinspiesung in den Doppelboden
* Doppelboden wird als Verteilsystem genutzt

# Was sind die Vor- Nachteile eines Free Flow Systeme?
* Einfacher Aufbau
* Keine zus. Hindernisse
* Kalt-/Warmluftvermischung
* Unterschiedliche Temperaturen

# Wie funktioniert eine Kalt- oder Warmgang-Einhausung?
* Absaugen der warmen Luft an der Front des Serverschranks
* Kühlung der Luft und Wiedereinspiesung in den Doppelboden
* Einspiesung der Luft durch die Rückseite des Serverschrankes

# Was sind die Vor- und Nachteile einer Kalt- oder Warmgang-Einhausung?
* Energieoptimiert durch Trennung von Kalt- und Warmluft
* Geringere Energiekosten
* Kleine vertikale Temperaturdifferenzen
* Zusätzliche Kosten im Aufbau
* Erhöhter Abschottungsbedarf

# Wie werden Serverrack spezifiziert?
* Höhe 21-49U
* Tiefe 0.8-1.2
* Breite 0.6-1m
* Integrierte Kühlung möglich
* Zuleitungen oben / unten / seitlich
* 19 Zoll als Standard (48.26 cm)
* 1 HE = 1 U = 1.75 Zoll = 44.45 mm

# Was hat es alles in einem Serverrack?
* Netzwerk (Kupfer, Glas)
* Stromverteilung (Trasse oben/unten)
* Kabelführung über Hohlboden oder Deckentrasse
* Klimageräte, USV, Batterieschränke
* Ev. Kühlleitungen und Überwachungsgeräte

# Was ist bei einem Serverschank wichtig?
* Rack stehen meistens auf einem Montagerahmen (wegen Gewicht)
* Front immer Schliessen (damit nicht warme Luft angesogen wird)

# Was sind die Gefahren und Massnahmen für ein Data Center?
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

# Was sollte alles überwacht werden?
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
https://www.future-thinking.de/wp-content/uploads/2016/03/future-thinking-2016_Was-darf-ein-RZ-kosten_dc-ce-RZ-Beratung-Ulrich-Terrahe.pdf

| Kosten    | Baustein                     |
|-----------|------------------------------|
| 600'000.- | Gebäude                      |
| 665'000.- | Technische Gebäudeausrüstung |
| 355'000.- | Baunebenkosten               |

| Kosten    | Baustein                           |
|-----------|------------------------------------|
| 25'000.-  | Sanitäranlagen                     |
| 15'000.-  | Wärmeversorgungsanlagen            |
| 170'000.- | Kältetechnik und Klimatisierung    |
| 270'000.- | Elektrotechnik                     |
| 55'000.-  | Brandmelde- und Sicherheitstechnik |
| 40'000.-  | Löschanlagen                       |
| 55'000.-  | Automationstechnik                 |
| 35'000.-  | sonstige Maßn. Für techn. Anl.     |

## Was ist der PUE Faktor und was sind die erreichbaren und effektiv erreichten Werte?
* PUE = Power Usage Effectiveness
* PUE = Gesamte vom Rechenzentrum verbrauchte Energie / Verbrauch der IT-Geräte
* Erreichbare Werte:
    * 1.0: optimal, kein Energieaufwand für Kühlung nötig
    * 1.2: guter Wert, Bereich der normalen RZs
    * 1.4: Optimierungsbedarf

# Kapitel
Verfügbarkeitsverbesserungen
Tier Levels im Datacenter
Information Lifecycle Management
Tiered Storage

## Lernzile
Sie sind fähig die kritischen Punkte eines Datacenters zu adressieren und Massnahmen vorzuschlagen.
Sie kennen die Tier Level von Datacentern.
Sie wissen wie man Daten klassifiziert und sie in SLAs einbindet.
Sie sind in der Lage Data-Tiers und deren Aufgaben zu erklären.

