import UIKit

class A {
    let name: String = ""
    
    //下标
    subscript(index: Int) -> String? {
        return String(index)
    }
}

let a = A()
print(String.init(describing: a[0]))
