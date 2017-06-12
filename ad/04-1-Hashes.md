# Hashes

## Wie funktionieren Hash-basierende Datenstrukturen?
* Man berechnet basierend auf dem Inhalt eines Datenobjektes einen Hashwert
* Hashwert zeigt direkt auf den Speicherort des Datenobjektes 
* sehr schneller Zugriff mit `O(1)` möglich
* In einem binären Suchbaum kann immerhin mit O(log n) zugegriffen werden
* nur ausgewählte Elemente zur Berechnung werdenen um Performanc zu verbesssern

## Was ist wichtig bei der Berechnung des Hashwertes?
* Einhaltung des equals()- und hashCode()-Contracts
* es sollte immer beide Methoden überschrieben werden

## Was bezeichnet der Begriff Sondieren?
* Index für Datenelement aus Haswert berechnen
* falls Stelle bereits besetzt, nach rechts bis zum nächsten freien Platz
* wird rotierend durchegführt (vom Ende wieder an den Anfang springen)

## Wieso sollte man Immutable Objects verweden?
* können ihren Zustnd nicht mehr verändern
* verinfachen Programmierung stark
* für Mutation (entfernen, verändern und wieder neu einfügen)
* verhindert Probleme mit Hashes

