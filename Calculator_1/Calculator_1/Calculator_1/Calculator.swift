//
//  Calculator.swift
//  Calculator_1
//
//  Created by EUNSUNG on 11/7/24.
//

import Foundation

// 수와 연산자들을 가지고 단순히 계산하여 값을 반환하는 책임
class Calculator {
    var numbers: [Int] = []
    var operators: [String] = []
    
    func appendNumber(num: Int) {
        numbers.append(num)
    }
    func appendOperator(op: String) {
        operators.append(op)
    }
    
    func calculateResult() -> String {
        
        var firstNum = numbers[0]
        var secondNum = 0
        
        for i in 1..<numbers.count {
            secondNum = numbers[i]
            firstNum = calculateNums(num1: firstNum, num2: secondNum, op: operators[i-1])
        }
        
        numbers.removeAll()
        operators.removeAll()
        
        return String(firstNum)
    }
    
    func calculateNums(num1: Int, num2: Int, op: String) -> Int {
        switch op {
        case "+": return num1 + num2
        case "ー": return num1 - num2
        case "×": return num1 * num2
        case "÷": return num1 / num2
        default: return 0
        }
    }
}
