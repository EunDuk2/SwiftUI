//
//  ToDoCellView.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/14/24.
//

import SwiftUI

struct ToDoCellView: View {
    var viewModel: ViewModel
    
    var todo: ToDo
    
    var body: some View {
        HStack {
            Button(action: {
                self.viewModel.toggleToDoCompletion(index: 0)
            }, label: {
                Image(systemName: self.todo.getCompletion() ? "checkmark.circle.fill" : "checkmark.circle")
                    .imageScale(.large)
            })
            Text(self.todo.getContent())
        }
    }
}
