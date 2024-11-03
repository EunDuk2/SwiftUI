//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by EUNSUNG on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var num1: String = ""
    @State var num2: String = ""
    @State var result: Int = 0
    
    var body: some View {
        
        // 레이블 -> 첫 번째 수: 텍스트필드 -> text field1
        // 레이블 -> 두 번째 수: 텍스트필드 -> text field2
        // 버튼 -> 덧셈 뺄셈 곱셈 나눗셈
        // 레이블 -> 연산 결과: 100
        
        VStack {
            // 뷰를 재사용
            TextFieldView(label: "첫 번째 수: ", placeHolder: "숫자를 입력하세요", text: $num1)
            TextFieldView(label: "두 번째 수: ", placeHolder: "숫자를 입력하세요", text: $num2)
            .padding(.bottom, 5)
            HStack {
                Spacer()
                // 뷰를 재사용
                ButtonView(label: "덧셈", caculator: add)
                Spacer()
                ButtonView(label: "뺄셈", caculator: minus)
                Spacer()
                ButtonView(label: "곱셈", caculator: multiple)
                Spacer()
                ButtonView(label: "나눗셈", caculator: divide)
                Spacer()
            }
            .background(.red)
            Text("결과: \(result)")
                .background(.blue)
        }
        .padding()
        .frame(width: 300)
        .background(.green)
    }
    
    func add() {
        result = Int(num1)! + Int(num2)!
    }
    func minus() {
        result = Int(num1)! - Int(num2)!
    }
    func multiple() {
        result = Int(num1)! * Int(num2)!
    }
    func divide() {
        result = Int(num1)! / Int(num2)!
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
