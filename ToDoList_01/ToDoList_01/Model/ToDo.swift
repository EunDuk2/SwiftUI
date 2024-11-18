//
//  ToDo.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/13/24.
//

import Foundation

class ToDo: Identifiable {
    private let uuid: UUID = UUID()
    private var content: String
    private var completion: Bool = false
    
    init(content: String) {
        self.content = content
    }
    
    func getContent() -> String {
        return self.content
    }
    func getCompletion() -> Bool {
        return self.completion
    }
    
    func updateContent(content: String) {
        self.content = content
    }
    func updateCompletion() {
        self.completion.toggle()
        print(self.completion)
    }
}
