# SOLID

## Wie heissen die 5 SOLID Designprinzipen?
* Single ResponsibilityPrinciple (SRP)
* Open ClosedPrinciple (OCP)
* LiskovSubstitution Principle (LSP)
* Interface Segregation Principle (ISP)
* Dependency Inversion Principle (DIP)

## Was ist das Ziel von SOLID?
* höhere Wiederverwendbarkeit
* leichtere Verständlichkeit / Lesbarkeit
* (stark) verbesserte Testbarkeit
* vereinfachte Wartung
* verbesserte Erweiterbarkeit
* leichteres Refactoring

## Was sind die Grundsätze von SRP?
* eine Klasse soll nur eine Verantwortlichkeit haben
* eine Klasse soll nur einen Grund zur Änderung haben
* Einhaltung hat eine hohe Kohäsion zur Folge
* Änderungen oder Erweiterungen sollten sich auf möglichst wenig Klassen beschränken
* viele kleine Klassen sind besser als wenige grosse Klassen

## Was sind die Grundsätze von OCP?
* eine Klasse soll offen für Erweiterungen, aber geschlossen gegenüber Modifikationen sein
* Design ist für eine einfache und sichere Erweiterbarkeit ausgelegt
* bestehende Methoden und Klassen sollen möglichst nicht verändert werden müssen
* Reduktion des Risikos neue Fehler einzubauen durch weniger Codeänderungen
* häufig über Einsatz des Strategy-Patterns (GoF) erreicht

## Was sind die Grundsätze von LSP?
* Subtypen sollten sich so verhalten wie ihre Basistypen
* in spezialisierten Klassen Methoden nicht fundamental verändern
* den Sinn von Vererbung / Spezialisierung immer kritisch verifizieren
* Verifizieren mit `is-a` oder `behaves-as`
* meistens ist die Komposition der Vererbung vorzuziehen (FCoI)

## Was sind die Grundsätze von ISP?
* Schnittstellen strikt von Details der Implementation trennen
* Schnittstellen sollten sauber voneinander getrennt sein
* Schnittstelle soll eine hohe Kohäsion aufweisen
* Kopplung zwischen Komponenten soll minimal sein
* Viele kleine Schnittstellen sind besser als eine zu grosse Schnittstelle

## Was sind die Grundsätze von DIP?
* das Ziel ist es Änderungen zu isolieren
* Klassen sollten nicht von einander abhängig sein, sondern von Interfaces
* Interfaces sollen nicht von Details abhängig sein, sondern Details von Interfaces
* Isolation von Klassen vereinfacht / ermöglicht die Testbarkeit
* Auflösung von Dependencies über Dependency Injection (DI)

