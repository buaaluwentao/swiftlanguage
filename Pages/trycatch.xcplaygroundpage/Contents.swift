//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum MyError: Error {
    case dividedByZero(String)
}

func divv(a: Int, b: Int) throws -> Int {
    if b == 0 {
        throw MyError.dividedByZero("aaaa")
    }
    return a / b
}

func test() {
    var result: Int?
    do {
        try divv(a: 1, b: 0)
    } catch {
        result = 0
    }
    
//    print(111)
}

test()

func test2() {
    var result: Int?
    do {
        result = try? divv(a: 1, b: 0)
    } catch {
        result = 0
    }
    
//    print(result)
}

test2()

func test3() {
    var result: Int?
    do {
        result = try! divv(a: 1, b: 0)
    } catch {
        result = 0
    }
    
//    print(result)
}

//test3()

func testBlkParamWithThrow(throws blk: () throws -> ()) rethrows -> Void {
    try blk()
}

do {
    try testBlkParamWithThrow {
        throw MyError.dividedByZero("xxx")
    }
} catch {
    
}

func test4() {
    var result: Int?
    do {
        result = try divv(a: 1, b: 0)
    } catch let error as MyError {
        print("error:" + error?.localizedDescription)
    } catch {
        print(result)
    }
    
//    print(result)
}

test4()
