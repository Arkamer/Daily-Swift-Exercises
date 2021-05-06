import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreeting(to name: String) {
    print("Hello, \(name). Welcome to your playground.")
}
printPersonalGreeting(to: "Step")

func divisionDescriptionFor (numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)"
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
print(error)

print(divisionDescriptionFor(numerator: 8.0, denominator: 2.0))
print(divisionDescriptionFor(numerator: 8.0, denominator: 3.0, withPunctuation: "!"))

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let rectangle = base * height
    func divide() -> Double {
        return rectangle / 2
    }
    
    return divide()
}
print(areaOfTriangleWith(base: 3.0, height: 5.0))

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are \(theSortedNumbers.evens)\nThe odd numbers are \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Alice", "hey", "Ward"))
if let thename = middleName {
    print(thename)
}

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.count <=  10 else {
        print("Hey, \(name.first) \(name.middle?.first! ?? " "). \(name.last)!")
        return
    }
    print("Hey, \(middleName)!")
}
greetByMiddleName(fromFullName: (first: "Alice", middle: "Richardsgdgfd", last: "Ward"))

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for grocery in list {
        if grocery.hasSuffix("beans") {
            beans.append(grocery)
        } else {
            otherGroceries.append(grocery)
        }
    }
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans
result.otherGroceries

