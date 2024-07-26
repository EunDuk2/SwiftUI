//
//  ToDoList.swift
//  SwiftUI_SideProject_01
//
//  Created by Eunsung on 7/25/24.
//

import SwiftUI

class ToDoList: ObservableObject {
    @Published var todo: [ToDo]
    
    init(todo: [ToDo]) {
        self.todo = todo
    }
}
