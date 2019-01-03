# Memory Management & iOS-Frameworks

## Was sind gebräuchliche iOS-Frameworks?
* MapKit (Karten)
* Contacts (Kontakte)
* EventKit (Kalender)

## Wie funktioniert das iOS Memory Management?
* mit Reference Counting (RC)
* kein Garbage Collector wie bei Mac OS X (oder Java)
* falls niemand mehr auf ein Objekt referenziert wird der Speicher freigegeben

## Was bedeuten die Abkürzungen ARC und MRC?
* MRC: Manual Reference Counting (bis iOS 5)
* ARC: Automatic  Reference Counting (seit iOS 5)

## Welche Methoden gibt es bei iOS für Manual Reference Counting?
* `alloc`: +1
* `retain`: +1
* `release`: -1
* `autorelease`: -1
* `retainCount`

## Was ist bei ObjC der Unterschied zwischen autorelease und release?
* `release `
    * sofort freigeben (d.h. 1 runter zählen)
* `autorelease`
    * verzögertes runterzählen
    * notwendig z.B. bei Rückgabewerten
    * Freigabe erfolgt im nächst äusseren Autorelease-Pool

## Welche Property Declaration Attributes gibt es im ARC-Modus?
* `strong`: besitzend (wie `retain` bei MRC)
* `weak`: nicht besitzend (wie `assign` bei MRC)
* `copy`: Kopie besitzend

## Was ist in Swift der Unterschied zwischen weak und unowned?
* `weak`:
    * wie in ObjC, Variable kann `nil` werden
    * d.h. Variable muss Optional sein
* `unowned`:
    * Variable kann nicht `nil` werden
    * d.h. verwenden wenn Variable kein Optional ist

## Wie können zyklische Abhängigkeiten verhindert werden? 
* Child -> Parent: `weak`
* Parent -> Child: `strong`

## Wie kann ein Objekt aufgeräumt werden bevor es gelöscht wird?
```swift
class Player {
    // ...

    deinit {
        // ...
    }
}
```

## Welche Klassen und Protokolle bietet das MapKit Framework?
* `MKMapView`: Karten-View
* `MKAnnotation` Protocol für eine Markierung
* `MKAnnotationView`: View zu einer Annotation
* `MKPinAnnotationView`: Subklasse von Annotation-View (mit Stecknadel Symbol)
* `MKMapViewDelegate`: muss auf der `UIMapView` gesetzt werden

## Welche Klassen und Protokolle bietet das Contact Framework?
* `CNContactPickerViewController`: VC zum Anzeigen des Pickers
* `CNContactPickerDelegate`: auf die Ereignisse des VC reagieren
* `CNContact`: Instanz eines Kontakts

## Welche Klassen und Protokolle bietet das EventKit Framework?
* `EKEventStore`: Instanz für Zugriff auf den Kalender und Erinnerungen 
* `EKEvent`: Instanz eines Event
* `EKEventEditViewController`: VC zum bearbeiten eines Kontakts
* `EKEventEditViewDelegate`: auf die Ereignisse des VC reagieren

