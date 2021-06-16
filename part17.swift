// ARC
// https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html

/*
class Person1 {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person1?
var reference2: Person1?
var reference3: Person1?

reference1 = Person1(name: "John Appleseed")
// Prints "John Appleseed is being initialized"

// Because the new Person instance has been assigned to the reference1 variable, there’s now a strong reference from reference1 to the new Person instance. Because there’s at least one strong reference, ARC makes sure that this Person is kept in memory and isn’t deallocated.
//If you assign the same Person instance to two more variables, two more strong references to that instance are established:

reference2 = reference1
reference3 = reference1
//There are now three strong references to this single Person instance.

//If you break two of these strong references (including the original reference) by assigning nil to two of the variables, a single strong reference remains, and the Person instance isn’t deallocated:

reference1 = nil
reference2 = nil
//ARC doesn’t deallocate the Person instance until the third and final strong reference is broken, at which point it’s clear that you are no longer using the Person instance:

reference3 = nil
// Prints "John Appleseed is being deinitialized"

// strong reference cycle
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}
/*
Every Person instance has a name property of type String and an optional apartment property that’s initially nil. The apartment property is optional, because a person may not always have an apartment.

Similarly, every Apartment instance has a unit property of type String and has an optional tenant property that’s initially nil. The tenant property is optional because an apartment may not always have a tenant.

Both of these classes also define a deinitializer, which prints the fact that an instance of that class is being deinitialized. This enables you to see whether instances of Person and Apartment are being deallocated as expected.

This next code snippet defines two variables of optional type called john and unit4A, which will be set to a specific Apartment and Person instance below. Both of these variables have an initial value of nil, by virtue of being optional:
*/

var john: Person?
var unit4A: Apartment?

//You can now create a specific Person instance and Apartment instance and assign these new instances to the john and unit4A variables:

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

//You can now link the two instances together so that the person has an apartment, and the apartment has a tenant. Note that an exclamation point (!) is used to unwrap and access the instances stored inside the john and unit4A optional variables, so that the properties of those instances can be set:

john!.apartment = unit4A
unit4A!.tenant = john

//Unfortunately, linking these two instances creates a strong reference cycle between them. The Person instance now has a strong reference to the Apartment instance, and the Apartment instance has a strong reference to the Person instance. Therefore, when you break the strong references held by the john and unit4A variables, the reference counts don’t drop to zero, and the instances aren’t deallocated by ARC:

john = nil
unit4A = nil

//Note that neither deinitializer was called when you set these two variables to nil. The strong reference cycle prevents the Person and Apartment instances from ever being deallocated, causing a memory leak in your app.

*/

// weak references

/*

class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?          // weak references
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

john = nil

unit4A = nil

*/

// unowned references

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer // unlike weak, always have to keep a value
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var john: Customer?
john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)

john = nil
