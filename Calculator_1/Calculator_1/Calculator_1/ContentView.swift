//
//  ContentView.swift
//  Calculator_1
//
//  Created by EUNSUNG on 11/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text(viewModel.currentNumber)
                    .frame(width: 360, height: 240, alignment: .bottomTrailing)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .font(.system(size: 90))
                
                Spacer()
                
                VStack {
                    HStack {
                        Button1(action: { viewModel.initCalculator() }, number: "C", backgroundColor: .whiteGray, foregroundColor: .black)
                        Button1(action: { }, number: "±", backgroundColor: .whiteGray, foregroundColor: .black)
                        Button1(action: { }, number: "%", backgroundColor: .whiteGray, foregroundColor: .black)
                        Button1(action: { viewModel.toggleOperator(operation: "÷") }, number: "÷", backgroundColor: .lightOrange, isOperating: viewModel.isOperators["÷"] ?? false)
                    }
                    HStack {
                        Button1(action: { viewModel.addNumber(num: "7") }, number: "7", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.addNumber(num: "8") }, number: "8", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.addNumber(num: "9") }, number: "9", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.toggleOperator(operation: "×") }, number: "×", backgroundColor: .lightOrange, isOperating: viewModel.isOperators["×"] ?? false)
                    }
                    HStack {
                        Button1(action: { viewModel.addNumber(num: "4") }, number: "4", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.addNumber(num: "5") }, number: "5", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.addNumber(num: "6") }, number: "6", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.toggleOperator(operation: "ー") }, number: "ー", backgroundColor: .lightOrange, isOperating: viewModel.isOperators["ー"] ?? false)
                    }
                    HStack {
                        Button1(action: { viewModel.addNumber(num: "3") }, number: "3", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.addNumber(num: "2") }, number: "2", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.addNumber(num: "1") }, number: "1", backgroundColor: .spaceGray)
                        Button1(action: { viewModel.toggleOperator(operation: "+") }, number: "+", backgroundColor: .lightOrange, isOperating: viewModel.isOperators["+"] ?? false)
                    }
                    HStack {
                        Button1(action: { viewModel.addNumber(num: "0") }, number: "0", backgroundColor: .spaceGray, width: 144, alignment: .leading)
                        Button1(action: { }, number: ".", backgroundColor: .spaceGray)
                        Button1(action: { }, number: "=", backgroundColor: .lightOrange)
                    }
                }
                Spacer()
            }
            
        }
    }
}

struct Button1: View {
    var action: () -> ()
    var number: String
    var backgroundColor: Color
    var foregroundColor: Color = .white
    var width: Double = 48
    var alignment: Alignment = .center
    var isOperating: Bool = false
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(number)
                .frame(width: width, height: 48, alignment: alignment)
                .padding(20)
                .background(isOperating ? foregroundColor : backgroundColor)
                .cornerRadius(100)
                .foregroundColor(isOperating ? backgroundColor : foregroundColor)
                .font(.system(size: 40))
                
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
