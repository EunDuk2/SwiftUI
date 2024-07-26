//
//  ToDo.swift
//  SwiftUI_SideProject_01
//
//  Created by Eunsung on 7/25/24.
//

import SwiftUI

struct ToDo: Identifiable {
    var id: UUID
    var date: Date
    var content: String
    var completion: Bool
    
    init(id: UUID = UUID(), date: Date, content: String, completion: Bool = false) {
        self.id = id
        self.date = date
        self.content = content
        self.completion = completion
    }
}
