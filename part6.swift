//This should be learned after learning  Structures

// https://youtu.be/SjS1Rp0LetE?t=629
//https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html

// Advanced Operators
print("Advanced Operators:")

struct Vector3D {
    var x = 0.0, y = 0.0, z = 0.0
}

prefix operator +++

extension Vector3D {
    static func + (v1: Vector3D, v2: Vector3D) -> Vector3D {
        return Vector3D(x: v1.x + v2.x, y: v1.y + v2.y, z: v1.z + v2.z)
    }

    static prefix func - (vector: Vector3D) -> Vector3D {
        return Vector3D(x: -vector.x, y: -vector.y, z: -vector.z)
    }

    static func += (left: inout Vector3D, right: Vector3D) {  // ekhane kichu return korte holo na ken???
        left = left + right
    }
    
    static prefix func +++ (vector: inout Vector3D) -> Vector3D {
        vector += vector
        return vector
    }
    
}

let vector1 = Vector3D(x: 1.0, y: 2.0, z: 3.0)
let vector2 = Vector3D(x: 4.0, y: 5.0, z: 6.0)
var sum = vector1 + vector2
print("sum: \(sum)")

let negVector = -vector1
print("negVector: \(negVector)")

var original = Vector3D(x:1.0, y: 2.0, z: 3.0)
let vectorToAdd = Vector3D(x: 1.0, y: 1.0, z: 1.0)

original += vectorToAdd
print("original: \(original)")


var toBedoubled = Vector3D(x: 2.0, y: 4.0, z: 8.0)
let afterDoubling = +++toBedoubled
print("after using +++ operator: \(afterDoubling)")


