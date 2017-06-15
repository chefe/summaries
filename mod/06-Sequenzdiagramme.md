# Sequenzdiagramme

## Was ist das Ziel für ein Sequenzdiagramm?
* dynamische Verhalten von Objekten einer Klasse zeigen
* Zusammenarbeit von Objekten zeigen

## In welche 2 Dimensionen wird ein Sequenzdiagramm aufgeteilt?
* horizontal: Interaktionspartner
    * Reihenfolge der Partner für eine übersichtliche Darstellung wählen
* vertikal: Zeitachse
    * Darstellung des zeitlichen Ablaufs der Kommunikation

## Was sind die Basiselement eines Sequenzdiagramm?
* Diagrammrahmen
    * Begrenzung des Diagramms
    * Angabe von Name
* Lebenslinie
    * gestrichelte Linie
    * von jedem Objekt nach unten
* Ausführungsspezifikation
    * Rechteck auf der Lebenslinie
    * Periode, in der ein Ineraktionspartner ein Verhalten ausführt
* aktives Objekt
    * Kasten mit Objekttyp
    * Doppelete linien rechts und links vom Name
    * Objekt mit eigenem Kontrollfluss
* Löschsymbol
    * X auf der Lebenslinie
    * Zeitpunkt zu dem ein Objekt gelöscht wird
* Kombiniertes Fragment
    * Aussehen wie Diagramrahmen
    * Stuerung des Kontrolfluss
    * Aufteilung des Diagramm
    * opt, alt oder loop als Spezialisierung
* Synchrone Kommunikation
    * Ausgefüllter Pfeil für Nachricht
    * Gestrichelter Pfeil für Antwort
* Asynchrone Kommunikation
    * Normaler Pfeil

## Was für Kombinierte Fragmente gibt es?
* Optionaler Ablauf (opt)
    * an Bedingung geknüpft
* Alternativer Ablauf (alt)
    * Existenz von mehrerer Ablaufmöglichkeiten
    * Bedingungen geben den Ablauf vor
* Schleifen (loop)
    * `loop (1,*)` als Fragmenttitel
    * Überwachungsbedingung wie bei Alternativem Ablauf
* Ausnahme-Interaktionen (break)
    * Überwachungsbedingung steuert Durchlauf der Interaktionen
    * Behandlung von Sonderfällen und Ausnahmen
* Nebenläufige Interaktionen (par)
    * Lokale Reihenfolge pro Operand muss erhalten bleiben

## Welche Schritte braucht es im Design und bei der Analyse von Sequenzdiagrammen?
* Analyse
    * grundsätzlicher Ablauf
* Design
    * präzise Beschreibung der Kontrollstrukturen
    * weitere Interaktionen zu Objekten aus Klassendesign
    * geänderte Interaktionen aufgrund zusätzlichen Assozationen

