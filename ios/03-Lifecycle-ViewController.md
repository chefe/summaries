# App-Lifecycle, ViewControllers, Storyboards

## In welche Schichten wird iOS aufgeteilt?
* __Cocoa Touch__
    * OO-Datenstrukturen, Dateimanagement, Netzoperationen, Visuelle Infrastruktur
    * UIKit: View, Controllers, ...
    * in ObjC & neu Swift
* __Media__
    * 2D & 3D zeichnen, Audio, Video
    * in C & ObjC
* __Core Services __
    * Elementare Dienste: Dateizugriff, elementare Datentypen, Sockets
    * vor allem in C
* __Core OS__

## Welche App-Zustände gibt es bei iOS?
* __not running:__ Nicht gestartet oder terminiert
* __Inactiv:__ Läuft im Vordergrund (ohne Events), meist kurz während Übergang
* __Activ:__ Läuft im Vordergrund
* __Backgroung:__ Läuft im Hintergrund (temporär)
* __Suspended:__ Background, kein Code ausgeführt


## Was sind wichtige Funktion, welche im `UIApplicationDelegate` definiert sind?
```
application:willFinishLaunchingWithOptions      applicationDidEnterBackground
application:didFinishLaunchingWithOptions       applicationWillEnterForeground
applicationDidBecomeActive                      applicationWillTerminate
applicationWillResignActive                     applicationDidFinishLaunching
```

## Welche Hintergrund-Tasks sind erlaubt?
* Audio Player / Recorder
* Location (e.g. Navigation-App)
* Voice over Internet Protocol (VoIP)
* News apps: Download von neuen Inhalten
* Apps welche regelmässige Nachrichten von externen Geräten bekommen (e.g. Bluetooth)
* Fetch (Daten im Hintergrund holen)

## Wo müsen diese Hintergrund-Tasks definiert werden?
`UIBackgroundModes` in der Datei `Info.plist` der App

## Welche App-Eigenschaften sind in der Info.plist definiert?
```
App-Name                Icon-Dateienamen    Bundle-Name
Exec-Datei-Name         Bundle ID           Bundle-Version
```

## Wie heissen die wichtigsten Properties im UIViewController?
* __nibName:__ kann nil sein (default: nib und Controller heissen gleich)
* __view:__ die view, welcher dieser Controller steuert
* __title:__ wichtig bei Navigation: Default für Titel NavigationBar & Back-Button

## Welche Properties im UIViewController sind für ModalViews wichtig?
```
modalViewController     modalTransiIonStyle
```

## Welche Properties im UIViewController sind für Navigation & Tabs wichtig?
```
navigaIonController     navigaIonItem       toolbarItems
tabBarController        tabBarItem
```

## Welche Methoden betreffend der View können überschrieben werden?
```
viewWillAppear          viewDidAppear       viewWillDisappear
viewDidDisappear        didReceiveMemoryWarning
```

## Welche drei Varianten gibt es, wenn eine View geladen wird?
1. Methode `loadView` selber implementieren
2. Storyboard oder nib-Datei existiert
3. Default implementierung mit leerer View

## Welche zwei Arten von View Controllers gibt es?
* __Content View Controller__
    * Stellen Inhalt dar: "Views"
    * z.B.: `UIViewController, UITableViewController`
* __Container View Controllers__
    * Arrangieren Inhalt von anderen ViewControllers
    * typischerweise Content ViewControllers
    * z.B.: `UINavigationController, UITabViewController, UISplitViewController`

## Welche spezialisierungen des UIViewController existieren?
```
UITableViewController   UINavigationController  UITabBarController
UIPageViewController    UISplitViewController   UIPopoverController
```

## Was ist ein Modal View Controller?
* Teil der Klasse `UIViewController`
* d.h. UIViewController kann auch eine Art Container View Controller sein
* öffnet neue View über der aktuellen View

## Wie kann ein ViewController manuell angezeigt werden?
1. ViewController Objekt erstellen, welches angezeigt werden soll
2. `modalPresentationStyle` des neuen VC Objektes setzen
3. `modalTransitionStyle` des neuen VC Objektes setzen
4. die Methode `presentViewController:animated:completion:` aufrufen

## Welche Presentation Styles gibt es für ViewControllers?
* `UIModalPresentationFullscreen`
* `UIModalPresentationPageSheet`
* `UIModalPresentationFormSheet`

## Wie kann zu einem anderen View Controller geweselt werden?
```swift
self.show(viewController, sender: Any)
self.present(viewController, animated: true, completion: nil)
```

## Wie kann zum vorherigen View Controller zurückgekehrt werden?
```swift
self.dismiss(animated: true, completion: nil)
```

## Was ist eine Scene?
* 1 Screen
* iPhone: "1 Szene = 1 voller Bildschirm"
* hinter jeder Szene steht ein ViewController

## Für was steht die Klasse UIStoryboardSegue?
* Ausgesprochen wie Segway
* Übergang zwischen zwei Szenen
* verschiedene Styles sind möglich

## Welche Styles von Segues gibt es?
* Show (Push): Modal oder Push
* Show Detail (Replace)
* Present Modally
* Present as Popover

## Was ist "segue unwind"?
* zurück zum ViewController, von dem man hergekommen ist
* Rücksprungziel wird automatisch gewählt
* benötigt leere Marker-Methode; Signatur muss genau so sein

```swift
@IBAction func back(segue: UIStoryboardSegue) { // ... }
```

