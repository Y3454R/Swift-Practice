// loop
// https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html

//for loop

print("for loop:")

var it: Int = 5987
var save: Int = 0  // 0 na dile hocche na or "var save: Int?"
for it in 1..<5 {
    print(it)
    save = it
}
print(it) // pint 5987 
print(save)

for value in 1...10 {
    print(value)
}


// strride
var value: Int
print("to 5:")
for value in stride(from:0, to: 5, by: 1) { // to: 5 means <5
    print(value)
}

print("through 5:")
for value in stride(from:0, through: 5, by: 1) { // through: 5 means <= 5
    print(value)
}

print("reverse:")
for value in stride(from: 10, to: 0, by: -2) {
    print("value is: \(value)")
}

print("without a variable:")
value = 0
for _ in stride (from: 1, through: 6, by: 1) {
    value += 1;
    print(value)
}

// while loop

print("While loop:")

var x: Int
x = 0
while x < 3 {
    x += 1
    print(x)
}

// Do while loop
print("Do while loop:")
x = 0
repeat {
    print(x)
    x += 1 // x++ dile hocche na
} while x < 3

//Run hocche na
/*
var shuru : Int? = 0
var shesh : Int? = 0
var kotokore : Int? = 0

print("Shuru koi theke?")
shuru = Int(readLine()!)
print("Thambo koi?")
shesh = Int(readLine()!)
print("Kotokore barabo?")
kotokore = Int(readLine()!)

var value: Int = 0
var start : Int = shuru!
var end : Int = shesh!
var inc: Int = kotokore!
for value in stride(from: start, to: end, by: inc) {
    print(value)
}
print("baire: value = \(value)")
*/
