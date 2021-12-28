//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


class FTDebugTest: CustomStringConvertible, CustomDebugStringConvertible {
    var description: String {
        "FTDebugTest"
    }
    
    var debugDescription: String {
        self.debugDescription
    }
}

let testDebug = FTDebugTest()

print(testDebug)
debugPrint(testDebug)
