//
//  Calculator.swift
//  SwiftUI_Practice
//
//  Created by EUNSUNG on 10/31/24.
//

import Foundation

class Calculator {
    var firstNum: Int = 0
    var secondNum: Int = 0
    
    func add() -> Int {
        return self.firstNum + self.secondNum
    }
    func subtract() -> Int {
        return self.firstNum - self.secondNum
    }
    func multiple() -> Int {
        return self.firstNum * self.secondNum
    }
    func divide() -> Int {
        return self.firstNum / self.secondNum
    }
}
