//
//  ContentView.swift
//  ToDoList_01
//
//  Created by EUNSUNG on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel(toDoManager: ToDoManager(ToDoList: [ToDo(content: "SwiftUI 공부")]))
    
    @State private var isPresenting = false
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(viewModel.toDoList) { todo in
                    ToDoCellView(viewModel: self.viewModel, todo: todo)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationTitle(Text("To Do List"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                isPresenting = true
            }, label: {
                Text("Add")
            }).sheet(isPresented: $isPresenting, onDismiss: {
                isPresenting = false
            }) {
                AddToDoView(isPresenting: $isPresenting, viewModel: self.viewModel)
            })
        }
        
    }
    func deleteItems(at offets: IndexSet) {
        viewModel.removeToDo(index: offets)
        
    }
    func moveItems(from source: IndexSet, to destination: Int) {
        viewModel.changeToDo(source: source, destination: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
