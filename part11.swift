//Dictionaries

var dic = [Int : String]()
var emp : [String: Int] = [:] //slide er tay chole na

dic[15] = "fifteen"
emp["five"] = 5

var dic2 = [1: "one", 2: "two", 3: "three"]

emp = ["First" : 1, "Second" : 2, "Third" : 3]

/*
//errors
let sec: Int? = emp["Second"]
let last: Int? = emp["last"]

print("sec: \(sec) and last: \(last)")
*/
if(emp.isEmpty == false) {
    print(emp.count)
}

for(key, value) in dic2 {
    print("\(key): \(value)")
}

print(dic2.keys)

print(dic2.values)

print(dic2)

var varDic = ["First" : 25]
print(varDic)
varDic = ["Second" : 20]
varDic["Third"] = 16
print(varDic)
let old = varDic.updateValue(18, forKey: "Second")
// varDic.updateValue(18, forKey: "Second") //eta dileo hoy
print(varDic)
let rmv = varDic.removeValue(forKey: "Second")
//varDic.removeValue(forKey: "Second") // dileo hoy
print(varDic)

// constant dictionary (let constDictionary) te kichu change kora zay na

