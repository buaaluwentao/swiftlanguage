//: [Previous](@previous)

import Foundation
import CoreGraphics
import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

//as: 有保证的转型，编译期就可确定，保证不会出现运行时问题
//as?/as!: 非保证的转型，转型失败时后者可能发生崩溃

//is类型判断，可以返回Bool值

let aNum = 10 as CGFloat
let aView = UIButton() as UIView

print(aView)

switch (aView) {
    case let imageView as UIImageView:
        print("图片,\(imageView)")
        break
    case let button as UIButton:
        print("按钮\(button)")
        break
    default:
        break
}

let result = 10 is Int
print(result)


protocol Employee {
    var annualSalary: Int {get}
}

extension Employee {
    var biweeklySalary: Int {
        return self.annualSalary / 26
    }

    func logSalary() {
        print("$\(self.annualSalary) per year or $\(self.biweeklySalary) biweekly")
    }
}

class SoftwareEngineer: Employee {
    var annualSalary: Int

    func logSalary() {
        print("overridden")
    }
    
    init(annualSalary: Int) {
        self.annualSalary = annualSalary
    }
}

class SeniorSoftwareEngineer: SoftwareEngineer {
    override func logSalary() {
        print("SeniorSoftwareEngineer")
    }
}

let sarah: Employee = SeniorSoftwareEngineer(annualSalary: 100000)
sarah.logSalary() // prints: overridden
(sarah as Employee).logSalary() // prints: $100000 per year or $3846 biweekly

//(sarah as SoftwareEngineer).logSalary()
