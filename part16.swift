//Initializers

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")

//Initialization Parameters

class cycle {
    let model: String
    var wheels: Int
    var sound: String
    init(model: String, para chaka: Int, _ sound: String) {
        self.model = model
        self.wheels = chaka
        self.sound = sound
    }
    
    
}


var hiru = cycle(model: "Hero", para: 4, "Cring cring")

print(hiru.model)
print(hiru.wheels)
print(hiru.sound)

//Failable initializers

class Car {
    let wheels: Int!
    init? (wheels: Int) {
        if wheels > 4 {
            return nil
        }
        self.wheels = wheels
    }
}

var car: Car? = Car(wheels: 10)
//print(car.wheels) // how to access car.wheels????

if let realCar = Car(wheels: 4) {
    // print("The car has \(realCar.wheels) wheels") // why's the output showing "optional(4)"?????
    print("The car has \(realCar.wheels!) wheels") // this is showing "4" 
}

var anotherCar = Car(wheels: 4)
//print(anotherCar.wheels()) //evabe hoy na
if anotherCar!.wheels != nil {
    // print(anotherCar!.wheels) // output: some(4)
    print(anotherCar!.wheels!) // output: 4
}

//default initializer

class Cars {
    var model = "Supercar"
    let wheels = 4
}

let carr = Cars()
print(carr.model)

//memberwise initializer

struct Wheel {
    var radius = 0.0
    var thickness = 0.0
}

let wheel1 = Wheel(radius: 3.0, thickness: 4.0)
print(wheel1)

// this is supposed to work according to https://docs.swift.org/swift-book/LanguageGuide/Initialization.html
// but not working in VS code
//https://stackoverflow.com/questions/56586158/struct-memberwise-initialization-omitting-values-for-properties-that-have-defa
//worked in Online Swift Playground

/*
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)

let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height)
// Prints "0.0 2.0"

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)
// Prints "0.0 0.0"
*/

//  designated and convenience initializers

// https://youtu.be/LxKZf0LyRbA

class Food {
    var name: String
    init (name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

let namedMeat = Food(name: "Bacon")
print(namedMeat.name)
let unnamedMeat = Food()
print(unnamedMeat.name)

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

// Initializer delegation

class Vehicles {
    var wheels: Int
    init (wheels: Int) {
        self.wheels = wheels
    }
    func desc() {
        print("Number of wheels: \(wheels)")
    }
}

class Cars2 : Vehicles {
    var model: String
    init (model: String) {
        self.model = model    // eta super.init er pore dile hobe na, slide e vul dewa
        super.init(wheels: 4)
        
    }
    convenience init() {
        self.init(model: "Supercar")
    }
}

var carrr = Cars2(model: "abir")
carrr.desc()

// two phase initialization bujhte hobe
// slide e kicccchu dewa nai

class someCass {
    var x: Int
    required init() {
        self.x = 5
    }
}

class subClass: someCass {
    var y: Int
    required init() {     // parameter diye  init kora zacche na
        self.y = 343
    }
}

var c = subClass()
print(c.x)
print(c.y)

// Deinitialization
// https://www.tutorialspoint.com/swift/swift_deinitialization.htm

var cnt = 0
class baseClass {
    init() {
        cnt += 1
    }
    deinit {
        cnt -= 1
    }
}

var p: baseClass? = baseClass()
print(cnt)
p = nil
print(cnt)
