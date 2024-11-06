//
//  ViewModel.swift
//  Calculator_1
//
//  Created by EUNSUNG on 11/6/24.
//

import SwiftUI

// 모델에서..
// 아무래도 새롭게 추가된 수들과, 연산자들을 가지고 있어야 되지 않을까?

class ViewModel: ObservableObject {
    private var calculator: Calculator = Calculator()
    
    @Published var currentNumber: String = "0"
    @Published var isOperators: [String: Bool] = ["÷":false, "×":false, "ー":false, "+":false]
    
    func initCalculator() {
        currentNumber = "0"
    }
    
    // 숫자 누를 때, 연산자가 한 개라도 true라면, 숫자와 연산자를 넘겨줌
    func addNumber(num: String) {
        if currentNumber == "0" {
            currentNumber = ""
        }
        
        let trueCheckOperators = isOperators.filter { $0.value == true }
        
        if !trueCheckOperators.isEmpty {
            let key = trueCheckOperators.first!.key
            
            calculator.appendNumber(num: Int(currentNumber)!)
            calculator.appendOperator(op: key)
            
            isOperators[key] = false
            currentNumber = num
        } else {
            currentNumber += num
        }
        
    }
    
    func toggleOperator(operation: String) {
        
        isOperators.map {
            if $0.key == operation {
                isOperators[$0.key] = true
            } else {
                isOperators[$0.key] = false
            }
        }
    }
    
    func caculateResult() {
        calculator.appendNumber(num: Int(currentNumber)!)
        currentNumber = calculator.calculateResult()
        isOperators.map {
            isOperators[$0.key] = false
        }
    }
}
