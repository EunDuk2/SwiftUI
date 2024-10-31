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
            HStack { // alignment는 아래 위를 조정
                Spacer()
                Text("첫 번째 수: ")
                // TextField의 레이블은 플레이스 홀더, text는 문자열만 가능
                TextField("숫자를 입력하세요", text: $num1)
            }
            HStack {
                Spacer()
                Text("두 번째 수: ")
                TextField("숫자를 입력하세요", text: $num2)
            }
            .padding(.bottom, 5)
            HStack {
                Spacer()
                Button(action: {
                    add()
                }, label: {
                    Text("덧셈")
                })
                Spacer()
                Button(action: {
                    minus()
                }, label: {
                    Text("뺄셈")
                })
                Spacer()
                Button(action: {
                    multiple()
                }, label: {
                    Text("곱셈")
                })
                Spacer()
                Button(action: {
                    divid()
                }, label: {
                    Text("나눗셈")
                })
                Spacer()
            }
            Text("결과: \(result)")
        }
        .padding()
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
    func divid() {
        result = Int(num1)! / Int(num2)!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
