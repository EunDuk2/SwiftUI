//
//  ContentView.swift
//  SwiftUI_SideProject_01
//
//  Created by Eunsung on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var toDoList: ToDoList = ToDoList(todo: [ToDo(date: Date(), content: "다이소 가기"), ToDo(date: Date(), content: "엄마 심부름")])
    
    @State private var isPresenting = false
    
    var body: some View {
        TabView {
            NavigationView {
                List($toDoList.todo) { toDo in
                    ToDoListCell(toDo: toDo)
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("\(DateFormatterManager.shared.dateFormatter(date: Date()))")
                            .font(.headline)
                    }
                }
                .navigationBarItems(leading: Button("Add") {
                    isPresenting = true
                }.sheet(isPresented: $isPresenting, onDismiss: {
                    isPresenting = false
                }) {
                        AddToDo(toDoList: toDoList, date: Date(), isPresenting: $isPresenting)
                    }, trailing: EditButton())
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            Text("second view")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ToDoListCell: View {
    
    @Binding var toDo: ToDo
    
    var body: some View {
        HStack {
            Button(action: {
                toDo.completion.toggle()
            }, label: {
                Image(systemName: toDo.completion ? "checkmark.circle.fill" : "checkmark.circle")
                    .imageScale(.large)
            })
            .buttonStyle(BorderlessButtonStyle())
            .foregroundColor(.black)
            NavigationLink(destination: ToDoDetail(todo: toDo)) {
                Text("\(toDo.content)")
            }
        }
    }
}
