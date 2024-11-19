//
//  ViewModel.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/13/24.  
//

import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var toDoList: [ToDo]
    
    init(toDoList: [ToDo]) {
        self.toDoList = toDoList
    }
    
    func appendToDo(content: String) {
        self.toDoList.append(ToDo(content: content))
    }
    func removeToDo(index: IndexSet) {
        self.toDoList.remove(atOffsets: index)
    }
    func changeToDo(source: IndexSet, destination: Int) {
        self.toDoList.move(fromOffsets: source, toOffset: destination)
    }
    func toggleToDoCompletion(index: Int) {
        self.toDoList[index].updateCompletion()
    }
    
}
