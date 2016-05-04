//: [Previous](@previous)

import Foundation
import UIKit
import XCPlayground

var str = "Hello, playground"

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))

button.setTitleColor(UIColor.greenColor(), forState: .Normal)
button.setTitle("Foo", forState: .Normal)

XCPlaygroundPage.currentPage.liveView = button

button.setTitle("Bar", forState: .Normal)

UIView.animateWithDuration(5.0) {
    button.alpha = 0
}

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
//: [Next](@next)
