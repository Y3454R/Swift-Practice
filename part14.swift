// Subscripts

/*
https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html
*/

struct tt{
    let mul: Int
    subscript(index: Int) -> Int {
        return mul * index
    }
}

let tt3 = tt(mul: 3)
print("6 times 3 is: \(tt3[6])")

class daysOfWeek {
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set(newValue) {
            self.days[index] = newValue
        }
    }
}

var p = daysOfWeek()
print(p[0])
print(p[2])
p[1] = "AbirDay"
print(p[1])

var p1 = daysOfWeek()
print(p1[1])

/*
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)

matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
*/
