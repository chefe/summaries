# Continuous Integration

## Was ist das Vorgehen bei der Entwicklung von Software?
* möglichst immer ein lauffähiges Produkt (Buildresultat) zu haben
    * es kann somit kontinuierlich getestet werden
* bei Fehlern jeder Art möglichst schnell ein Feedback zu erhalten
    * Primär durch automatisierte Unit- und Integrationstests
    * aber auch durch Kompiler, Classpath, Codeprüfungen etc.
* Im Team parallel entwickeln zu können und dennoch
    * den Überblick nicht zu verlieren
    * den Integrationsaufwand zu minimieren
    * über den aktuellen Zustand auf dem Laufenden zu sein.

## Was sind die 10 Praktiken der CI?
1. Einsatz eines (zentralen) Versionskontrollsystem
    * Sämtliche Quellen-Artefakte unterliegen der Versionskontrolle
    * Sinnvolle Commit-Kommentare vergeben
    * Tagging - markieren von bestimmten Versionen
    * Branches - Zweige für parallele Entwicklung
2. Automatisierter Buildprozess
    * Build auf einer kontrollierten Maschine durchführen
    * Ausschliesslich Basis der aktuellen Quellen aus dem VCS
    * Inklusive Ausführung der Testfälle
3. Automatisierte Testfälle
    * Möglichst viel durch automatisierte Testfälle abdecken
    * Fehlerhafte Implementationen sollen so schnell aufgedeckt werden
    * Ziel ist es das Tests müssen immer laufen
4. Alle Ändern den Quellcode auf dem Hauptzweig
    * stabile Basis verwenden
    * mergen ist aufwändig
    * kleine Changesets, aber dafür häufiger
5. Bei einer Änderung wird automatisch ein Build durchgeführt
    * zentrales System prüft regelmässig auf Veränderungen im VCS
    * Quellen automatisch ausgecheckt und ein Build starten
    * Verwendung eines Buildserver
    * Alle Resultate des Build werden offensiv kommuniziert
6. Der Buildprozess muss schnell sein
    * Je schneller die Entwickler ein Feedback bekommen desto besser!
    * Braucht Kompromiss, da Tests Zeit benötigen
    * Alternativ mehrere gestaffelte Builds durchführen
7. Auf/mit Kopien der produktiven Umgebung testen
    * sollte möglichst ähnlich zur produktiven Umgebung sein
    * Umfasst Hardwareausstattung, Betriebssystem, Laufzeitumgebung, ...
    * bei kleinen Systemen gut zu erreichen, bei grossen Systeme weniger
8. Einfacher Zugriff auf aktuelle Buildartefakte
    * Buildresultate sollte jederzeit für weitere Tests zur Verfügung stehen
    * Buildresultate werden durch Buildserver archiviert
    * Beispielsweise automatische Ablage in ein Repository
9. Offensive Information über den aktuellen Zustand
    * Offene Information nicht zur Kontrolle, sondern als Unterstützung
    * Informationen: von wem wurde wann was geändert
    * Ziel: Erfolgreiche Builds und eine möglichst fehlerfreie Software
10. Automatisches Deployment
    * Wenn möglich sollte das Buildergebnis automatisch verteilt werden
    * Oder zumindest regelmässig automatisch aktualisieren
    * aktuelle Software sofort wieder für weiterführende Systemtests bereit

