# Buildserver

## Was ist ein Buildserver?
* Serversoftware
* führt automatisierten Build eines SW-Projektes durch
* stellt die Resultate allen Entwickler im Team zur Verfügung

## Durch welche Events kann ein Buidl ausgelöst werden?
* automatisch durch Änderungen im Versionskontrollsystem
* automatisch durch Zeitsteuerung
* manuell durch Anwender

## Was sind die positive Effekte eines Buildservers?
* entlastet Entwickler von repetitiven Aufgaben
* häufigere Verifikation (Buildprozess, Tests, ...)
* statistische Information über den Entwicklungsprozess
* automatische Information über den Zustand der Projekte

## Was gibt es für Buildserver Produkte auf dem Markt?
* Jenkins/Hudson -- einer der aktuell populärsten Buildserver
* CruiseControl -- einer der ältesten Buildserver
* Continuum -- Ursprüngliche speziell für Maven-Projekte
* Go -- Moderne Ansätze, vereinfacht, Pipelines, CD
* TeamCity -- sehr funktionaler und gut skalierender Buildserver
* Bamboo -- eng verknüpft mit JIRA

## Welche zwei Ansätze gibt es zur Konfiguration von Buildservern?
* Variante 1:
    * typisch für klassische Produkte (eher in Firmen)
    * Konfiguration ist vom Projekt vollständig getrennt
    * wird meist interaktiv direkt auf dem Buildserver vorgenommen
    * Infrastruktur wird geschützt (Gewaltentrennung)
* Variante 2:
    * häufig für Cloud-/Hosting-Plattform (eher bei OSS)
    * Konfiguration ist direkt im Projekt abgelegt (z.B. yml-Datei).
    * wird direkt von Entwickler konfiguriert
    * weniger restriktiv, häufig mit Docker
    * mehr Freiheit und Eigenverantwortung

## Was sind verschiedenen Buildszenarien?
* Continuous Builds:
    * automatisch bei einer Änderungen im Versionskontrollsystem
    * schnelle, möglichst kurze Builds
    * Ziel: schnelles Feedback für Entwickler
* Nightly Builds:
    * automatisch nach Zeitsteuerung, typischerweise Nachts
    * eher für umfangreiche, lange Builds
    * auch für zeitintensive Tests und Metriken geeignet
    * Ziel: am Morgen stehen umfassende Resultate zur Verfügung
* Release Build:
    * manuell ausgelöst
    * Build einer auslieferbaren Version (im VCS getagged)
    * Ziel: Reproduzierbarkeit gewährleisten

