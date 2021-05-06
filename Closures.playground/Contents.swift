import Cocoa

let volunteersCount = [1,3,40,32,2,53,77,13]
var sorted: [Int] = volunteersCount
sorted.sort { $0 < $1 }
sorted

func isAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteersCount.sorted { $0 < $1 }
print(volunteersSorted)

func format(numbers: [Double], using formatter: (Double) -> String = {"\($0)"}) -> [String] {
    var result = [String]()
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    
    return result
}


var numberOfTransformations = 0

let rounder: (Double) -> String = {
    (num: Double) -> String in
    numberOfTransformations += 1
    return "\(Int(num.rounded()))"
}

let volunteersAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
let roundedAveragesAsStrings = format(numbers: volunteersAverages, using: rounder)
let exactAveragesAsString = format(numbers: volunteersAverages)
print(numberOfTransformations)

let roundedAverages = volunteersAverages.map {
    (avg: Double) -> Int in
    return Int(avg.rounded())
}

let passingAverages = roundedAverages.filter {
    (avg: Int) -> Bool in
    return avg >= 10
}

let estimatedParticipation = passingAverages.reduce(5) {
    (estimationSoFar: Int, currentOrgAverage: Int) -> Int in
    print(estimationSoFar, currentOrgAverage)
    return estimationSoFar + currentOrgAverage
}

func makeCharacterRemover(for character: Character) -> (String) -> String {
    func removeFrom(_ input: String) -> String {
        return input.filter { $0 != character }
    }
    return removeFrom
}

let removeLowerCaseLs = makeCharacterRemover(for: "l")
let strangeGreeting = removeLowerCaseLs("Hello world!")

