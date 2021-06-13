//variable and datatypes

let constant = 1
print(constant)
var variable1 : Int = 2
print (variable1)
var variable2 : Float = 3.4
print (variable2)
var v1, v2, v3 : Double
v1 = 0.9
v2 = 29.3
v3 = 5
print(v1)
print(v2)
print(v3)
var booleanVariable:Bool = true // false
print(booleanVariable)
var octa = 0o10
print(octa)
var hex: Int = 0xA5
print(hex)

// type aliases

typealias SmallIntAlias = UInt16
let min = SmallIntAlias.min
print(min)

typealias str = String
var s: str = "this is a string."
print(s)

// tuples
print("Tuples:")
let complex1 = (1.0, -2.0)

//access by index
let real1 = complex1.0
let imag1 = complex1.1
print("\(real1), \(imag1)")

//decompose
let (real2, imag2) = complex1
print("\(real2), \(imag2)")

//underscore ignore values
let color = ("Green", 822, 0)
let (name, code, _) = color
print("name: \(name), code: \(code)")

//name elements
let id = (name: "Samin", roll:1507099)
let name = id.name
let roll = id.roll
print("name is \(name) and roll: \(roll)")


//optionals

/*
var optionalInt: Int? = 42
optionalInt = nil
var optionalDouble : Double?
optionalDouble == nil
optionalDouble != nil

print(optionalDouble)

*/


let optionalInt: Int? = 42
let definitelyInt = optionalInt!

if let definitelyInt = optionalInt {
    print ("working.")
    print(definitelyInt)
}

var assumedInt: Int!
assumedInt = 42
print(assumedInt) // why some(42) is output

//cholbe na
/*
var implicitInt: Int = assumedInt
assumedInt = nil
implicitInt = assumedInt 
*/

//for loop
var it: Int = 5987
var save: Int = 0  // 0 na dile hocche na
for it in 1...5 {
    print(it)
    save = it
}
print(it)
print(save)
