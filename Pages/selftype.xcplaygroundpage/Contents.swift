//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

print(Int.self == type(of: 1))
print(1 is Int)

var isInt = false
switch (1) {
    case let a as Int:
        isInt = true
    default:
        break
}

print(isInt)
