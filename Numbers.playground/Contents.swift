import Cocoa

var str = "Hello, playground"

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum value for a 32-bit integer is \(Int32.max).")
print("The minimum value for a 32-bit integer is \(Int32.min).")

let point = (x: 1, y: 4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && point.y > 0:
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && point.y < 0:
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && point.y < 0:
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("Case not covered.")
}
