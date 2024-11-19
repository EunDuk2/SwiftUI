//
//  ToDoCellView.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/14/24.
//

import SwiftUI

struct ToDoCellView: View {
    
    @Binding var todo: ToDo
    
    var body: some View {
        HStack {
            Button(action: {
                todo.updateCompletion()
            }, label: {
                Image(systemName: todo.getCompletion() ? "checkmark.circle.fill" : "checkmark.circle")
                    .imageScale(.large)
            })
            .buttonStyle(BorderlessButtonStyle())
            .foregroundColor(.black)
            NavigationLink(destination: ToDoDetailView(todo: todo), label: {
                Text(self.todo.getContent())
            })
            
        }
    }
}
