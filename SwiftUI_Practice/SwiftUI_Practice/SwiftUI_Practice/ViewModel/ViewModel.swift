//
//  ViewModel.swift
//  SwiftUI_Practice
//
//  Created by EUNSUNG on 11/4/24.
//

// 모델은 private?

import SwiftUI

class ViewModel: ObservableObject {
    private var calculator: Calculator = Calculator()
    
    @Published var firstValue: String = ""
    @Published var secondValue: String = ""
    @Published var result: Int = 0
    
    func add() {
        calculator.firstNum = Int(firstValue)!
        calculator.secondNum = Int(secondValue)!
        
        result = calculator.add()
    }
    func substract() {
        calculator.firstNum = Int(firstValue)!
        calculator.secondNum = Int(secondValue)!
        
        result = calculator.subtract()
    }
    func multiple() {
        calculator.firstNum = Int(firstValue)!
        calculator.secondNum = Int(secondValue)!
        
        result = calculator.multiple()
    }
    func divide() {
        calculator.firstNum = Int(firstValue)!
        calculator.secondNum = Int(secondValue)!
        
        result = calculator.divide()
    }
}
