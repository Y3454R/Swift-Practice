// Methods
// https://docs.swift.org/swift-book/LanguageGuide/Methods.html

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
    func add(toAdd: Int) {
        count += toAdd
    }
}

var counter = Counter()
counter.increment()
var x = counter.count
print(x)
counter.increment(by: 5)
print(counter.count)
counter.reset()
print(counter.count)
counter.add(toAdd: 78)
print(counter.count)

//Mutating methods for enumerations

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
            case .off:
                self = .low
            case .low:
                self = .high
            case .high:
                self = .off
        }
    }
}

var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight is now equal to .high
ovenLight.next()
// ovenLight is now equal to .off

//Mutating methods for structures

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy (x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }

}

var somePoint = Point(x: 1.0, y: 1.0) // let dile error hobe
somePoint.moveBy(x: 2.0, y: 3.0)
print(somePoint)

// evabeo hoy:
/*
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy (xx : Double, yy : Double) {
        x += xx
        y += yy
    }

}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(xx: 2.0, yy: 3.0)

*/

// implicit self property

struct PointSelf {
    var xx = 0.0, yy = 0.0
    mutating func moveByy(xx deltaX: Double, yy deltaY: Double) {
        self = PointSelf(xx: xx + deltaX, yy: yy + deltaY)
    }
}

var selfPoint = PointSelf(xx: 2, yy: 7)
selfPoint.moveByy(xx: 5, yy: 5)
print(selfPoint)
