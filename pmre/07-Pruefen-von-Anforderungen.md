# Prüfen von Anforderungen

## Warum sollte man Anforderungen überprüfen?
* Juristisch:
    * Entwicklungsauftrag oft auf Basis eines Anforderungsdokumentes
    * Wenn falsch oder unvollständig, kann das zu Streitigkeiten führen
* Fehlerfortpflanzung:
    * Fehler in den Anforderungen pflanzen sich in der Umsetzung fort
    * Späte Entdeckung hat hohe Kosten zur Folge

## Wie sollten Anforderungen überprüft werden?
* Inhalt:
    * wurden alle relevanten Anforderungen ermittelt
    * sind sie im erforderlichen Detaillierungsgrad erfasst?
* Dokumentation:
    * wurden die Anforderungen "richtig" dokumentiert?
    * gemäss den festgelegten Dokumentations- und Spezifikationsvorschriften
* Abgestimmtheit:
    * stimmen alle Stakeholder mit den dokumentierten Anforderungen überein
    * sind alle bekannten Konflikte aufgelöst?

## Was sind Prüfkriterien für den Inhalt?
* Vollständigkeit:
    * sind alle relevanten Anforderungen erfasst?
    * sind alle für eine Anforderung notwendigen Informationen beschrieben?
* Verfolgbarkeit:
    * sind alle relevanten Anforderungsquellen definiert?
* Korrektheit/Adäquatheit:
    * spiegeln die Anforderungen die Bedürfnisse der Stakeholder wider?
* Konsistenz:
    * stehen die Anforderungen nicht miteinander in Widerspruch?
* Keine vorzeitigen Entwurfsentscheidungen:
    * wurden keine Lösungen in den Anforderungen vorweggenommen?
* Überprüfbarkeit:
    * sind Abnahme- bzw. Prüfkriterien definiert?
* Notwendigkeit:
    * trägt jede Anforderung zur Erfüllung eines definierten Ziels bei?

## Was sind Prüfkriterien für die Dokumentation?
* Konformität zum Dokumentationsformat und zur Dokumentenstruktur:
    * wurden z.B. vorgegebene Schablonen / Modellierungssprache verwendet?
    * wurde die Struktur des Anforderungsdokuments eingehalten?
* Verständlichkeit:
    * wurden z.B. die verwendeten Begriffe in einem Glossar definiert?
* Eindeutigkeit:
    * sind z.B. die textuelle Anforderung sprachlich eindeutig?
* Konformität mit Dokumentationsregeln:
    * wurde z.B. die Syntax der Modellierungssprache eingehalten?

## Was sind Prüfkriterien für Abgestimmtheit?
* Abstimmung:
    * wurde jede Anforderung mit allen relevanten Stakeholdern abgestimmt?
* Abstimmung nach Änderungen:
    * wurde für geänderte Anforderung die Zustimmung erneut eingeholt?
* Konflikte aufgelöst:
    * wurden alle bekannten Konflikte bzgl. der Anforderungen aufgelöst?

## Wie heissen die 6 Prinzipien zur Prüfung von Anforderungen?
* Prinzip 1 - Beteiligung der richtigen Stakeholder
* Prinzip 2 - Trennung von Fehlersuche und Fehlerkorrektur
* Prinzip 3 - Prüfung aus unterschiedlichen Sichten
* Prinzip 4 - Geeigneter Wechsel der Dokumentationsform
* Prinzip 5 - Konstruktion von Entwicklungsartefakten
* Prinzip 6 - Wiederholte Prüfung

## Was ist der Unterschiede zwischen Review, Audit und Akzeptanztest?
* Reviews
    * öffentliche, zwischenmenschliche, verbale Prüfung eines Artefaktes
    * => Product Quality
* Audit
    * unpersönliche Prüfung eines Prozesses
    * => Process Quality
* Acceptance tests
    * typischerweise Black-Box-Test vor der Übergabe eines Artefaktes
    * => Validation

## In welche zwei Kategorien werden Reviews gemäss IEEE unterscheiden?
* Management Reviews
    * überprüfung eines Prozess
    * z.B. Review des Projektmanagement-Plans:
    * wird vorgehenskonform geplant?
    * entspricht der Projektverlauf der Planung?
* Technical Reviews 
    * überprüfung eines Produktes
    * z.B. Review der Systemspezifikation:
    * entspricht die Architektur den Anforderungen?
    * ist die Architektur vernünftig umsetzbar?

## Was ist die Definition eines Meilensteins?
ein geplanter Punkt im Projektablauf an dem vorher festgelegte (Zwischen-)Ergebnisse vorliegen, 
die es erlauben den Projektfortschritt zu messen

## Welche Review Typen werden unterschieden?
* Inspection
* Team Review
* Walkthrough
* Pair Programming
* Peer Deskcheck
* Passaround
* Ad Hoc Review

## Welche Arten von Reviews gibt es im Klassischen-Modell?
* Feasibility Review (sys.def. & proj.plan)
* Requirements Review (req.spec, user man., sys. & accept.test design)
* Prelim. Design Review (sys.design & integ.test spec)
* Critical Design Review (det.design & unit test specs)
* Source Code Review
* Prod. Release Review

## Welche psychologische Aspekte sind bei einem Review wichtig?
* flexibel sein wer wessen Arbeit reviewed
* in guter Reviewer ist nicht wertend und kennt den Nutzen eines Reviews
* Fehler, die in einem Review gefunden werden, soll man nicht an die grosse Glocke hängen

## Welche Punkte gehören zu einem guten Review-Stil?
* Teilnehmer erhalten die Artefakte einige Tage vor der Review
* alle Mitglieder des Review-Teams haben sich vorbereitet und die Unterlagen studiert
* der Reviewleiter geht die Artefakte Stück für Stück durch und moderiert
* Fehler und Probleme werden in einem Protokoll festgehalten
* zu lange Diskussionen abbrechen und später weiterführen

## Für was steht die Abkürzung DoD?
Definition of Done

