//
//  ViewModel.swift
//  Calculator_1
//
//  Created by EUNSUNG on 11/6/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var currentNumber: String = "0"
    @Published var isOperators: [String: Bool] = ["÷":false, "×":false, "ー":false, "+":false]
    
    func initCalculator() {
        currentNumber = "0"
    }
    
    func addNumber(num: String) {
        if currentNumber == "0" {
            currentNumber = ""
        }
        currentNumber += num
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
}
