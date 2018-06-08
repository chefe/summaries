# Evaluation von Cloud-Services & Standard-Software

## Was sind Aspekte einer Evaluation?
* Kosten
* Lizenzmodell (per user)
* gebotener Funktionsumfang
* Vendor-Lock-In / Exit-Strategy
* Möglichkeit zur Datenmigration
* Datenschutz, Sicherheit, Support, Wartung
* Verfügbarkeit und Skalierbarkeit
* Einführungskosten und Schulungskosten
* Schnittstellen und Kompatibilität
* Anpassungsmöglichkeiten an eigene Bedürfnisse

## Was sind typische Charakteristika eines Cloud Service?
1. On Demand Self Service: 
    * Selbstzuweisung von Leistungen 
2. Rapid Elasticity / Scalability: 
    * Funktionen können schnell und dynamisch bereitgestellt werden
    * aus Sicht der Benutzer erscheint die verfügbare Kapazität als unlimitiert
3. Broad network access: 
    * die Services sind über ein Netzwerk verfügbar
    * können über standardisierte Schnittstellen genutzt werden
4. Resource pooling: 
    * Ressourcen des Providers werden gebündelt
    * sind in der Regel virtualisiert
5. Measured Service: 
    * Qualität werden fortlaufend durch den Dienstanbieter überwacht
    * ermöglicht eine Transparenz der Nutzung des Cloudservice

## Was sind die Zugriffsbrechtigungen bei den verschiedenen Cloud Service Typen?
* IaaS - Voller Administrator Zugriff
* PaaS - Limitierter Administrator Zugriff
* SaaS - Rollen/Nutzungsbezogene Rechte

## Welche Deployment Modelle gibt es bei Cloud Services?
* Public Cloud
* Community Cloud
* Private Cloud
* Hybrid Cloud

## In welche zwei Bereiche wird die IT aufgeteilt?
* IT-Entwicklung
* IT-Betrieb

## Was sind die zwei wichtigsten Faktoren bei einer Evaluation?
* Grösse / Budget des Unternehmens
* Business Impact des Services / Software

## In welche 3 Phasen wird eine Evaluation unterteilt?
* Phase 1 - Anforderungen und Pflichtenheft erarbeiten
    * Beschaffungsteam bilden (betroffene Personen)
    * Planung (Ressourcen, Kosten, Termine, ...)
    * Anforderungen ermitteln (an die Lösung, an den Lieferanten)
    * Beurteilungskriterien aufstellen (KO-Kriterien, Wishlist, Prioritäten)
    * Randbedingungen festlegen (Infrastruktur, Know-How, Vorschriften)
* Phase 2 - Erweiterte Papier-Evaluation
    * Marktübersicht verschaffen (Long-List, Lösungen, Lieferanten, Hersteller)
    * Filterung der Long-List (KO-Kriterien, Top-Down, ergibt Short-List)
    * Offerten einholen und beurteilen (Grundlage für Kostenbeurteilung)
    * Entscheid über das weitere Vorgehen (Evaluation oder Eigenentwicklung)
* Phase 3 - Use Case Evaluation & Testen
    * Art der "Hands-On" Evaluation festlegen (Intern, Extern, Demo, Firmenbesuch)
    * Anwendungsfälle zur Beurteilung zusammenstellen (Typische, Häufige, Kritische)
    * Evaluation durchführen
    * Evaluationsbericht erstellen (Entscheidung Kauf/Einführung, Neue Iteration?)
    * Service / Software einführen

## Was ist eine Anforderung?
* beinhaltet eine Forderung im Bezug auf:
    * Funktionen, Daten, Mengen, Max. Kosten, Performance, Bedienung
    * Sicherheit und Kompatibilität, Konfigurationsaufwand, ...
* steht einem direktem Nutzen gegenüber:
    * kleinerer Kontrollaufwand, mehr Transparenz, Höhere Flexibilität, ...
* Nutzen lässt sich quantifizieren

## Was ist die umgekehrte Pyramide?
* von grob-granular (coarse-) oder feingranular (fine-grained)
* möglichst frühen und schnellen Ausschlus ungeeigneter Lösungen und Angebote
* allgemein gefasste Anforderungen sind typischerweise einfach zu verifizieren
* sehr spezifische Details sind oft schwierig zu prüfen
* Evaluationsaufwand reduzieren dadurch stark

