//
//  ToDoManager.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/13/24.
//

import SwiftUI

class ToDoManager {
    private var ToDoList: [ToDo]
    
    init(ToDoList: [ToDo]) {
        self.ToDoList = ToDoList
    }
    
    func getToDoList() -> [ToDo] {
        return self.ToDoList
    }
    
    func initToDo() {
        self.ToDoList.removeAll()
    }
    func appendToDo(todo: ToDo) {
        self.ToDoList.append(todo)
    }
    func removeToDo(index: IndexSet) {
        self.ToDoList.remove(atOffsets: index)
    }
    func changeToDoIndex(source: IndexSet, destination: Int) {
        self.ToDoList.move(fromOffsets: source, toOffset: destination)
    }
    func toggleCompletion(index: Int) {
        self.ToDoList[index].updateCompletion()
    }
}
