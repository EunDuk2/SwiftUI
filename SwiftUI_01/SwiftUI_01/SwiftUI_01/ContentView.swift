//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI
import Combine

class UserProfile: ObservableObject {
    @Published var name: String = "eunsung"
    @Published var age: Int = 25
    @Published var agreeProvideInformation: Bool = false
}

struct ContentView: View {
    @EnvironmentObject var userProfile: UserProfile
    @State private var shouldShowing: Bool = true
    
    var body: some View {
        VStack() {
            TextField("Change Name", text: $userProfile.name)
                .padding()
                .border(.green, width: 2)
            
            TextField("Change Age", value: $userProfile.age, formatter: NumberFormatter())
                .padding()
                .border(.blue, width: 2)
            
            Button(action: {
                shouldShowing = !shouldShowing
            }, label: {
                Text(shouldShowing ? "Hide Profile" : "Show Profile")
            })
            
            VStack {
                Text("name: \(userProfile.name)")
                Text("name: \(userProfile.age)")
                Toggle("provide user information", isOn: $userProfile.agreeProvideInformation)
            }
            .padding()
            .opacity(shouldShowing ? 1 : 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserProfile())
    }
}
