// Enumerations 
//https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html

print("=====Enumerations======")

enum compass {
    case north
    case south
    case east 
    case west
}

var direction = compass.west
direction = .east // changing the value to east

switch direction {
case .north:
    print("North")
case .south:
    print("South")
case .east:
    print("East")   
case .west:
    print("West")
    
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

//Associated values

var productBarcode = Barcode.upc(8, 85909, 51226, 3)

//productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode): // var dileo hoy, but mutated dekhay
    print("QR code: \(productCode).") 
}

// Optional is an... slide 54, bujhi nai

enum OptionalInt {
    case None
    case Some(Int)
}

var maybeInt: OptionalInt = .None
maybeInt = .Some(42)
print(maybeInt) // khali value ta kemne print kore???

// raw values

enum example1: Int {
    case Samin  = 1
    case Yeasar = 2
    case Abir = 3
}

let example1Value = example1.Abir.rawValue
print("Raw value of Abir: \(example1Value)")

enum Planet: Int {
    case mercury = 10, venus, earth, mars, jupiter, saturn, uranus, neptune
}

print("Earth: \(Planet.earth.rawValue)")

// not in slide: 
// Not working:

/*
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}
*/
