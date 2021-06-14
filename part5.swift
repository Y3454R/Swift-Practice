//https://docs.swift.org/swift-book/LanguageGuide/Closures.html


// closures
print("without Closures:")

// slide er code chole na

let numbers = [1, 2, 3, 4, 5]

func backwards(i1: Int, i2: Int) -> Bool {
    return i1 > i2
}

var rev = numbers.sorted(by: backwards)
print(rev)

print("With Closures:")

var revFullyDeclaredClosure = numbers.sorted(by: {(i1: Int, i2: Int) -> Bool in return i1 > i2})

print("fully declared closures: \(revFullyDeclaredClosure)")

var revInferClosure = numbers.sorted(by: {(i1,i2) in return i1 > i2})

print("Infer closures: \(revInferClosure)")

var revImplicit = numbers.sorted(by: {(i1, i2) in i1 > i2})

print("Implicit returns: \(revImplicit)")

//Shorthand Argument Names

rev = numbers.sorted(by: {$0 > $1}) // optional parentheses: {($0 > $1)}
print("rev: \(rev)")

//Operator method

rev =  numbers.sorted(by: >)
print("rev: \(rev)")

// Trailing Closures

rev = numbers.sorted {$0 > $1}
//rev = sorted(numbers) {$0 > $1} // chole na
print("rev: \(rev)")


// Capturing values

print("Capturing values:")

func makeInc(forInc amount : Int, totalamount : Int) -> ()-> Int { // the function returns a function type
    var total = totalamount
    func inc() -> Int {
        total += amount
        return total
    }
    return inc
}

let incbyTen = makeInc(forInc: 10, totalamount: 100)
var x = incbyTen()
print(x)

// slide

func makeRepeat(valueToRepeat: Int) -> () -> [Int] {
    var capturedArray = [Int]() // ei line ta slide e vul dewa
    func repeater() -> [Int] {
        capturedArray.append(valueToRepeat)
        return capturedArray
    }
    return repeater
}

let makeRepeat3 = makeRepeat(valueToRepeat: 3)
var ara = makeRepeat3()
print("array: \(ara)")
ara = makeRepeat3()
print("array: \(ara)")

//autoclosure https://youtu.be/ZP4pEHtndFE?t=586 valomoto bujhi nai :(

/*
func simpleAssert(conditon: ()-> Bool, message: String) {
    if !conditon() {
        println(message)
    }
}
*/

// slide er code chole na

print("Autoclosure")

func simpleAssert(condition: @autoclosure () -> Bool, message: String) {
    if !condition() {
        print(message)
    }
}

simpleAssert(condition: 3 % 2 == 0, message: "3 isn't an even number.")


// slide er last er code bujhi nai
