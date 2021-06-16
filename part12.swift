//classes

// https://youtu.be/nmbMlNQVUu0

class Person {
    var name: String?
    var age: Int = 0
}

var matteo = Person()
let madbat = matteo

madbat.name = "Madbat"
//matteo.name

print(madbat.name!) //unwrapping
print(matteo.name!) //unwrapping

if matteo === madbat {
    print("true")
}


// stored properties
/*
class cell {
    let name: String
    var position: CellPoint?
    var score: Int = 0

    lazy var spa = Spa()
}

struct CellPoint {
    var x = 0.0
    var y = 0.0
}
*/
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"

print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is 0"

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is now 1280"

let vga = Resolution(width: 640, height: 480)
print(vga.width)


//Computed instances properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point (x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}
//shorthand declaration
/*
struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
*/

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

//type property

struct Path {
    static var maxLen: Int {
        return Int.max / 2
    }
}

class cell {
    class var maxNum: Int {
        return Int.max / 5
    }
}

let length = Path.maxLen
print("length: \(length)")

print(cell.maxNum)
var num = cell.maxNum
print(num)

/*
//not running :/
class User {
    var name = ""
    class var abc = "tenth"
}

user = User()
user.name = "John Doe"
let str = User.abc
print(str)
*/
