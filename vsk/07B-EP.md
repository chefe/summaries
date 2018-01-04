# Test Doubles

## Welche Arten von Test Doubles gibt es?
* Dummy
    * sehr primitive und häufig leere Ersatz-Implementation
    * dient zur funktionslosen Entkopplung von unerwünschten Abhängigkeiten
* Stub
    * einfache Implementation
    * liefert mit möglichst geringem Aufwand sinnvolle, vordefinierte Werte
* Spy
    * Alternative Implementation
    * liefert dynamische Werte zurück
    * merkt sich die Aufrufe der Methoden
    * aufgezeichneten Ereignisse können für die Verifikation benutzt werden
* Mock
    * Spezialisierung des Spy
    * liefert dynamische Werte zurück
    * kann die korrekte Interaktion selber verifizieren
    * werden typisch mit Hilfe von speziellen Mock-Frameworks erstellt
    * werden meistens für jeden Testafll einzeln erstellt
    * Verhalten wird dynamisch programmatisch konfiguriert
* Fake
    * Alternative Implementation
    * kann die Komponente mit vernünftigem Aufwand vollständig ersetzen
    * ermöglicht die vollständige Entkopplung von einer Abhängigkeit
    * Aufwand für Erstellung muss in vernünftigem Verhältnis zum Nutzen sein

## Wann setzt man welchen Test Double ein?
* Dummy und Stub:
    * einfache Ersatzimplementationen um eine bessere Testisolation erreichen
    * mit geringem Aufwand eine höhere Selektivität und Stabilität
* Spy und Mock:
    * Universalwaffen für Behavior-Testing mit Hilfe von Mocking-Frameworks
    * diese können auch zur Realisierung von Stubs und Dummys genutzt werden
* Fake:
    * eher aufwändige Implementation
    * Aufwand muss sich lohnen

