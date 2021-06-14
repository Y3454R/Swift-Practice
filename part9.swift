// STRING

import Foundation // necessary for hasSuffix and hasPrefix

print("String:")

var emptyStr = ""
print(emptyStr.isEmpty)

let constStr = "hello"
var char: Character = " "

for ch in "Hello" {
    print(ch)
    char = ch
}

print(char)

var str = "a"; str += "b"; str.append("i"); str += "r"
print(str)
// var cnt = countElements(str) // chole na
var cnt = str.count
print(cnt)

let multiplier = 2
let msg = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(msg)

let s1 = "Hello", s2 = "Hello"
print(s1 == s2)

let s = "Hello, playground"

if s.hasPrefix("Hello") { // true
    print("Prefix exists")
}

if s.hasSuffix("ground") { // true
    print("Suffix exists")
}
