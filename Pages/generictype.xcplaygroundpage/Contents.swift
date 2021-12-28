//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//方法与范型
func swapValues<T>(a: inout T, b: inout T) {
    (b, a) = (a, b)
}

var a = 1
var b = 2
swapValues(a: &a, b: &b)

print("\(a)" + " " + "\(b)")

//类与范型

class MyStack<E> {
    private var eles = [E]()
    func add(newEle: E) {
        eles.append(newEle)
    }
    
    func pop() -> E? {
        eles.removeLast()
    }
}

let myStack = MyStack<Int>()
myStack.add(newEle: 10)
print(myStack.pop())

//协议定义范型

//protocol MyGenericProtocol {
//    associatedtype Ele
//    associatedtype Ele2
//
//    func test() -> Ele
//    func test2() -> Ele2
//}

//class MyGeneric<T>: MyGenericProtocol {
//    typealias Ele = Int
//    typealias Ele2 = T
//
//    func test() -> Int {
//        return 1
//    }
//
////    func test2() -> T {
////        return
////    }
//}
//
//print(MyGeneric().test())

protocol MyGenericProtocol {
    associatedtype Ele
    func add(ele: Ele)
}

class MyGeneric: MyGenericProtocol {
    func add(ele: Int) {
        
    }
}

MyGeneric.init().add(ele: 10)
