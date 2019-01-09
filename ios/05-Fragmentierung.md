# Fragmentierung, Adaptive Layouts, Lokalisierung, Mobile Usability

## Welche verschieden Eigenschaften haben die Apple Geräte?
* verschiedene Bildschirmgrössen, verschiedene Kameraauflösungen
* Beschleunigungsmesser, Gyroskop, Helligkeitssensor, Vibrator, Nähesensor
* Fingerabdruck-Sensor (Home-Button),  Stereo Speaker, FaceID, Safe Area (oben)
* NFC (Near Field Communication), 3D Touch (Druckempfindlicher Bildschirm)

## Welche Plattform-Limitierungen gibt es bei iOS?
* Speicherplatz 8 bis 256 GB
* max. App-Grösse: 4GB
* Speicherzugriff: Sandbox-Modell
* Kein Finder / Explorer
* Arbeitsspeicher 128MB bis 3GB

## Was sind einige erlaubte Hintergrundtasks?
* Audio, AirPlay und Picture-in-Picture
* Lokalisierungsdaten sammeln / verwenden (z.B. Navi)
* Voice over IP (VoIP)
* External accessory communication (Bluetooth 2.x und 3.x)
* Bluetooth 4.0 LE
* Background fetch
* Remote notifications

## Welche Auflösungen haben die verschiedenen iOS Geräte?
```
 Gerät                  Auflösung   Gerät                           Auflösung
---------------------------------   -----------------------------------------
 vor iPhone 4          320 x 480    iPhone X                      1125 x 2436
 iPhone 4(S)           640 x 960    bis iPad 2, mini (1st. gen.)   768 x 1024
 iPhone 5(S)           640 x 1136   iPad 3, Air, mini (2nd gen.)  1536 x 2048
 iPhone 6/7 (S)        750 x 1334   iPad Pro                      2048 x 2732
 iPhone 6/7 (S) Plus  1080 x 1920
```

## Welcher Trick hat Apple für Retnia Displays erfunden?
* nur jedes 2. Pixel direkt ansprechbar
* daher muss das Layout nicht angepasst werden

## Welche Auflösungs-Selektoren gibt es bei iOS?
* `@1x`: Normale Auflösung (nur noch alte Geräte)
* `@2x`: Doppelte Auflösung (Retina-Geräte)
* `@3x`: Dreifache Auflösung (neue Geräte mit hoher Auflösung)

## Was ist die Aufgabe der Auflösungs-Selektoren?
Assets in der optimalen Auflösung bereitstellen

## Wie wird mit den verschiedenen Bildschirm-Grössen und -Auflösungen umgegangen?
Size Classes & Auto Layout

## Welche Size-Classes gibt es?
* `Any`, `Regular` & `Compact`
* Standard ist `w:any` – `h:any` (beliebiger Bildschirm)
* `Compact` = iPhone Bildschirmbreite

## Wie kann die Sichtbarkeit anhand einer Size-Class festgelegt werden?
mit dem Property `Installed`

## Was ist Lokalisierung?
Übesetzen der App in mehrere Sprachen

## Was ist bei Lokalisierung zu beachten?
* Icon & Bilder: Verständlich in Ziel-Kultur?
* Textfluss rechts-links oder links-rechts?
* Datum-Darstellung, Sortierreihenfolge von Strings, Währungen, usw.

## Was wird lokalisiert?
* Nib-Dateien (windows, views, menus)
* statische & dynamischer Text
* Umbrüche gemäss der aktuellen Locale
* Icons, Grafiken, Sound (Anpasse an Kultur)
* Tabellendaten sortieren gemäss Locale

## Wie kann in Swift ein übersetzter Text genutzt werden?
```swift
self.title = NSLocalizedString("Title", comment: "Label: Title")
```

## Was ist die ISO-Definition von Usabilitiy?
Gebrauchstauglichkeit (engl. Usability) bezeichnet das Ausmass, in dem
ein Produkt, System oder ein Dienst durch bestimmte Benutzer in einem
bestimmten Anwendungskontext genutzt werden kann, um bestimmte Ziele
effektiv, effizient und zufriedenstellend zu erreichen.

## Welche 3 Faktoren haben Einfluss auf die Usability?
* Benutzer
* Aufgabe
* Werkzeug

## Was sind die Ziele der DIN ISO 9241?
* Vermeidung gesundheitlicher Schäden bei Bildschirm-Arbeiten
* Benutzern Ausführung von Aufgaben erleichtern

## Was sind die Grundsätze der Dialoggestaltung?
* Aufgabenangemessenheit
* Selbstbeschreibungsfähigkeit
* Steuerbarkeit
* Erwartungskonformität
* Fehlerrobustheit
* Individualisierbarkeit
* Lernförderlichkeit

## Was sind die Aktivitäten im Design-Prozess?
1. Analyse
2. Design
3. Prototyp
4. Evaluierung
5. Implementation
6. Veröffentlichung

