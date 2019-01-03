# Persistenz, automatisierte Tests & Inter-App Kommunikation

## Welche Mechanismen gibt es in iOS zur lokalen Persistenz?
* Dateisystem
* UserDefaults
* SQLite & Core Data

## Wohin kommen Dateien?
* Benutzer-Dateien: `<Application_Home>/Documents/`
* Support-Dateien: `<Application_Home>/Library/Application Support`
* Cache-Dateien: `<Application_Home>/Library/Caches`
* Temp. Dateien: `<Application_Home>/tmp`

## Wie kann ein Dokumentenpfad gefunden werden?
```swift
let manager = FileManager.default

let directories = manager.urls(
    for: .documentDirectory,
    in: .userDomainMask)

if let documentDirectory = directories.first {
    let filePath = documentDirectory.appendingPathComponent("MyFile.dat")
    print(filePath)
}
```

## Wie kann ein Array auf das FS geschrieben werden und auch wieder gelesen werden?
```swift
let myArray = ["Eins", "Zwei", "Drei"]
(myArray as NSArray).write(to: filePath, atomically: true)

if let readArray = NSArray(contentsOf: filePath) {
    print(readArray)
}
```

## Wie kann eine PropertyList auf das Dateisystem geschrieben werden?
```swift
do {
    let myArray = ["Eins", "Zwei", "Drei"]
    let namesData = try PropertyListSerialization.data(
        fromPropertyList: myArray,
        format: .xml,
        options: 0)
    try namesData.write(to: filePath)
}
catch { print("Something went wront: \(error)") }
```

## Wofür sind UserDefaults gedacht?
* kleine Datenmengen
* Z.B. Benutzereinstellungen, ApplikaMonszustand

## Wie können UserDefaults gespeichert und geladen werden?
```swift
UserDefaults.standard.set(42, forKey: "key")
UserDefaults.standard.integer(forKey: "key")
```

## Welche Accessor-Methoden gibt es für UserDefaults?
* `UserDefaults.standard.object(forKey: "key")`
* `UserDefaults.standard.integer(forKey: "key")`
* `UserDefaults.standard.string(forKey: "key")`
* `UserDefaults.standard.array(forKey: "key")`
* `UserDefaults.standard.url(forKey: "key")`

## Kann auf iOS SQLite verwendet werden?
* ja, Zugriff über C-Funktionen möglich
* wird jedoch nicht empfehlen
* wird im Core Data Framework benutzt

## Was ist Core Data?
* Object-Relatoonal Mapping Technologie von Apple
* bietet Unterstützung für Versionierung von Modellen
* ermöglicht Daten Migration

## Was sind die Features von Core Data?
change tracking, change propagation, lazy loading, automatic validation, 
schema migration, interface synchronization, grouping, filtering, 
storing objects in external data repositories, query compilation, 
version tracking, optimistic locking

## Welche zwei Test-Typen gibt es für iOS?
* Unit Tests
    * Zugriff auf Methoden, Funktionen, Variablen und Status der App
* UI Tests
    * Simulieren von UI Interaktionen aus User-Sicht

## Welche Unit-Test Macros gibt es für UnitTests?
```
XCTFail             XCTAssertEqualObjects   XCTAssertTrue
XCTAssertEquals     XCTAssertNil            XCTAssertThrows
```

## Welch Möglichkeiten gibt es für Inter-App Kommunikation?
* Andere App starten
    * Methode `open` von `UIApplication`
    * URLs für System-Apps: `http, mailto, tel, sms, youtube, itunes, ...`
    * Gibt es auch für Apps von Drittanbieter
* Document Interaction
    * Erlauben das Anzeigen oder Interagieren mit Dateien aus anderen Apps
    * Unterstützung für Dateitypen muss registriert werden
    * im `App-Delegate` können die Dateien entgegen genommen werden
* Universal Links
    * Öffnen von normalen http Links
    * Meta-File auf dem Server notwendig
    * User opt-out möglich

## Wie kann eine andere App gestartet werden?
```swift
let myURL = URL(string: "todolist://www.acme.com?Quarterly%20Report#200806231300")!
UIApplication.shared.open(myURL, options: [:], completionHandler: nil)
```

## Wie kann die eigene Apps von einer andere App aus gestartet werden?
URL Schema muss in der `Info.plist` hinterlegt werden

