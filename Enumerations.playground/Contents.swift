import Cocoa

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.justify
//alignment = .right
/*
if alignment == .right {
    print("We should right-align the text!")
}
*/
switch alignment {
case .left:
    print("left aligned")
    
case .right:
    print("right aligned")
    
case .center:
    print("center aligned")

case .justify:
    print("justified")
}

TextAlignment.left.rawValue
TextAlignment.right.rawValue
TextAlignment.center.rawValue
TextAlignment.justify.rawValue
alignment.rawValue

// Create a raw value
let myRawValue = 30

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfuly created \(myAlignment) from \(myRawValue)")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum LightBulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
            
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature  is \(bulbTemperature)")

enum ShapeDimensions {
    // point has no associated value - it is dimensionless
    case point
    
    // square's associated value is the length of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    
    case triangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: width, height: height):
            return width * height
        case let .triangle(width: width, height: height):
            return width * height / 2
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * 4
            
        case let .rectangle(width: w, height: h):
            return w * 2 + h * 2
            
        case .triangle:
            return 0
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var triangleShape = ShapeDimensions.triangle(width: 5.0, height: 6.0)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \([pointShape.area()])")
print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectShape.perimeter())")
print("triangle's area = \(triangleShape.area())")
