// Inheritance
//https://docs.swift.org/swift-book/LanguageGuide/Inheritance.html#

//creating a superclass

class Vehicle {
    var currSpeed = 0.0 //stored property
    var description: String { // computed property
        return "Traveling at \(currSpeed) miles per hour"
    }
    func makeNoise() {
        //do nothing
    }
}

var someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

//creating a subclass

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
print(bicycle.hasBasket)

bicycle.currSpeed = 15.0
print("Bicycle: \(bicycle.description)")

class HeroCycle : Bicycle {       //nherits all of the properties and methods from Bicycle, which in turn inherits all of the properties and methods from Vehicle.
    var currNumOfPassengers = 0
}

let heroCycle = HeroCycle()
heroCycle.hasBasket = true
heroCycle.currNumOfPassengers = 2
heroCycle.currSpeed = 22.0
print("Hero Cyecle: \(heroCycle.description)")

class Train: Vehicle {
    override func makeNoise() {
        print ("Jhok Jhok")
    }
}

let train = Train()
train.makeNoise()

class hiruSaikel: HeroCycle {
    override func makeNoise() {
        print ("Ay shojoni chorbi amar hero cycle e!")
    }
}

var heroSaikel = hiruSaikel()
heroSaikel.makeNoise()

// You can prevent a method, property, or subscript from being overridden by marking it as final. Do this by writing the final modifier before the method, property, or subscript’s introducer keyword (such as final var, final func, final class func, and final subscript).
/*
final class Car: Vehicle {
    final var wheels: Int //can not be overridden
    final func engine() { //can not be overridden

    }
}
class Jeep: Car // ERROR
*/
