//
//  AddToDoView.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/14/24.
//

import SwiftUI

struct AddToDoView: View {
    @Binding var isPresenting: Bool
    @State var text: String = ""
    
    var viewModel: ViewModel
    
    var body: some View {
        Form {
            Text("할 일 추가")
            TextField(text: $text, label: {
                Text("할 일을 입력해 주세요.")
            })
            Button(action: {
                self.viewModel.appendToDo(content: self.text)
                self.isPresenting = false
            }, label: {
                Text("추가")
            })
        }
//        }
    }
}
