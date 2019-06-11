# Sicheres Programmieren

## Was ist sicheres Programmieren?
Software zu bauen, die genau ihre Aufgabe erledigt aber nichts mehr

## Wieso muss Software sicher programmiert werden?
* Software ist allgegenwärtig
* viele Aspekte unseres Lebens werden digital gespeichert
* wir benutzen täglich diverse elektronische Geräte
* alle diese Daten werden verarbeitet und kontrolliert durch Software

## Wie kann sicher programmiert werden?
* Schulung von Entwickler
* Sichere Anforderungen & Design
* Richtlinien & Gesetze

## Was muss ein Entwickler verstehen um sicher zu programmieren?
* häufige Design- und Implementierungsprobleme
* kleine Probleme können sehr grosse Auswirkungen haben
* Wissen, was möglich ist um diese Risiken zu vermindern
* Wissen, wie ein sichere Entwicklungszyklus aussieht

## Was ist ein Risiko?
* Schadensausmass * Schadenswahrscheinlichkeit

## Was ist ein IT-Risiko?
* Impact * Threat Level * Vulnerability Level
* Impact = Schadensausmass beim Eintreten des Risikos
* Threat Level = Leistung eines bösartigen Person (Fähigkeiten und Ressourcen)
* Vulnerability Level = Vorhandensein von Fehler und einfacher Ausnützung

## Welche zwei Stufen gibt es bei der Ausnutzung von Sicherheitslücken?
* Class specific exploitation primitive
    * z.B. Möglichkeit um Code zu injecten
    * allgemeine Angriffsmöglichkeit
* Generic exploitation primitive
    * z.B. Im Browser ausgeben und auf Client ausführen
    * Ausnutzung einer bestimmten Sicherheitlücke

## Welche Punkte müssen in einem sicheren Entwicklungszyklus abgearbeitet werden?
* Requirements (was muss abgesichert werden)
* Spezifikationen und Design (wie absichern)
* Implementation (Implementationsfehler sind eine häufige Problemquelle)
* Testing (verschiedene Arten, Penetration-Testing)
* Wartung (regelmässige Überprüfung, schnelle Reparaturen)

## Was ist die Angriffsfläche?
Die Summe aller Punkte, bei denen ein nicht autorisierter Angreifer Daten
in eine Umgebung einführen kann oder Daten extrahieren kann.

## Was sind häufige Angriffsflächen?
* Benutzeroberfläche
* Netzwerkverbindungen
* System Schnittstellen
* Datenbanken
* Speicher
* Log-Dateien

## Wofür steht die Abkürzung STRIDE?
* S: Spoofing
* T: Tampering
* R: Repudiation
* I: Information Disclosure
* D: Denial of Service
* E: Elevation of Privilege

## Was sind Gründe für häufige Implementationsfehler?
* Nachlässigkeit oder Unwissenheit eines Entwickler
* Ignoranz gegenüber den Implementationsdetails einer Bibliothek
* fehlende Kenntnisse von Seiteneffekten
* schlechtes Interface-Design
* Annahmen nicht korrekt überprüfen
* Input und Output zu wenig genau definiert
    * Felder, Formate, Encoding, Protokolle

## Was sind Massnahmen um diese Fehler zu verhindern?
* Entwickler schulen
* robustes Design
* Source Code überprüfen (Code Review, automatische Tools)
* Systemkomponenten testen (Unit, Intergation, Penetration)

