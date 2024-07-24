//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI
import Combine

class User: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
}

struct ContentView: View {
    
    @ObservedObject var user: User = User()
    
    var body: some View {
        VStack {
            TextField("name", text: $user.name)
            Text(user.name)
            TextField("age", value: $user.age, formatter: NumberFormatter())
            Text("\(user.age)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
