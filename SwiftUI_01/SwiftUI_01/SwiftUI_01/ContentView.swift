//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Text 1")
                .modifier(StandardTitle())
            Text("Text 2")
                .modifier(StandardTitle())
        }
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 2.0)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
