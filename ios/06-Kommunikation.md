# Kommunikation, Closures, Nebenläufigkeit

## Welche Klassen werden für die Kommunikation bereitgestellt?
* `URLConnection`
    * unterstützt sowohl synchrone als auch asynchrone Kommunikation
    * wenn möglich asynchrone Kommunikation verwenden
* `URLSession`
    * Modernere Version von `URLConnection`
    * funktioniert mit Closures oder Delegates

## Was bedeutet die Abkürzung XML?
eXtensible Markup Language

## Was ist zu tun für simples XML-Parsing?
1. Parser mit gewünschter URL initialieren
2. Delegate von XMLParser setzen
3. Delegate implementieren
4. Parser starten (Methode `parse`)
5. Methode `parser(didStartElement:...)` wird für jedes Element einmal aufgerufen

## Welche Protokolle müssen für eine `UIPickerView` adaptiert werden?
* `UIPickerView`
    * Properties: `delegate` und `dataSource`
* `UIPickerViewDelegate`
    * `pickerView(_:titleForRow:forComponent:)`
* `UIPickerViewDataSource`
    * `numberOfComponents(in:)`
    * `pickerView(_:numberOfRowsInComponent:)`

## Was versteht iOS unter App Transport Security?
* seit iOS 9 ist https mit TLS 1.2 und Forward Secrecy per Default Pflicht
* falls nur http gewünscht: URL in `Info.plist` genehmigen

## Wie können mit Swift JSON Objekte kodiert und dekodiert werden?
```swift
JSONSerialization.jsonObject(with:options:)
JSONSerialization.data(withJSONObject:options:)
```

## Wie wird in Swift ein try-catch implementiert?
```swift
do {
    try expression
    //
} catch pattern1 {
    //
} catch pattern2 where condition {
    // 
}
```

## Wie funktioniert JSON-Parsing mit Codable?
```swift
struct Person: Codable {
    var firstName: String
    var lastName: String
}
let model = try JSONDecoder().decode([Person].self, from: data)
```

## Wie werden Closures in Swift definiert?
```swift
let oneFrom: (Int) -> Int = {
    (anInt: Int) -> Int in
    return anInt - 1
}
```

## Was kann bei einer Closures alles weggelassen werden?
_Fast alles, siehe unten 4x die gleiche Closure_

```swift
let c1 : (Int) -> Int = { (i : Int) -> Int in return i - 1 }
let c2 = { (i : Int) -> Int in return i - 1 }
let c3 = { (i : Int) -> Int in i - 1 }
let c4 = { $0 - 1 }
```

## Was ist der Vorteil von Trailing Closures?
_Closures können fast wie Methoden geschrieben werden_

```swift
func myTrailingClosureFunc(i: Int, closure: () -> Void) {
    closure()
    print(i)
}

myTrailingClosureFunc(i: 7) {
    print("trailing closure impl!")
}
```

## Was versteht iOS unter Escaping Closures?
* Closures als Funktionsargumente sind per Default noescaping
* d.h. sie können nicht nach dem Verlassen der Funktion aufgerufen werden
* Deklaration: Escaping Closures mit `@escaping`
* Escaping Closure darf auch ausserhalb der Funktion aufgerufen werden
* Escaping ist potentiell aufwändig für den Compiler
* da ggf. viel Zustand notwendig ist, da Closures capturing sind

## Wie werden die Begriffe Thread, Process und Task definiert?
* thread = separate path of execution for code
* process = running executable, which can encompass multiple threads
* task = abstract concept of work that needs to be performed

## Was ist GCD?
* Grand Central Dispatch
* Aufgabe ist die paralellen Code-Ausführung
* ist eine Sammlung von C-Funktionen
* arbeitet mit Closures
* wird in Swift vollständig abstrahiert

## Wie wird GCD benutzt?
```swift
let myQueue = DispatchQueue(label: "ch.hslu.ios.MyQueue")
myQueue.async { print("Do some work here.") }
print("The first block may or may not have run.")
myQueue.sync { print("Do some more work here.") }
print("Both blocks have completed.")
```

## Was sind Operation Queues?
* Regulieren die Ausführung von Operation Objects
* unter Berücksichtigung von deren Prioritäten und Abhängigkeiten
* Verwalten die dazu notwendigen Threads
* benutzen Grand Central Dispatch

## Was ist die Grundidee Operation Queues?
1. Nebenläufige Aufgaben in Operations definieren
2. Operations einer Operation Queue hinzufügen
3. Operation Queue kümmert sich um Operations und führt diese aus

## Was ist der Unterschied zwischen GCD und Operation Queues?
* grundsätzlich Geschmacksache
* Gründe für Operation Queues könnten sein:
    * stärkere Abstraktion
    * Arbeiten mit Objekten
* Gründe für GCD könnten sein:
    * GCD bietet mehr Möglichkeiten als Operation Queues
    * GCD generiert weniger Overhead
    * GCD ist etwas performanter als Operation Queues

