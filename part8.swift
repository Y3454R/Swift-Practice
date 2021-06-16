// Structures

print("Structures:")
struct CellPoint {
    var x = 0.0
    var y = 0.0
}

var a = CellPoint(x: 1.0, y: 2.0) ; var b = a // ek line e semicolon dile hoy
b.x = 3.0
print("a.x: \(a.x)")
