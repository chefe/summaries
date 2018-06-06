# Dependency Management

## Was ist Dependency Management (DM)?
* beschreibt die Organisation und die Techniken für den Umgang mit Abhängigkeiten
* Abhängigkeiten können sowohl auf interne und externe Modulen bestehen
* Abhängigkeiten werden typisch in binärer Form aufgelöst
* deshalb kommen dafür so genannte Binär-Repositories und Packagemanager zum Einsatz

## Welche drei Attribute identifizieren bei Aache Maven ein Abhängigkeit?
* GroupId:
    * meistens zusammengesetzt aus dem "reverse domain name"
    * Beispiel: ch.hslu.appe
* ArtifactId:
    * entspricht häufig dem Namen des Projektes
    * Beispiel: appe-stock
* Version:
    * empfohlen wir eine dreistellige Versionsnummer
    * Beispiel: 4.0.0

## Welche Dependency Scopes kennt Apache Maven?
* __compile__ - Dependency wird für die Kompilation und zur Laufzeit benötigt
* __test__ - Dependency wird nur für die Kompilation und Ausführung der Testfälle benötigt
* __runtime__ - Dependency wird nur für Laufzeit, aber nicht für Kompilation benötigt

