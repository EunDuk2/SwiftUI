//
//  ViewModel.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/13/24.  
//

import SwiftUI

class ViewModel: ObservableObject {
     private var toDoManager: ToDoManager
    
    @Published private(set) var toDoList: [ToDo]
    
    init(toDoManager: ToDoManager) {
        self.toDoManager = toDoManager
        self.toDoList = toDoManager.getToDoList()
    }
    
    func appendToDo(content: String) {
        toDoManager.appendToDo(todo: ToDo(content: content))
        updateToDoList()
    }
    func removeToDo(index: IndexSet) {
        toDoManager.removeToDo(index: index)
        updateToDoList()
    }
    func changeToDo(source: IndexSet, destination: Int) {
        toDoManager.changeToDoIndex(source: source, destination: destination)
        updateToDoList()
    }
    func toggleToDoCompletion(index: Int) {
        toDoManager.toggleCompletion(index: index)
        updateToDoList()
        print("completion: \(self.toDoList[0].getCompletion())")
    }
    
    func updateToDoList() {
        self.toDoList = toDoManager.getToDoList()
    }
}
