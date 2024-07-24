//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI
import Combine

struct ToDoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

var listData: [ToDoItem] = [
        ToDoItem(task: "Take out the trash", imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
]

struct ContentView: View {
    
    @State var toggleStatus = true
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus, label: {
                        Text("Allow Notifications")
                    })
                }
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(destination: Text(item.task)) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("To DO List"))
            .navigationBarItems(trailing: Button(action: {}, label: {
                Text("Add")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
