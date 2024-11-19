//
//  ToDoDetailView.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/14/24.
//

import SwiftUI

struct ToDoDetailView: View {
    
    var todo: ToDo
    
    var body: some View {
        Form {
            Section(header: Text("DETAIL")) {
                HStack {
                    Text("Content: ")
                        .font(.headline)
                    Text(todo.getContent())
                }
                HStack {
                    Text("Completion: ")
                        .font(.headline)
                    Image(systemName: todo.getCompletion() ? "checkmark.circle.fill" : "checkmark.circle")
                        .imageScale(.large)
                }
            }
        }
    }
}
