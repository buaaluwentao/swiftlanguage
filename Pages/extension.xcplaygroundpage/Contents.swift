//: [Previous](@previous)

import Foundation
import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

//为协议添加限制
//extension Collection where Iterator.Element: TextRepresentable {
//
//}

//扩展既有类
extension Notification.Name {
    static let valueChanged = Notification.Name(rawValue: "valueChanged")
}

//更优雅的使用seletor
extension UIViewController {
    @objc fileprivate static func clicked() {
        
    }
}

fileprivate extension Selector {
    static let btnClicked = #selector(UIViewController.clicked)
}

let button = UIButton()
button.addTarget(UIViewController.self, action: Selector.btnClicked, for: .touchUpInside)

print("finished ...")


