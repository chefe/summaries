# Praxis Tipps

## Auf was sollte bei der Auswahl einer Klasse geachtet werden?
* ob sie synchronisiert und somit thread safe sind
* ist nicht immer nötig
* kostet viele (Lauf-)Zeit

## Was sind die Anforderungen an eine unveränderbare Klasse?
* keine Methoden welche den Zustand des Objektes verändern
* Spezialisierung mit final-Keyword verhindert
* Alle Attribute sind private und final

## Wie unterscheiden sich Array und Listen?
* Arrays sind kovariant, Listen sind invariant
* Arrays werden reified, Listen nutzen erasure


