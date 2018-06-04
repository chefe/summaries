# Informations- und Datenqualität II

## Was ist das Ziel der Daten-Standardisation?
* Datenquellen müssen vereinheitlicht werden
* Standardisierung heisst oft auch Homogenisierung
* einheitliche Format der Daten alleine genügt nicht
* Daten müssen auch die gleiche Semantik haben
* Eliminieren von Rauschdaten
* Elimination von Stopwörter

## Was sind die Arbeitsschritte bei der Homogenisierung?
* Vervollständigen
* Bereinigen von Synonymen
* Bereinigung von Homonymen
* Verarbeitung analytisch
* Zusammenziehen
* Aufteilen
* Eliminierung von Rauschdaten
* Rechtschreibung und Schreibweisen
* einheitliche Darstellung
* Elimination von Stoppwörter
* Vereinheitlichung des Abwandungsformen

## Wie können Daten angereichert werden?
* demografische Daten
* Geocodedaten
* Produktcode
* Kundeninformationen
* Schlagwörter

## Was sind die Probleme von Dubletten?
* sind redundant
* verstossen Sie gegen die IQ-Dimension Wertschöpfung
* Konsistenz der Daten ist nicht mehr garantiert
* Anomalien können auftreten
* Dubletten sind negativ kostenwirksam
* Dubletten verfälschen Auswertungen und Prognose
* Können das Image einer Firma schädigen

## Wie können Dubletten erkannt, bzw. verhindert werden?
* physische Verhinderung durch `UNIQUE` oder `PRIMARY KEY` in der Dateneingabe
* logische Elimination durch Ausblendung via `DISTINCT` in der Datenausgabe
* Ermittlung durch `IF...` als exakte algorithmische Suche

## Wann können Dubletten gewollt sein?
* bei gewollter Mehrfachablage bei Verlosungen
* bei gewollter Vertuschung / Verfälschung
* bei Online-Registrierung zwecks Datenschutz

## Was versteht man unter Ähnlichkeitsmasse?
* umso grösser, je ähnlicher sich die beiden Vergleichsobjekte sind
* Masszahl wird meistens wie folgt angegeben
    * 0 - keine vermutete Übereinstimmung
    * 1 - Übereinstimmung

## Was versteht man unter Distanzmasse?
* umso grösser, je unähnlicher sich die beiden Vergleichsobjekte sind
* die Angabe von Masszahlen ist uneinheitlich

## Welche Möglichkeiten gibt es für die Muster- und Ähnlichkeitssuche?
1. Ermittlung durch SQL LIKE oder Reguläre Ausdrücke
2. Levenshtein-Distanz
3. Phonetische Suche / Kölner-Phonetik

## Wie lautet die Definition der Levenshtein Distanz?
* Anzahl Schritte, die nötig sind, um Zeichenkette A in Zeichenkette B zu überführen
* Zur Verfügung stehen die Primitiva:
    * Zeichen einfügen, Zeichen löschen und Zeichen verändern

## Wie wird die  Levenshtein Distanz berechnet?
|   | w | T | O | R |
|---|---|---|---|---|
| w | 0 | 1 | 2 | 3 |
| T | 1 | 0 | 1 | 2 |
| I | 2 | 1 | 1 | 2 |
| E | 3 | 2 | 2 | 2 |
| R | 4 | 3 | 3 | 2 |

## Wie ist der Soudex definiert?
\begin{figure}[H]
    \includegraphics[width=0.3\textwidth]{images/06A-Soudex.png}
\end{figure}

## Wie wird der Soundex der folgenden Wörter berechnet?
```
SELECT SOUNDEX ('Schneider') => S-536
SELECT SOUNDEX ('Snyder') => S-536
```

## Wie ist die Kölner Phonetik definiert?
\begin{figure}[H]
    \includegraphics[width=0.45\textwidth]{images/06B-Koelner-Phonetik.png}
\end{figure}

## Wie wird die Kölner Phonetik der folgenden Wörter berechnet?
```
SELECT SOUNDEX ('Schneider') => 8627
SELECT SOUNDEX ('Snyder') => 8627
```

## Welche drei Arten gibt es zur Dubletteneliminierung?
* Ignorieren
* Vermeiden
* Bereinigen

## Wie funktioniert der Minimum Union zur Dubletteneliminierung?
```
BEISPIEL:
Heinrich Müller, 55 Jahre
Heinrich Müller aus Berlin, 55 Jahre

RESULTAT: 
Heinrich Müller aus Berlin, 55 Jahre
```

## Wie funktioniert der Merge Operator zur Dubletteneliminierung?
```
BEISPIEL:
Heinrich Müller aus Berlin, Alter unbekannt
Heinrich Müller aus ???, 55 Jahre

RESULTAT: 
Heinrich Müller aus Berlin, 55 Jahre 
```

## Wie funktioniert die Konfliktlösung bei der Dubletteneliminierung?
```
BEISPIEL:
Heinrich Müller aus Bärlin, 55 Jahre
Heinrich Müller aus Berlin, 54 Jahre
Heinrich Mueller aus Berlin, 55 Jahre

RESULTAT: 
Heinrich Müller aus Berlin, 55 Jahre
```

## Was sind die Aufgaben des Monitorings?
* Messen und Steuern der Datenqualitätskennzahlen
* Alarmierung bei Regelverletzung
* Erkennen von Trends

## Welche fünf Monitor Strategien werden unterschieden?
1. Triggerbasiert
2. Replikationsbasiert
3. Zeitstempelbasiert
4. Log-basiert
5. Snapshot-basiert