## In welche Kategorien werden Anforderungen unterteilt?
* Functional Fit (so wenig wie möglich, aber so viel wie nötig)
* Flexibility (Benutzerfreundlichkeit, Skalierbarkeit, Anpassungsfähigkeit)
* Maturity (Entwicklungsstatus, Referenzprojekte, Erfahrung)
* Support (Standort, Qualität, Aus- und Weiterbildungsangebot, Dokumentation)
* Continuity (Benutzerbasis, Aktualisierungszyklus, Kundenbindungsmassnahmen)

## Was sind Anforderungen eines multinationalen Konzerns?
* Paralellität / Gleichzeitige Transaktionen
* Unterstützung verschiedener Sprachen
* Weltweiter Zugang / verschiedene Zeitzonen
* hohe Verfügbarkeit / Zero-Down-Time
* Gesetze und Datenschutzrichtlinien
* Unterstützung von verschiedenen Mandanten
* Unterstüzung verschiedener Währungen

## Von was hängt die Performance und Skalierbarkeit einer SW ab?
1. Aufteilung der Applikation in Layers und instanzierfähige Runtimekomponenten
2. Verteilung der Komponenten auf Rechner
3. Ausbau der Rechner: Anzahl Prozessoren und Speicher
4. Von der Multi-Prozess- und Multi-Userfähigkeit der Software

## Was sind Kriterien an den Support eines Services?
* Art des Supportes (Telefon, EMail, ...)
* Zuverlässigkeit und Reaktionszeit
* Training, Aus- und Weiterbildungsangebot
* Dokumentation für Benutzer und Entwickler

## Was sind Kriterien für die Continuity eines Services? 
* Grösse und Aktivität der Benutzerbasis
* Art der Lösung (Company- vs. Community-Driven)
* Transparenz (Code/Interfaces, Issue-Tracking, Roadmap)
* Aktualisierungszyklus
* Kundenbindungsmassnahmen

## Was ist die Standarddefinition für die Priorität?
* 0: irrelevant / kein ersichtlicher Nutzen 
* 1: geringer Nutzen, nicht wichtig
* 2: mittlerer Nutzen, Kompromiss denkbar
* 3: hoher Nutzen, nur schwer verzichtbar

## Was ist die Standarddefinition für den Erfüllungsgrad?
* 0: nicht erfüllt
* 1: für nächste Version geplant
* 2: Anpassung oder "work around" erforderlich
* 3: erfüllt die Anforderung weitgehend
* 4: erfüllt die Anforderung voll

## Welche Punkte sollten beim Festlegen der Randbedingungen beachtet werden?
* Bestehende Systemlandschaft und Schnittstellen
* Vorhandene Hardware, resp. Lieferanten
* Vorhandenes Know-How
* Gewohnheiten und Erfahrungen

## Was enthält eine Long List?
* Liste der näher zu analysierenden Softwarepakete
* Enthält Informationen zu Softwarepaketen
* Informationen in Form von Referenzen

## Wie lässt sich eine Marktübersicht verschaffen?
* Tagungen und Fachmessen besuchen
* Sich bei Firmen aus Ihrer Branche informieren
* Experten beiziehen (externe Hilfe)
* Keine klar ungeeignete Softwarepakete in der Auswahl haben 

## Was ist das Ziel der 3.ten Phase?
Software oder Service beschaffen

## Wie ist das Vorgehen bei der Hands-On Evaluation?
* Klären, welche Evaluationsart für das Paket sinnvoll und möglich ist
    * Evaluation auf eigenem Testsystem
    * Evaluation extern in Auftrag geben
        * Pro: Experten mit Erfahrung aus früheren Evaluationen
        * Kontra: Kosten, Zeitaufwand, Offenlegung kritischer Firmendaten
    * 3rd-Party Evaluation / Referenzsystem: 
        * System im Einsatz bei anderem Unternehmen analysieren
        * Erfahrungen der Mitarbeiter erfassen
    * Produktpräsentation:
        * Möglichkeit zum "Hands-On" beschränkt
        * Auf Aussagen von Vertreter limitiert
* Je nach Budget, Zeitrahmen und Personellen Ressourcen entscheiden

## Welche Anwendungsfälle müssen detailiert analysiert werden?
* Typisch und häufig Anwendungsfälle
* Kritische Punkte (benötigte Ressourcen, Business Impact)
* daraus sollten man Testfälle generieren

## Welche Informationen gehören in den Evaluationsbericht?
* Testergebnisse der getesteten Softwarepakete zusammenfassen
* Hauptkritikpunkte erfassen (falls vorhanden)
* Empfehlung an den Auftraggeber formulieren
* Entscheid über Kauf und Einführung durch Auftraggeber abgesegnet

