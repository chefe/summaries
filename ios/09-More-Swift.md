# More Swift

## Was sind mathematische Beispiele für die folgenden Operatoren-Typen?
* `prefix`: Vorzeichen 
* `infix`: Plus
* `postfix`: Fakultät

## Welche zwei Kriterien sind bei einem Operator wichtig?
* precedence (Operatorvorrang)
* associativity (Assoziativität)

## Wie wird in Swift ein eigener Operator definiert?
```swift
infix operator +* {associativity left precedence 140 }
func +* (a: Int, b: Int) -> Int {
    return (a + 1) * b;
}

var result = 4 +* 5
println("result = \(result)")
```

## Wie kann ein eigener Fehler definiert werden?
```swift
enum VendingMachineError : Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
```

## Wie kann eine Funktion einen Fehler werfen?
```swift
func canThrowError() throws -> String {
    // ...
}
```

## Wie kann in Swift ein Fehler gefangen werden?
```swift
do {
    let x = try? canThrowError()
    // ...
} catch {
    // ...
}
```

## Wie kann eine Funktion definiert werden die einen Fehler weiterleitet?
```swift
func functionWithCallback(callback:() throws -> Int) rethrows {
    try callback()
}
```

## Wie werden Higher Order Functions in Swift angewendet?
```swift
let numbers = [1, 3, 6, 10, 15]
let result = numbers
    .filter({ $0 % 2 == 0 })  // filter even
    .map({ $0 * $0 })         // map to squares
    .reduce(0, { $0 + $1 })   // reduce to sum
print("result = \(result)")   // prints "result = 136"
```

## Welche Spezial-Optionen gibt Switch-Case?
* compound cases: `case "a", "A":`
* interval matching: `case 5..<12:`
* value binding und where clause: `case let (x, y) where x == y:`

## Wie kann eine where-clause bei einer for-Schlefe verwendet werden?
```swift
for i in 1...10 where i % 2 == 0 {
    print("i = \(i)")
}
```

## Was ist die Funktion des Schlüsselwort `guard`?
* ist ein spezielles if-else mit early exit
* if-Block wird nicht verschachtelt
* else-Block muss Kontrollfluss abgeben

```swift
funct greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!)
}
```

## Was ist die Funktion des Schlüsselwort `defer`?
* kann für zum Aufräumen verwendet werden
* Ähnlicher Zweck wie `finally` bei try-with-resources in Java

```swift
func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename9
        defer {
            close(file)
        }
        while let lin = try file.readline() {
            // process line
        }

        // close(file) is called here, at the end of the scope
    }
}
```

## Wie werden in Swift inout-Parameter angewendet?
```swift
func swapStrings(a: inout String, b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var x = "bye"
var y = "hello"
self.swapStrings(a: &x, b: &y)
print("\(x) - \(y)")
```

## Wie kann auf die Werte innerhalb eines Enums zugegriffen werden?
```swift
switch productBarcode {
    case let.upc(numberSystem, manufacturer, product, check):
        print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
    case let.qrCode(productCode):
        print("QR code: \(productCode).")
}
```

## Wie kann ein Enum seinen eigenen Wert verändern in Swift?
```swift
enum TriStateSwitch {
    case Off, Low, High

    mutating func next() {
        switch self {
            case .Off:
                self = .Low
            case .Low:
                self = .High
            case .High:
                self = .Off
        }
    }
}

var light = TriStateSwitch.Off
light.next() // Low
light.next() // High
```

## Welche Arten von Initializer gibt es?
* Default Initializers
    * für alle Properties einen Standardwert definiert wurde
    * keine eigenen Initializer definiert wurden
* Designated Initializer
    * initialisiert alle eigens definierten Properties
    * ruft einen Initializer der Superclass auf
    * meist nur einen oder wenige Designated Initializers
    * jede Klasse muss mindestens 1 Designated Initializer haben
* Convenience Initializer
    * Shortcut Initializer
    * muss letztendlich einen Designated Initializer Klasse aufrufen

## Wie wird in Swift ein Convenience Initializer definiert?
```
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
```

## Was ist ein Failable Initializer?
* falls die Initialisierung eines Objektes fehlschlagen kann
* erstellt ein Optional des Typs, welcher initialisiert wird
* initialisierung wird mit return nil abgebrochen

```swift
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe") // of type Animal?
let anonymousCreature = Animal(species: "")   // nil
```

## Was ist ein Required Initializer?
jede Unterklasse muss diesen Initializer implementieren

```swift
class SomeClass {
    required init() {
        // initializer implementation goes here
    }
}
class SomeSubclass : SomeClass {
    required init() {
        // subclass implementation of the required initializer goes here
    }
}
```

## Wie kann ein Property mit einer Closure initialisiert werden?
```swift
class SomeClass {
    let someProperty: SomeType = {
        // create a default value for someProperty inside this closure
        // someValue must be of the same type as SomeType
        returnsomeValue
    }()
}
```

## Was muss bei einem Deinitializer beachtet werden?
* Höchstens ein `deinit` pro Klasse
* Wird vom System beim löschen aufgerufen
* Darf nicht direkt aufgerufen werden
* Kein Aufruf von super
* nützlich zum Entfernen von Observers oder Schliessen von geöffneten Dateien

## Wie kann einer vorhandenen Klasse Funktionalität hinzugefügt werden?
```swift
extension Double {
    var km: Double { return self * 1000.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
let threeFeet = 3.ft
```

## Wie kann eine vererbte Methode überschrieben werden?
```swift
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
```

