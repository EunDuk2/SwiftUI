//
//  ToDo.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/13/24.
//

import Foundation

struct ToDo: Identifiable {
    internal let id: UUID = UUID()
    private var content: String
    private var completion: Bool = false
    
    init(content: String, completion: Bool = false) {
        self.content = content
        self.completion = completion
    }
    
    func getContent() -> String {
        return self.content
    }
    func getCompletion() -> Bool {
        return self.completion
    }
    
    mutating func updateContent(content: String) {
        self.content = content
    }
    mutating func updateCompletion() {
        self.completion.toggle()
    }
}
