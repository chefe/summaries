# Protokolle, Tabellen, hierarchische Navigation, App-Publizierung

## Wie sind Interfaces in Swift umgesetzt?
* Protokoll gibt Methoden vor
* Protokoll erfüllt = "adopt a protocol"

## Wie wird ein Protokoll in Swift definiert?
```swift
protocol MyProtocol {
    func doSomething()
    func randomNumber() -> Double
    func isOddNumber(value : Int) -> Bool
}
```

## Wie wird ein Protokoll in Swift implementiert?
```swift
class MyClass : MyProtocol {
    func doSomething() { // nop }

    func randomNumber() -> Double {
        return 1.2345 // ;-)
    }

    func isOddNumber(value : Int) -> Bool {
        if value % 2 != 0 {
            return true
        } else {
            return false
        }
    }
}
```

## Was ist bei Swif-Protokollen speziell?
* nicht nur Klassen können Protokolle adoptieren, sondern auch Enums und Structs
* Protokolle können neben Funktions- und auch Property-Deklarationen enthalten
* Protokolle können von andern Protokollen erben
* Protokolle können Initializers (`init`) vorgeben

## Wie wird Typchecking und Casting in Swift angewendet?
* __Typcheck (is)__
    * Test auf Typ (Klasse, Protokoll, Enum, Struct)
    * Bsp.: `if anyObject is String { ...`
* __Casting (as)__
    * Bsp.: `var x = anyObject as String`
    * Zwei Varianten: `as!` und `as?`
    * `as!`: erzwingt Cast, (falls nicht möglich: Laufzeit-Fehler)
    * `as?`: Liefert nil zurück, falls Cast nicht möglich

## Welche Klassen sind für eine UITableView notwendig?
* `UITableViewController`
    * die Klasse hinter Tabellen
    * Subklasse von `UIViewController`
    * wichtiges Property: `UITableView* tableView`
* `UITableView`
    * `dataSource`: Datenlieferant (Protokoll: `UITableViewDataSource`)
    * `delegate`: Helfer für Benutzer-Action (Protokoll: `UITableViewDelegate`)
    * style (read-only)
        * `UITableViewStylePlain` oder `UITableViewStyleGrouped`
        * wird bei Objekterzeugung gesetzt (`init`-Methode)
* `UITableViewCellStyle`
    * `UITableViewCellStyleDefault`
    * `UITableViewCellStyleValue1`
    * `UITableViewCellStyleValue2`
    * `UITableViewCellStyleSubtitle`
* `UITableViewDataSource`
    * `tableView:cellForRowAtIndexPath`
    * `tableView:numberOfRowsInSection`
* `UITableViewDelegate`
    * Sektionen (Gruppen) verwalten
    * Kopf- und Fusszeile der Sektionen modifizieren
    * Tabellen-Zeilen bearbeiten
    * Tabellen-Zeilen umordnen

## Was ist der IndexPath?
* repräsentiert den Pfad zur aktuellen Tabellenzelle
* theoretisch beliebig verschachtelbar
* meistens wird jedoch via `row` und `section` zugegriffen

## Was ist die Aufgabe des `UINavigationController`?
* Container View Controller
* verwaltet Hierarchie von Views (hat einen Root-View-Controller)
* hat viele praktische Defaults (Navigation-Bar, Back-Button)
* wichtigste Methoden
    * `pushViewController:animated:`
    * `popViewControllerAnimated:`
    * `show:`

## Was ist die Grundidee hinter dem Stapeln von Views?
* Push:
    * Neue View wird auf einen Navigation Controller gedrückt
    * `pushViewController:animated:`
* Pop:
    * Alte View wird wieder von einen Navigation Controller entfernt
    * `popViewControllerAnimated:`
    * `popToRootViewControllerAnimated:`
    * `popToViewController:animated:`

## Wie geschieht die Datenübergabe von Master an Detail?
durch Delegation oder Setzung eines Properties im Detail-Controller

## Was muss bei einem `UITextField` beachtet werden?
* `resignFirstResponder`, damit Tastatur wieder weg geht
* `textFieldShouldReturn`, um auf die Return-Taste zu reagieren

