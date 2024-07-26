//
//  ToDoDetail.swift
//  SwiftUI_SideProject_01
//
//  Created by Eunsung on 7/26/24.
//

import SwiftUI

struct ToDoDetail: View {
    
    var todo: ToDo
    
    var body: some View {
        Form {
            Section(header: Text("Detail")) {
                HStack {
                    Text("Date: ").font(.headline)
                    Text("\(DateFormatterManager.shared.dateFormatter(date: todo.date))")
                }
                HStack {
                    Text("Content: ").font(.headline)
                    Text("\(todo.content)")
                }
                HStack {
                    Text("Completion: ").font(.headline)
                    Image(systemName: todo.completion ? "checkmark.circle.fill" : "checkmark.circle")
                        .imageScale(.large)
                }
            }
        }
    }
}
