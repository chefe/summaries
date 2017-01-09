# Kapitel Betriebsysteme

## Was macht ein Betriebssystem (BS)?
Betriebssysteme realisieren eine Softwareschicht zwischen Anwendungen und Hardware, die sich mit der Verwaltung der Hardwarekomponenten beschäftigt und für die Anwendungen einfachere Schnittstellen bereitstellt (System Calls).

## Was sind die Nachteile, wenn ein Rechner ohne Betriebssystem benutzt wird?
* Komplizierter zum Programmieren
* man muss die Hardware kennen
* Eingeschränkte Wiederverwendbarkeit und  Portierbarkeit
* Ressourcen müssen selber verwaltet werden

## Was sind die Vorteile, wenn ein Rechner ohne BS benutzt wird?
* Schlankeres System
* Vollständige Kontrolle
* Bessere Performance
* keine Kosten (für ein Betriebssystem)
* keine Betriebssystem-Updates
* keine Viren

## Welche Möglichkeiten hat das Betriebssystem um auf IO-Geräte zu reagieren?
* Polling (Busy Waiting)
* Interrupts
* DMA (Direct Memory Access)

## Beschreiben Sie die Hauptaufgaben eines BS?
* Ressourcenmanagement
* Benutzerverwaltung
* Prozessmanagement
* IO-Management
* Filesystemverwaltung
* Bereitstellung von System Calls

## Welche Aufgabe erfüllt eine MMU?
Die Memory Management Unit (MMU) macht das Mapping von virtuellen zu physikalischen Adressen (und umgekehrt) und bietet Speicherschutzverwaltung.

## Worin unterscheiden sich Busy-Waiting und Interrupt?
Bei Busy-Waiting ist die CPU blockiert, bei einem Interrupt nicht.

## Was versteht man unter einem BIOS?
Programm auf niedriger Stufe zum starten des BS

## Wozu dienen Systemaufrufe?
Ausführen einer Betriebsystemfunktionalität

## Was ist eine Shell?
Ein Kommandointerpreter

