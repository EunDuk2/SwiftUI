//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by EUNSUNG on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        
        VStack {
            TextFieldView(label: "첫 번째 수: ", placeHolder: "숫자를 입력하세요", text: $viewModel.firstValue)
            TextFieldView(label: "두 번째 수: ", placeHolder: "숫자를 입력하세요", text: $viewModel.secondValue)
            .padding(.bottom, 5)
            HStack {
                Spacer()
                ButtonView(label: "덧셈", caculator: viewModel.add)
                Spacer()
                ButtonView(label: "뺄셈", caculator: viewModel.substract)
                Spacer()
                ButtonView(label: "곱셈", caculator: viewModel.multiple)
                Spacer()
                ButtonView(label: "나눗셈", caculator: viewModel.divide)
                Spacer()
            }
            .background(.red)
            Text("결과: \(viewModel.result)")
                .background(.blue)
        }
        .padding()
        .frame(width: 300)
        .background(.green)
    }
}

struct TextFieldView: View {
    
    var label: String
    var placeHolder: String
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(label)
            TextField(placeHolder, text: $text)
        }
        .padding()
        .background(.yellow)
    }
}

struct ButtonView: View {
    
    var label: String
    var caculator: () -> ()
    
    var body: some View {
        Button(action: {
            caculator()
        }, label: {
            Text(label)
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
