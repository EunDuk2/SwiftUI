//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .onAppear(perform: {
                print("onAppear!")
            })
            .onDisappear(perform: {
                print("onDisappear!")
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
