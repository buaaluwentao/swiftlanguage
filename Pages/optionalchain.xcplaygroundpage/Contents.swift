//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class A {
    func fInA() -> String {
        return "fInA"
    }
}

class B {
    func fInB() -> String? {
        return "fInB"
    }
}

class C {
    let a: A? = A()
    let b = B()
}

let c = C()
print(c.a?.fInA().isEmpty)

print(c.b.fInB()?.isEmpty)

//Any 表示任何类型但是不包括nil
//var aNum: [Any] = [1, nil]

print(1 as Any)


