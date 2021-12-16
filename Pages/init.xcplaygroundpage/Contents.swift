//: [Previous](@previous)

import Foundation
import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

//指定初始化器，用于初始化所有非optional的属性
//必要初始化器，用于声明子类必须提供该初始化器
//便捷初始化器，一般用于为某些属性提供默认值

class InitTest {
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    required init() {
        self.name = "InitTest"
    }
}

class SonOfInitTest: InitTest {
    var age: Int = 0
    
    required init() {
        self.age = 10
        super.init()
    }
    
    init(age: Int) {
        self.age = age
        super.init(name: "SonOfInitTest")
    }
    
    override init(name: String) {
        super.init(name: name)
    }
}

class FTViewController: UIViewController {
    private let key: String
    
    init(key: String) {
        self.key = key
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("未实现")
    }
}

let a = FTViewController.init(key: "xxx")
