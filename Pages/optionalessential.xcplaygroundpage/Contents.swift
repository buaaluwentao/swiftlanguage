//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


var a: Int? = 1

a = .none

a = .some(10)

print(a!)

if let a = a {
    print(a)
}

switch a {
case let a?:
    print(a)
case nil:
    print("nil")
}

a = Optional<Int>.init(100)

switch a {
case var .some(intA):
    intA = 1000
    print(intA)
    
case let .none:
    print("nil")
}
