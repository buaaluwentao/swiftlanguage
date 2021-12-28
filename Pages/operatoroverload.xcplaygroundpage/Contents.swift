//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

struct FTPoint {
    let x: Int
    let y: Int
    
    static func + (p1: FTPoint, p2: FTPoint) -> FTPoint {
        return FTPoint(x: p1.x + p2.x, y: p1.y + p2.y)
    }
    
    func test() {}
}

let p1 = FTPoint.init(x: 10, y: 10)
let p2 = FTPoint.init(x: 20, y: 20)

let p3 = p1 + p2

print("\(p3.x),\(p3.y)")
