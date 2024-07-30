//
//  UITableViewDemo.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/30/24.
//

import SwiftUI

struct TableViewDemo: View {
    var body: some View {
        MyTableView(items: ["Item 1", "Item 2", "Item 3"])
            .navigationTitle("TableView in SwiftUI")
    }
}

struct MyTableView: UIViewRepresentable {
    
    var items: [String]
    
    func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView()
        tableView.delegate = context.coordinator
        tableView.dataSource = context.coordinator
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }
    
    func updateUIView(_ uiView: UITableView, context: Context) {
        uiView.reloadData()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UITableViewDelegate, UITableViewDataSource {
        var parent: MyTableView
        
        init(_ parent: MyTableView) {
            self.parent = parent
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return parent.items.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = parent.items[indexPath.row]
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("Selected item: \(parent.items[indexPath.row])")
        }
    }
}

struct TableViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TableViewDemo()
        }
    }
}
