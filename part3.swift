// if else

print("if else:")

let temperature = 36

var feverish: Int
if(temperature >= 37) {
    feverish = 1
}
else if( temperature >= 22 && temperature <= 36) {
    feverish = 2
}
else {
    feverish = 3
}
print(feverish)


// Switch

print("switch:")

var x = 98

switch x {

case 1: print (1)
case 2: print (2)
case 3,4: print(3)
case 5...100 :
                print (4)
                fallthrough // na dile nicher case tay zabe na

case 98 : print("this is 98")
default: print(5)
    
}



// tuple

//var point = (0, 1)
print("switch with tuples:")

var point = (0, 0)

switch point {
    case (0, 0):
                print("x = 0, y = 0")
                fallthrough
    case (_, 0):
                print("y = 0")
                // fallthrough ekhane dile hoy na, karon pore value binding kora hoiche
    case let(x, y) where x == y:
                print("x==y")
    case (let x, let y) where x == 0 && y == 1:
                print("x = 0, y = 1")
    default:
            print("not matched")
}


point = (2,1)
switch point {
    case let(x,y) where x == y:
                                print("x==y")
    case let(x,y):
                    if(x == 0 && y == 1) {
                        print("x = 0, y = 1")
                    }
                    fallthrough // why not default is working without fallthrough
    default:
        print("not found")
}
