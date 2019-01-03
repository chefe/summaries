# Swift Crash Course

## Wie wird eine Variable in SWIFT deklariert?
```swift
var myInt: Int = 42
var myOtherInt = 43
var myString: String = "Hello Swift"
var myDouble = 1.234
```

## Wie wird eine Konstante in Swift deklariert?
```swift
let myConstInt: Int = 77
let myConstDouble = 66.6
let myFixString = "constant"
```

## Wie wird in Swift ein Array definiert?
```swift
let names : [String] = ["Anna", "Alex"]
```

## Wie wird in Swift ein Dictionary definiert?
```swift
let ages : [String: Int] = ["Ruedi": 21, "Anna": 23]
```

## Wie wird in Swift ein optionaler Integer definiert?
```swift
let convNumb : Int? = Int("1234")
```

## Wie funktioniert Forced-Unwrapping (!)?
```swift
let convNumb : Int? = Int("1234")
let number : Int = convNumb!
```

## Wie wird ein Optional sicher ausgepackt?
```swift
let convNumb : Int? = Int("1234")
if convNumb != nil {
    let result = convNumb! + 2
    print(result)
}
```

## Wie funktioniert implicit unwrapping (!)?
```swift
let assumedString: String! = "An implictly unwrapped optional string."
let implicitString: String = assumedString
```

## Wie funktioniert der Optional-Chaining Operator (?.) in Swift?
```swift
let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
```

## Wie funktiniert der Nil Coalescing Operator (??) in Swift?
```swift
let john = a ?? b
```

## Wie wird ein Tupel in Swift definiert?
```swift
let testTuple = (77, true, "Hi")
var x = testTuple.0 + 1
var (number, flag, text) = testTuple
let inc = number + 7
var (_, justTheFlag, _) = testTuple
```

## Wie funktionieren enannte Tupels?
```swift
let anotherTuple = (id : 66, name : "Ruedi")
print("The id is \(anotherTuple.id)")
```

## Was ist der Unterschied zwischen Stored Property und Lazy Property?
```swift
class TestClass {
    var text = "hi" // stored property
    lazy var lazyString = "test" // lazy stored property
}

var testClass = TestClass()    // create instance
testClass.text = "bye"         // set new value
print(testClass.lazyStr)       // first access -> create
```

## Wie wird in Swift ein computed property definiert?
```swift
class TestClass {
    var message = "hi"
    var text : String {
        get {
            return message + " 2"
        }
        set {
            message = newValue + " 1"
        }
    }
}
```

## Wie können in Swift property observers definiert werden?
```swift
var value : Int = 7 {
    willSet {
        print("value will be set to \(newValue)")
    }
    didSet {
        print("value was set to \(value)")
    }
}
```

## Wie werden in Swift Klassen-Properties definiert?
```swift
class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty : Int {
        get { return 42 }
    }
    // class = in Subklasse überschreibbar
    class var overrideableCOmputedTypeProperty : Int {  
        get { return 42 }
    }
}
```

## Wie werden die gebräuchlichsten Kontrollstrukturen in Swift programmiert?
```swift
// if
if 4 < a {
    print("smaller")
}

// for-loop mit range
for i in 1...3 {
    print("i = \(i)")
}

// for-loop mit array
let names : [String] = ["Anna", "Alex", "Peter"]
for name in names {
    print("Hello, \(name)!")
}

// for-loop mit tuple
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// for-loop mit index
let names : [String] = ["Anna", "Alex", "Peter"]
for (index, name) in names.enumerated() {
    print("\(index+1). \(name)")
}

// while-loop
while x > 4 {
    // ...
}

// do-while-loop
repeat {
    // ...
} while x > 4


// switch-case
switch x {
    case 1:
        // ...
    case 2, 3:
        // ...
    default
        // ...
}
```

## Welche Control-Transfer-Statements gibt es bei Swift?
* `continue`: nächster Schleifendurchgang starten
* `break`: Abbruch bei Schleife oder switch-case
* `fallthrough`: Durchfallen zum nächsten Case
* `return`: Funktionen beenden Rückgabewert festlegen
* `throw`: Exception werfen

## Wie wird in Swift eine Funktion deklariert und implementiert?
```swift
func printHello() {
    println("Hello Swift")
}

func sayHelloTo(name: String) -> String {
    return "Hello, " + name
}

printHello()
var result = sayHelloTo(name: "Swift")
```

## Wie wird eine Funktion definiert, welche ein Tupel zurückgibt?
```swift
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [22, 4, 6, 42, 17, 1, 34])
print("min is \(bounds.min) and max is \(bounds.max)")
```

## Was ist in Swift bei Funktionsparameter speziell?
* sie sind immer konstant
* können zwei verschiedene Bezeichnungen (intern & extern)

## Wie wird zwischen Argument-Label und Parameter-Name unterschieden?
```swift
someFunc(extArgumentLabel localParamName: Int) { }
someFunc(extArgumentLabel: 7)   // ok
someFunc(7)                     // compile error
```

## Wie wird eine Funktion ohne Argument-Labels definiert?
```swift
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
let c = add(1, 2)
```

## Wie werden Default-Parameterwerte definiert?
```swift
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
join(s1: "HSLU", s2: "I", joiner: "-")  // provide all 3 args
join(s1: "HSLU", s2: "I")               // use default value
join(s1: "HSLU")                        // compile error
```

## Welche zwei Typen von Intitializier-Methoden gibt es?
* __Designated Initializers:__ Initialisieren alle Propertys
* __Convenience Initializers:__ Müssen schlussendlich einen Designated Initlializer aufrufen

## Wie wird in Swift ein Konstruktor/Intitializier definiert?
```swift
class MyClass : MyBaseClass {
    var name = "Test"
    var id: Int
    init(id: Int) {
        self.id = id
    }
    convenience init() {
        self.init(id: 42)
    }
}
```

