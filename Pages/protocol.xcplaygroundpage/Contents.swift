//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//require方法，所有实现类必须实现
//get set方法
//模版方法模拟抽象类
//协议合成，protocol<p1, p2>

protocol FTCalendarListViewControllerProtocol {
    func share(content: [String])
}

extension FTCalendarListViewControllerProtocol {
    func doShare(content: [String]) {
        self.share(content: content)
    }
}

class FTCalendarListViewController: FTCalendarListViewControllerProtocol {
    func share(content: [String]) {
        print(content.joined(separator: "\n"))
    }
}

FTCalendarListViewController().share(content: ["第一条", "第二条", "第三条"])

protocol TestProtocol: AnyObject {
    //必须使用var
    var name: String { get set }
}

class Test1: TestProtocol {
    //存储属性
    var name: String
    
    init() {
        self.name = ""
    }
}

class Test2: TestProtocol {
    //计算属性
    var name: String {
        get {
            
        }
        
        set {
            
        }
    }
}


