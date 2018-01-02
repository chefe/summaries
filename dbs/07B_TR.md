# Transaktionsmanagement

## Was sind die Ziele des Transaktionsmanagements nach Kemper?
* Recovery
    * Konsistenz bei Fehlern oder Systemabstürzen
* Synchronisierung
    * Konsistenz im Mehrbenutzerbetrieb

## Was ist das ACID-Prinzip?
* Definiert Eigenschaften von Transaktionen in Datenbank-Systemen

## Für was stehen die Buchstaben in ACID?
* Atomar (Atomarität / Unteilbarkeit)
    * Folge von Aktionen gilt als Transaktion
    * wird ganz oder gar nicht durchgeführt
    * Genau zwei mögliche Ergebnisse: COMMIT oder ROLLBACK
* Consistent (Konsistenz)
    * Korrektheit der Daten in der Datenbank
    * Einhaltung der Integritätsbedingungen
    * Konsistenz vor Beginn und nach Abschluss der Transaktion
    * Zwischenstufen dürfen inkonsistent sein
* Isoliert
    * Multi-User-Betrieb ohne Seiteneffekte
    * Gleichzeitiglaufende
    * Transaktionen sind isoliert, wenn sie sich nicht gegenseitig beeinflussen
    * Transaktionen resultiert gleich wie wenn sie seriell ausgeführt würden
* Dauerhaft
    * Stabiles Speichern auch bei Systemfehlern
    * Erhaltung der Systemzustände nach Abschluss der Transaktion

## Welche Phasen beinhaltet das Two PhaseLocking Protocol nach Kemper?
* Wachstums-Phase
* Garantierte Serialisierbarkeit
* Schrumpfungs-Phase

## Was ist ein optimistisches Synchronisationsverfahren?
* Two Phase Locking Protocol garantiert die Serialisierbarkeit
    * ist aber ein pessismistisches Verfahren
* optimistische Synchronisierung.
    * die Annahme ist, dass Konflikte selten auftreten
    * dewegen werden keine Sperren eingesetzt
    * eine Transaktion wird grundsätzlich ausgeführt
    * vor dem Commit wird geprüft, ob Konflikte vorhanden sind

