//
//  AddToDo.swift
//  SwiftUI_SideProject_01
//
//  Created by Eunsung on 7/25/24.
//

import SwiftUI

// 날짜 : Text
// 할 일 : TextField
// 확인 버튼 : Button

struct AddToDo: View {
    
    @ObservedObject var toDoList: ToDoList
    
    @State var date: Date
    @State var text: String = ""
    @Binding var isPresenting: Bool
    
    var body: some View {
        VStack {
            Text("\(DateFormatterManager.shared.dateFormatter(date: date))")
                .font(.largeTitle)
            TextField("할 일을 입력 해주세요.", text: $text)
            Button(action: {
                addToDo()
            }, label: {
                Text("추가")
            })
        }
    }
    
    func addToDo() {
        let todo = ToDo(date: date, content: text)
        toDoList.todo.append(todo)
        isPresenting = false
    }
}
