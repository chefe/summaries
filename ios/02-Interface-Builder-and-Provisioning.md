# Interface Builder & Provisioning

## Was ist der Interface Builder?
* Visuelles Tool für GUIs, welches stark in XCode integriert ist
* Automatisches Ausrichen gemäss Apple-Look and Feel
* Standard-Widgets: `UILabel, UIButton, UISlider, ...`
* Dateiformat: `.storyboard`, früher primär: `.nib`-Datei (NextStep Interface Builder) resp. `.xib`
* relativ einfach zu bedienen, primär graphisch

## Welche 2 Layout-Optionen gibt es im Interface Builder?
* Fix (hart-codiert) z.B. Button bei (120, 230) mit Breite und Höhe
* Beschreibend, Trait Variations (Size Classes) & Auto Layout

## Wie werden Property und EventListener im Interface Builder angelegt?
* Property (`@IBOutlet`)
    * IBOutlet verbinden Layout mit Code
    * Verbindung ziehen im Interface Builder
    * Schlüsselwort `IBOutlet` bei der Deklaration
    * `@IBOutlet weak var myLabel: UILabel!`
    * Enge Bindung zwischen Interface Builder und Code
* EventListener (`@IBAction`)
    * Target/Action-Muster: Verbindet Action mit einem Ziel
    * Action z.B. Knopfdruck, oder neuer Wert (Methode)
    * Ziel ist ein Objekt, welches die Nachricht erhält
    * `@IBAction func sliderValueChanged(sender: UISlider)`
    * Konvention: Exakt ein Argument sender

## Wie wird mit Swift eine Alert-Box angezeigt?
```swift
let alertController = UIAlertController(
    title: "HSLU Info",
    message: "Here comes your message",
    preferredStyle: .alert)

let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
alertController.addAction(defaultAction)
self.present(alertController, animated: true, completion: nil)
```

## Welche Definitions-Prefixes gibt es bei Swift?
* NS* -> Foundation Framework
* UI* -> UIKit

## Was bedeutet die Abkürzung HIG?
* Human Interface Guidelines
* Definieren Look'n'Feel von Apple-Apps
* Strategie von Apple / Design-Grundsätze / Best-practices
* Guidelines / Vorschriften für das App-Store Review

## Welche Kapitel sind im iOS HIG?
```
App Interaction         Visual Design       Views
User Interaction        Icons and Images    Controls
System Capabilities     Bars                Extensions
```

## Wie funktioniert das Provisioning in XCode?
* Apple war bis Xcode 7 restriktiv(er):
    * Keine App auf Gerät ohne Zertifikat (Provisioning Profile)
    * Gerät & Programmierer müssen registriert sein für derartiges Zertifikat
* Seit Xcode 7: Free On-Device Development
    * Apps können ohne Registrierung auf eigene Geräte installieren
    * dazu ist nur eine gratis Apple-ID notwendig

