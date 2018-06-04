# Informations- und Datenqualität

## Was bedeuten die Abkürzungen IQ und DQ?
* Informationsqualität (IQ)
* Datenqualität (DQ)

## Was sind mögliche Qualitätskriterien?
* Korrektheit
* Vollständigkeit
* Relevanz
* Konsistenz
* Aktualität

## Welche Erfahrungswerte gibt es zur Datenqualität?
* 10-20% fehlerhaften Daten in operativen Systemen
* ca. 80% aller Aufwände sind zur Verbesserung der Datenqualität 

## Was sind die bekanntesten Ursachen für schlechte Datenqualität?
* schlechte Datenerfassung
    * infolge Ignoranz, Fahrlässigkeit oder Mutwilligkeit 
    * bei der Dateneingabe oder mangelhaften Ressourcen
    * Mängel in der Schulung oder mangelnde Motivation
* schlechte Prozesse
    * infolge mangelhaft definierter Abläufe und Zuständigkeiten 
* schlechte Architektur
    * infolge Sparens am falschen Ort
    * unsauberer Systemwechsel und Migrationen
* schlechte Definitionen
    * infolge mangelhaften Planungs- und Sorgfaltsbewusstseins 
    * und lückenhafter oder fehlender Dokumentierung 

## Was sind mögliche Qualitätsmängel?
* Inkorrektheit
* Inkonsistenzen
* Redundanzen
* Uneinheitlichkeit
* Unvollständigkeit

## Aus welchen zwei Komponenten sollte eine Metrik bestehen? 
* Kriterien (z.B. Akualität)
* Erfüllungsgrad dieser Kriterien (z.B. in Prozent)

## Wie wird der Begriff Datenqualität in "diesem Modul" definiert?
Grad der Eignung von Daten zur Erfüllung eines bestimmten Verwendungszweckes

## Wie heissen die vier IQ - Kategorien (nach DGIQ-Projekt)?
* systemunterstütz (untersucht System)
* inhärent (untersucht Inhalt)
* darstellungsbezogen (untersucht Darstellung)
* zwecksabhängig (untersucht Nutzung)

## Wie sind die 15 IQ-Dimensionen definiert?
1. Zugänglichkeit
2. Angemessener Umfang
3. Glaubwürdigkeit
4. Vollständigkeit
5. Übersichtlichkeit
6. Einheitliche Darstellung
7. Bearbeitbarkeit
8. Fehlerfreiheit
9. Eindeutige Auslegbarkeit
10. Objektivität
11. Relevanz
12. Hohes Ansehen
13. Aktualität
14. Verständlichkeit
15. Wertschöpfung

## Welche Phasen werden bei den Qualitätsverbesserungsschritte unterschieden?
* Phase "Verstehen"
    * Data Idetification / Datenquellen idetifizieren
    * Data Profiling / Daten analyiseren und verstehen
* Phase "Verbessern"
    * Data Standardisation / Dateninhalt vereinheitlichen
    * Data Enrichment / Daten anreichern
    * Data Deduplication / Mehrfach vorhandere Datenobjekte entfernen
* Phase "Steuern"
    * Data Monitoring / Datenqualität überwachen und steuern

## Welche Fragen stellen sich bei der Data Identification?
* Wie und von wem wurden die Daten erstellt?
* Welche Benutzer greifen am häufigsten auf die Daten zu?
* Für welche Zwecke werden die Daten vor allem eingesetzt?
* In welchem Zustand befinden sich die Daten?

## Welche Informationen werden beim Data Profiling festgelegt?
* Benennungen (z.B. von Tabellen und Attributen)
* Datentypen (ev. auch Wertebereiche)
* Gültigkeitsbereich (Min, Max)
* Kardinalitäten
* Fehlertoleranzen

## Wie heissen die drei Methoden des Data Profiling?
* deskriptiv (beschreibend): 
    * Analyse von Häufigkeiten
    * Abhängigkeitenanalysen
    * Ausreisser-Test's
* kognitiv (lernend): 
    * Regelinduktionen/-analyse
    * Segmentierungen
    * Klassifizierungen
* deduktiv (ableitend): 
    * (Geschäfts-) Regelanalyse

## Wie lassen sich Ausreisser häufig am einfachsten entdecken?
Man erstellt eine grafische Darstellung der Daten

