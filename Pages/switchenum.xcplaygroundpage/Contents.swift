//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum Event {
    case stockData(String, String)
    case earnings(Int)
    
    func description() -> String {
        switch(self) {
        case var .stockData(str1, str2):
            str1 = "北京"
            return str1
        case let .earnings(num):
            return String(num)
        return ""
        }
    }
}

let x: Event = .stockData("经济数据1", "经济数据2")
print(x.description())

