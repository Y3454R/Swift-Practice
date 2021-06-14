import Foundation

var ara = [Int]()
var ara2 : [Int] = []

var ara3 = Array(repeating: 0.0, count: 3)

//var ara4 = [Int](count: 3, repatedValue: 4) // not working
ara.append(5)
ara.append(6)

print("ar3:")
for i in ara3 {
    print(i)
}
print("ara")
for i in ara {
    print(i)
}
print("ara3: \(ara3)")
if(ara.isEmpty == false) {
    print(ara.count)
}

ara += [7]

print("3rd element of ara: \(ara[2])")

// slide er enumrate chole na

for(index, value) in ara.enumerated() {
    print("\(index) : \(value)")
}

ara.insert(99, at: 0) // atIndex hobe na

print("After insertion:")
for(index, value) in ara.enumerated() {
    print("\(index) : \(value)")
}


ara.remove(at: 2)

print("After remove:") //removeAt hobe na
for(index, value) in ara.enumerated() {
    print("\(index) : \(value)")
}

ara.removeLast()
print("After remove last :") 
for(index, value) in ara.enumerated() {
    print("\(index) : \(value)")
}

// let array dile kichui change kora zabe na
