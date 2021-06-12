// https://docs.swift.org/swift-book/LanguageGuide/Functions.html
// https://code.tutsplus.com/tutorials/swift-from-scratch-function-parameters-types-and-nesting--cms-23056
// https://www.dev2qa.com/ios-swift-function-external-and-internal-parameter-name-example/

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person:"Abir"))

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

// w/o parameter
func sayMyName() -> String {
    return "Walter White"
}
print(sayMyName())

// multiple parameters
func greet(person: String, alreadygreeted: Bool) -> String {
    if(alreadygreeted) {
        return greetAgain(person: person)
    }
    else {
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadygreeted: true))
print(greet(person: "Brian", alreadygreeted: false))
print(greet(person: "Samin"))

//without return values
func printGreet(person: String) {
    print("Hi, \(person)!")
}

printGreet(person: "Dave")
var myName: String = "Samin Yeasar"
printGreet(person: myName)

func voidPrint(name: String) -> Void {
    print("My name is \(name)")
}

voidPrint(name: myName)

// external and internal name
print("external and internal name example:")
func mult(x a: Int, y b: Int) -> Int {
    var res = a * b 
    return res
}

var res: Int = mult(x: 5, y: 2)
print(res)

//suppress function parameter external name
func multiple( _ a: Int, y b: Int) -> Int {
    var res = a * b
    return res
}

var c = multiple(13, y: 4)
print(c)

func power(_ a: Int, _ b: Int) -> Int {
    var r = 1
    for _ in 1...b {
        r = r * a
    }
    // b = b + 1 => change kora zabe na karon ekhane a ar b let constant
    return r
}

var ans = power(2, 3)
print("power function: \(ans)")

func change(_ a: Int) {
    var a = a // evabe let take var er moddhe newa zabe
    a = a + 1
    print(a)
}
change (9874957)

// default parameters
print("Default parameter example:")

func def(x: Int, fixd: Int = 100) -> Int {
    return x + fixd
}

res = def(x: 35)
print("result is \(res)")

// shorthand # from slide 35
// not working
/*
func bar (#p: Int) -> Int {
    return p;
}
print(bar(p: 4))
*/

//variadic parameters
func mean(_ numbers: Double ...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return (total/Double(numbers.count))
}

print("mean is: \(mean(10.8, 3.8, 4.5, 7.39, 85.9))")
